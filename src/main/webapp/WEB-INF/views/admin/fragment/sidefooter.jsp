<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div th:fragment="sidefooter(adminId, adminName)" class="sb-sidenav-footer">
  <div class="small">접속자 : <span th:text="${adminId}"/>(<span th:text="${adminName}"/>)</div>
</div>
