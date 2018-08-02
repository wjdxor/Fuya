# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

------------------------------------------------

* rails version : 5.0.6(5.0.7)

* scaffold 사용
  이름 : Market
  model로 만든 것 : 가게이름(name) 위치(address) 영업시간(open) 주차가능여부(parking-boolean) 전화번호(tel) 휴일(closed) 시/도(locate1) 군/구(locate2) 동/읍/면(locate3) => parking 빼고 전부 string
  => locate3는 잘못 만든 것 ㅠㅠ

* routes에서 root "markets#index" 코드 추가
