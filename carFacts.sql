
DROP TABLE car_facts;
DROP SEQUENCE factId_seq;

-- 테이블 생성
CREATE TABLE car_facts (
    factId NUMBER PRIMARY KEY,
    factText VARCHAR2(500)
);


-- 시퀀스 생성
CREATE SEQUENCE factId_seq
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;


-- 데이터 삽입
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '자동차의 ''승용차''라는 용어는 언제 처음 등장했을까요? 1910년에 미국에서 처음 사용되었습니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '세계 최초의 자동차 번호판은 어디에 등록되었나요? 1893년, 프랑스의 파리에서 등록되었습니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '세계에서 가장 오래된 자동차는 무엇인가요? 1884년에 만들어진 드레스덴 자동차(Dresden Motorwagon)입니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '레이서 마리오 안드레티는 어떤 자동차 브랜드의 CEO이기도 했나요? 페라리(Ferrari)의 CEO였습니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '레이싱 카드마의 잠재력이 가장 높은 나라는 어디일까요? 이탈리아입니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '최초의 차선 표시는 어디서 발생했나요? 미국 미시간주(Great Bend, Michigan)에서입니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '전기 자동차가 처음 등장한 연도는? 1837년, 스코틀랜드의 로버트 앤더슨(Robert Anderson)가 만든 것이 처음입니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '쿠페(Coupe)와 세단(Sedan)의 차이는 무엇인가요? 쿠페는 두 개의 문과 보통 더 스포티한 디자인을 가지고 있고, 세단은 네 개의 문을 가지고 있으며 일반적으로 더 가족적인 차량입니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '루마니아어로 ''자동차''는 무엇이라고 합니까? ''Autoturism''입니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '세계에서 가장 높은 자동차 수는 어느 국가인가요? 미국입니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '페라리의 창립자 이름은? 엔초 페라리(Enzo Ferrari)입니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '레이싱 차량이 항공기를 이기고 처음으로 비행기 경주에서 우승한 것은 언제였나요? 1909년, 루이스 블레리옹(Louis Bl?riot)의 비행기가 패널로(Panelo) 경주에서 우승했습니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '왜 자동차 운전 중에는 휴대전화를 사용해서는 안 되는가요? 운전 중 휴대전화 사용은 주의를 산만하게 하고 사고 위험을 높일 수 있습니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '세계에서 가장 비싼 자동차는 무엇인가요? 2019년 롤스로이스(Rolls Royce)의 ''스위프트 실크''가 1억 3300만 달러에 판매되었습니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''수녀의 담배꽁초''라는 표현은 어디서 유래되었나요? 1960년대에는 알파로메오(Alfa Romeo) 자동차의 오일 필터였습니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '자동차의 안전벨트를 개발한 사람은 누구인가요? 안버트 벨트(Anbert Belt)입니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '자동차의 ''터보''란 무엇인가요? 터보는 엔진 출력을 높이기 위해 배기 가스의 에너지를 활용하는 장치입니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''클러치''란 무엇인가요? 클러치는 엔진과 변속기 사이에 위치하여 토크를 전달하고 변경합니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '세계에서 가장 오래된 자동차 회사는 무엇인가요? 메르세데스-벤츠(Mercedes-Benz)입니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''자동차 모터''라는 용어가 처음으로 등장한 연도는 언제인가요? 1899년입니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '미국에서 가장 많이 팔리는 자동차 브랜드는 무엇인가요? 토요타(Toyota)입니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''리무진''이란 무엇인가요? 리무진은 일반적으로 고급스러운 내장을 가진 긴 차량으로, VIP나 특별한 행사에 사용됩니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''V8''은 무엇을 의미하나요? 엔진에 있는 실린더의 배치 방식으로, V 모양으로 배치되어 있고 각각의 두 줄에 네 개의 실린더가 있습니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''클래식 카''란 무엇인가요? 20세기 중반 이전에 제작된 고전적인 디자인과 모델을 가진 자동차를 의미합니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '자동차 운전 중 핸들을 돌릴 때 손목을 굽히는 것이 왜 중요한가요? 손목을 굽히면 더 빠르고 정확하게 핸들링할 수 있습니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''포니카''는 무엇을 의미하나요? 경제적이고 소형의 일본 자동차 브랜드인 닛산(Nissan)의 제품을 의미합니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''자동변속기''는 무엇인가요? 운전자가 기어를 수동으로 변경할 필요 없이 자동으로 변속하는 시스템입니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''하이브리드 자동차''란 무엇인가요? 내연기관과 전기 모터를 모두 사용하여 에너지를 절약하는 차량입니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '자동차의 속도를 측정하는 기본 단위는 무엇인가요? 킬로미터/시간(km/h)입니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''사이드미러''는 왜 중요한가요? 운전자가 차량 주변을 쉽게 볼 수 있도록 도와줍니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''배기가스''란 무엇인가요? 차량이 연료를 연소할 때 생성되는 가스입니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''내비게이션 시스템''은 무엇인가요? 운전자가 목적지까지의 경로를 찾아주고 안내하는 시스템입니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '자동차에서 사용되는 ''프레임''이란 무엇인가요? 차량의 구조적인 뼈대로, 차체의 안전성과 강도를 제공합니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''안티락 브레이킹 시스템(ABS)''은 무엇인가요? 급제동 시 바퀴 잠금을 방지하여 차량의 통제를 도와주는 시스템입니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''블루투스''가 자동차에서 사용되는 경우는 어떤 경우가 있나요? 블루투스는 차량의 오디오 시스템과 휴대전화를 연결하여 통화나 음악 재생을 할 수 있게 해줍니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''애플 카플레이(Apple CarPlay)''와 ''안드로이드 오토(Android Auto)''는 무엇인가요? 이것은 스마트폰의 기능을 차량의 정보 및 오디오 시스템과 연동하여 제공하는 시스템입니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''전자 제어 장치(ECU)''는 무엇인가요? 차량의 여러 시스템을 제어하고 모니터링하는 컴퓨터입니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '차량을 충전할 수 있는 장소로, 전기를 공급하여 배터리를 충전합니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''터보차저(Turbocharger)''는 어떻게 작동하나요? 배기 가스를 이용하여 엔진의 힘을 높이는 장치입니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''브레이크 액''은 무엇인가요? 브레이크 시스템에서 열을 흡수하여 브레이크 성능을 유지하는 액체입니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''오일 필터''는 왜 중요한가요? 엔진 내의 오염물질을 제거하여 엔진을 깨끗하게 유지합니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''방향지시등''은 왜 중요한가요? 차량의 운행 방향을 알리고 다른 운전자에게 운전 의도를 알려줍니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''스티어링 휠''은 왜 중요한가요? 운전자가 차량을 조종하고 방향을 변경할 수 있도록 합니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''타이어''는 왜 중요한가요? 차량이 도로와 접촉하고 움직일 수 있도록 도와줍니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''브레이크 디스크''는 왜 중요한가요? 차량을 멈추고 감속시키는 데 사용됩니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''가솔린''은 무엇인가요? 내연기관을 가진 차량에 사용되는 연료입니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''알루미늄 합금''은 왜 자동차 제작에 사용되나요? 가벼우면서도 강한 재료로, 자동차의 무게를 줄이고 성능을 향상시킵니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''타이어 프레셔''는 왜 중요한가요? 올바른 타이어 프레셔는 연료 효율성과 차량 성능에 영향을 미칩니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''오일''은 왜 중요한가요? 엔진을 윤활하고 성능을 유지하기 위해 사용됩니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''서스펜션 시스템''은 무엇인가요? 차량이 도로에서 부드럽게 움직이도록 도와줍니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''미러링''은 왜 중요한가요? 주변 환경을 관찰하고 안전 운전을 돕습니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''배기 시스템''은 무엇인가요? 엔진에서 생성된 가스를 처리하고 배출하는 시스템입니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''사이드 에어백''은 왜 중요한가요? 충돌 시 운전자와 승객을 보호하기 위해 사용됩니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''안전벨트''는 왜 중요한가요? 충돌 시 운전자와 승객을 보호하기 위해 사용됩니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''엔진 오일''은 왜 교체해야 하나요? 오래된 오일은 엔진을 제대로 윤활하지 못하고 성능을 저하시킬 수 있습니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''엔진 쿨랜트''는 무엇인가요? 엔진을 식히고 과열을 방지하기 위해 사용됩니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''후방 카메라''는 왜 중요한가요? 후진할 때 주변 환경을 확인하여 사고를 예방합니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''트랙션 컨트롤 시스템(TCS)''은 무엇인가요? 차량의 트랙션을 제어하여 미끄러짐을 방지합니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''브레이크 페달''은 왜 중요한가요? 차량을 멈추고 감속시키는 데 사용됩니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''연료 필터''는 왜 중요한가요? 연료 시스템에서 먼지와 불순물을 제거하여 엔진을 보호합니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''연료 펌프''는 왜 중요한가요? 연료를 엔진으로 펌핑하여 동작하는 데 필요합니다.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''전조등''은 왜 중요한가요? 밤에 시야를 확보하고 다른 운전자에게 자신의 위치를 알려줍니다.');

SELECT factId, factText FROM (
    SELECT ROW_NUMBER() OVER (ORDER BY factId) AS rn, factId, factText
    FROM CAR_FACTS
)
WHERE rn = 5;

Select Count(*) FROM CAR_FACTS;

SELECT * FROM CAR_FACTS;

commit;