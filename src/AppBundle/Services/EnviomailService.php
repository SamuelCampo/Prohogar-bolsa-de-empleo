<?php

namespace AppBundle\Services;

class EnviomailService {

private $mailer;

public function __construct($_mailer) {
 $this->mailer = $_mailer;
 }

 public function sendEmail($to, $subject, $text) {
 $message = \Swift_Message::newInstance()
 ->setSubject($subject)
 ->setFrom('info@cleanjob.com.ec')
 ->setTo($to)
 ->setBody(($text),'text/html');
 return $this->mailer->send($message);
 }

 }