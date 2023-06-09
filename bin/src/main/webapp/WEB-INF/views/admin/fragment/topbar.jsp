<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org/">
<script src="https://unpkg.com/vue@3"></script>
<nav th:fragment="topbar(adminIdx, adminType)" class="sb-topnav navbar navbar-expand navbar-dark bg-dark" id="topbar">
  <!-- Navbar Brand-->
  <a class="navbar-brand ps-3" href="/" style="color: #ff4381">Watcha Pedia</a>
  <!-- Sidebar Toggle-->
  <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
  <!-- Navbar Search-->
  <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">

  </form>

  <!-- Navbar-->
  <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
    <li class="nav-item dropdown">
      <a th:if="${adminIdx} != null" class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
      <ul  th:if="${adminType} == 'hradmin'" class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
        <li><a class="dropdown-item" href="/admin_myinfo">내정보</a></li>
        <li><hr class="dropdown-divider" /></li>
        <li><a class="dropdown-item" href="/hradmin/createaccount">계정생성</a></li>
        <li><a class="dropdown-item" href="/hradmin/searchaccount">계정조회</a></li>
        <li><hr class="dropdown-divider" /></li>
        <li><a class="dropdown-item" href="/logout">로그아웃</a></li>
      </ul>
      <ul  th:if="${adminType} == 'admin'" class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
        <li><a class="dropdown-item" href="/admin_myinfo">내정보</a></li>
        <li><hr class="dropdown-divider" /></li>
        <li><a class="dropdown-item" href="/logout">로그아웃</a></li>
      </ul>
      <a th:if="${adminIdx} == null" style="color:white" href="/login">Login</a>
    </li>
  </ul>
</nav>
</html>