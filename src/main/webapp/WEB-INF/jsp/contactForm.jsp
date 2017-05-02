<!DOCTYPE HTML>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="Sat, 01 Dec 2001 00:00:00 GMT">

    <title>Contacts</title>

    <link href="static/css/bootstrap.min.css" rel="stylesheet">
    <link href="static/css/style.css" rel="stylesheet">

    <!--[if lt IE 9]>
    <script src="static/js/html5shiv.min.js"></script>
    <script src="static/js/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<div role="navigation">
    <div class="navbar navbar-inverse">
        <a href="/all-contacts" class="navbar-brand">Contacts</a>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li><a href="new-contact">New Contact</a></li>
                <li><a href="all-contacts">All Contacts</a></li>
            </ul>
        </div>
    </div>
</div>

<div class="container text-center">
    <h3>Manage Contact</h3>
    <hr>
    <form:form modelAttribute="contact" class="form-horizontal" method="POST" action="save-contact">
        <input type="hidden" name="id" value="${contact.id}"/>
        <div class="form-group">
            <label class="control-label col-md-3">First Name</label>
            <div class="col-md-7">
                <input type="text" class="form-control" name="firstname" value="${contact.firstname}"/>
                <form:errors path="firstname" cssclass="error"></form:errors>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-3">Middle Name</label>
            <div class="col-md-7">
                <input type="text" class="form-control" name="middlename" value="${contact.middlename}"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-3">Last Name</label>
            <div class="col-md-7">
                <input type="text" class="form-control" name="lastname" value="${contact.lastname}"/>
                <form:errors path="lastname" cssclass="error"></form:errors>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-3">Address1</label>
            <div class="col-md-7">
                <input type="text" class="form-control" name="address1" value="${contact.address1}"/>
                <form:errors path="address1" cssclass="error"></form:errors>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-3">Address2</label>
            <div class="col-md-7">
                <input type="text" class="form-control" name="address2" value="${contact.address2}"/>
                <form:errors path="address2" cssclass="error"></form:errors>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-3">City</label>
            <div class="col-md-7">
                <input type="text" class="form-control" name="city" value="${contact.city}"/>
                <form:errors path="city" cssclass="error"></form:errors>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-3">Postcode</label>
            <div class="col-md-7">
                <input type="text" class="form-control" name="postcode" value="${contact.postcode}"/>
                <form:errors path="postcode" cssclass="error"></form:errors>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-md-3">Phone</label>
            <div class="col-md-7">
                <input type="text" class="form-control" name="phone" value="${contact.phone}"/>
                <form:errors path="phone" cssclass="error"></form:errors>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-3">Email</label>
            <div class="col-md-7">
                <input type="text" class="form-control" name="email" value="${contact.email}"/>
                <form:errors path="email" cssclass="error"></form:errors>
            </div>
        </div>

        <div class="form-group">
            <input type="submit" class="btn btn-primary" value="Save"/>
        </div>
    </form:form>
</div>

<script src="static/js/jquery-1.11.1.min.js"></script>
<script src="static/js/bootstrap.min.js"></script>
</body>
</html>