package com.whychapedia.service;

import javax.mail.Message.RecipientType;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

@Service
public class AdminMailServiceImpl implements AdminMailService {

	@Autowired
	JavaMailSender mailSender;
	
	@Autowired
	HttpSession session;
	
	@Override
	@Async //html포함 이메일발송
	public String emailSend(String userEmail, String userName) {
		//이메일 text, html, 파일첨부
		//SimpleMailMessage message = new SimpleMailMessage();
		MimeMessage message = mailSender.createMimeMessage();
		
		//메일발송
		String fromMailAddress = "admin@gmail.com"; //보내는 사람의 이메일
		String subject = "[ 안내 ] "+userName+"님 회원가입 이메일인증 비밀번호 발송안내";
		
		String sendTxt = getSendTxt(userName);
		try {
			message.setFrom(new InternetAddress(fromMailAddress)); //보내는 사람 이메일
			message.addRecipient(RecipientType.TO, new InternetAddress(userEmail));
			message.setSubject(subject);                     // 이메일 제목
			message.setText(sendTxt,"utf-8","html");         // 이메일 내용
			mailSender.send(message);                        // 메일발송
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("[ 발송 ] 이메일이 발송되었습니다.");
		return null;
	}
	
	public String getSendTxt(String userName) {
		String sendTxt="<html>\r\n"
				+ "	<head>\r\n"
				+ "		<meta charset='UTF-8'>\r\n"
				+ "		<title>메일 보내기</title>\r\n"
				+ "		<style></style>\r\n"
				+ "	</head>\r\n"
				+ "	<body>\r\n"
				+ "	  <table style='width:750px'>\r\n"
				+ "	    <tr style='width:135px'>\r\n"
				+ "	      <td><img style='width:750px' src='https://ssl.pstatic.net/melona/libs/1436/1436165/3639e1fa2e323097f05a_20230223213441988.jpg'></td>\r\n"
				+ "	    </tr>\r\n"
				+ "	    <tr>\r\n"
				+ "	      <td style='text-align:center'>\r\n"
				+ "	        <h2 >[ "+userName +"님 ] 강력추천!! 남성 러닝 하이브리드 트랙 자켓</h2>\r\n"
				+ "	      </td>\r\n"
				+ "	    </tr>\r\n"
				+ "	    <tr>\r\n"
				+ "	      <td>- 가볍고 내구성이 좋으며 스트레치성이 있는 우븐 원단과 부드러운 터치감과 스트레치성이 좋은 니트 원단을 조화 시킨 하이브리드 형태의 트랙 세트입니다. </td>\r\n"
				+ "	    </tr>\r\n"
				+ "	    <tr>\r\n"
				+ "	      <td>◇앵커> 이재명 대표가 어제 표현한 강도와 깡패가 날뛰면 담장과 대문이 당연히 있어야 되는 게 아니냐. 그중에 담장, 대문 중의 하나가 지금 말씀하신 당 대표직도 있을 거고 불체포특권도 있을 텐데 불체포특권에 대해서 이재명 대표의 달라진 입장, 과거와. 그 발언 듣고서 두 분께 여쭤보겠습니다.\r\n"
				+ "[이재명 / 더불어민주당 대표 (지난해 5월 22일 지방선거 유세) : 불체포특권 제한해야 한다, 100% 동의할 뿐 아니라 제가 주장하던 것입니다. 불체포특권 같은 것은 뇌물 받고 부정부패 저지르는 국민의힘의 부패한 정치인들에게나 필요한 것이지 10년 넘도록 먼지 털듯이 탈탈 털린 이재명 같은 깨끗한 정치인에게는 전혀 필요한 것이 아닙니다.]</td>\r\n"
				+ "	    </tr>\r\n"
				+ "	  </table>\r\n"
				+ "	</body>\r\n"
				+ "</html>";
		return sendTxt;
	}
	
}
