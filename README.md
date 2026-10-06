# ZipAI — 개인 포트폴리오 배포 버전

주거 매물 탐색, 공공임대, 안전 정보, 금융지원정책과 커뮤니티를 제공하는 **팀 프로젝트 ZipAI를 기반으로 한 개인 운영·배포 저장소**입니다.

## 프로젝트 출처와 기여자

- 원본 팀 프로젝트: [tylyoon/zipai-integrated](https://github.com/tylyoon/zipai-integrated)
- 가져온 코드 기준: 원본 커밋 `d0a77c2` (Add 30 presentation listing photos).
- 원본 Git 이력에서 확인된 커밋 작성자: [tylyoon](https://github.com/tylyoon). 이 표기는 전체 팀원 명단을 의미하지 않습니다.
- 개인 저장소 운영 및 배포 담당: [tjdrms8353-spec](https://github.com/tjdrms8353-spec).
- 전체 팀원 명단과 팀 개발 당시의 개인 담당 기능은 확인 후 보완합니다.

이 저장소는 팀 코드의 현재 상태를 가져온 새 첫 커밋부터 개인 이력을 관리합니다. 첫 커밋의 작성자는 개인 저장소를 초기화한 사람이며, 기존 팀 코드 전체를 단독 개발했다는 의미가 아닙니다. 원본 팀 프로젝트의 출처와 기여를 유지합니다.

## 기술 구성

- Java 21, Spring Boot, Spring MVC, Thymeleaf
- Spring Security, OAuth2 Client
- Spring Data JDBC, MySQL 호환 DB, Flyway
- HTML, CSS, JavaScript 및 Python 데이터 수집·추천 도구

## 개인 배포 계획

| 서비스 | 역할 | 상태 |
| --- | --- | --- |
| GitHub | 개인 소스와 변경 이력 관리 | 개인 저장소 구성 중 |
| Render | Spring Boot 화면·API 실행 | 개인 환경 배포 예정 |
| TiDB | 개인 데모 전용 데이터베이스 | 준비 예정 |
| AWS S3 | 업로드 이미지 저장 | 연동 예정 |
| Netlify | 프로젝트 소개 페이지 | 제작 예정 |

무료·최소 비용을 우선하며 실제 완료 여부는 [배포 작업 기록](md파일/배포.md)에 기록합니다. 팀 개발 당시의 기여와 이후 개인 개선 작업은 구분해 정리합니다.

## 실행·설정

Java 21과 MySQL 호환 DB가 필요합니다. `.env.example`의 변수 이름을 참고해 실행 환경에 DB 연결 정보와 사용할 서비스 키를 설정합니다. `.env` 파일을 만드는 것만으로 Spring Boot가 자동으로 읽는 것은 아닙니다.

```powershell
.\gradlew.bat bootRun
```

기본 로컬 포트는 8080이며 배포 시 `PORT` 환경변수를 사용합니다. Render에서는 저장소 루트의 `Dockerfile`로 빌드·실행합니다. 비밀번호, API Secret, 실제 사용자 데이터와 DB 덤프는 저장소에 게시하지 않습니다.
