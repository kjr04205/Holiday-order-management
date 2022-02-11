<h1 align="center">떡집 명절주문관리 프로그램 📝</h1>     
<br><br>

![Hnet-image](https://user-images.githubusercontent.com/63985698/153604794-460313cb-e9cb-4117-a5c2-7d7cd65b50f9.gif)

### 프로젝트를 시작하게 된 이유
> 15년째 떡집을 운영하시는 부모님께서는 200~300명, 600되 정도의 주문량이 몰리는 명절에도 공책에 정보를 적어 운영을 하고 계십니다. 명절 전날에는 주문을 하신 손님들이 몰리게 되는데, 그때마다 한분한분 찾게 되니 많은 시간이 소요되었습니다. 효율적으로 관리를 하기 위해 프로젝트를 시작하였습니다.<br><br>

### 프로젝트 구조
![image](https://user-images.githubusercontent.com/63985698/153602003-17e167bb-cdcb-4496-9991-51c5eb5c5daf.png)
> memberID(INT) - 고객 주문 번호<br>
> memberName(VARCHAR(20)) - 고객 성함<br>
> memberPhone(INT) - 고객 전화번호<br>
> memberAddress(VARCHAR(30)) - 고객 주소지(동네)<br>
> memberOrder(VARCHAR(20)) - 고객 주문내역<br>
> memberMoney(INT) - 금액<br>
> memberInfo(VARCHAR(50)) - 고객 특이사항<br>
> memberNumber(INT) - 글 공개, 비공개 여부
<br><br>

## HOM APP version
### version 1.0(런칭 - 2022.01.31)
<br><br>

### 업데이트 내역
> 2022.02.07
- 삭제기능 추가(글 공개 -> 비공개로 변환, 실제 데이터베이스에 데이터 남음)
- memberID(글 순서), memberNumber(글 공개여부) 칼럼 추가 및 연동완료

> 2022.02.09
- 검색기능 추가(전화번호 검색시 실시간으로 리스트에서 조회 - 별도의 엔터키, Submit 없이)
- 전체주문확인, 남은주문확인 메뉴 추가 / DB에서 리스트 조회시 조건 다르게 하여 JAVA(DB Mysql) 데이터 호출


