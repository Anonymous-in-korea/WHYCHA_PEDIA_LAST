package com.whychapedia.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Component
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class WatchListVo {
	private int id; //고유번호
	private int watch_list_type; //보고싶은: 0 보는중: 1 평가한 것: 2 
	private int movie_id;
	private int user_id;
	private Date regi_date; //별점 등록일 

}
