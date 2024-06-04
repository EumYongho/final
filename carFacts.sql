
DROP TABLE car_facts;
DROP SEQUENCE factId_seq;

-- ���̺� ����
CREATE TABLE car_facts (
    factId NUMBER PRIMARY KEY,
    factText VARCHAR2(500)
);


-- ������ ����
CREATE SEQUENCE factId_seq
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;


-- ������ ����
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '�ڵ����� ''�¿���''��� ���� ���� ó�� �����������? 1910�⿡ �̱����� ó�� ���Ǿ����ϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '���� ������ �ڵ��� ��ȣ���� ��� ��ϵǾ�����? 1893��, �������� �ĸ����� ��ϵǾ����ϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '���迡�� ���� ������ �ڵ����� �����ΰ���? 1884�⿡ ������� �巹���� �ڵ���(Dresden Motorwagon)�Դϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '���̼� ������ �ȵ巹Ƽ�� � �ڵ��� �귣���� CEO�̱⵵ �߳���? ���(Ferrari)�� CEO�����ϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '���̽� ī�帶�� ������� ���� ���� ����� ����ϱ��? ��Ż�����Դϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '������ ���� ǥ�ô� ��� �߻��߳���? �̱� �̽ð���(Great Bend, Michigan)�����Դϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '���� �ڵ����� ó�� ������ ������? 1837��, ����Ʋ������ �ι�Ʈ �ش���(Robert Anderson)�� ���� ���� ó���Դϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '����(Coupe)�� ����(Sedan)�� ���̴� �����ΰ���? ����� �� ���� ���� ���� �� ����Ƽ�� �������� ������ �ְ�, ������ �� ���� ���� ������ ������ �Ϲ������� �� �������� �����Դϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '�縶�Ͼƾ�� ''�ڵ���''�� �����̶�� �մϱ�? ''Autoturism''�Դϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '���迡�� ���� ���� �ڵ��� ���� ��� �����ΰ���? �̱��Դϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '����� â���� �̸���? ���� ���(Enzo Ferrari)�Դϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '���̽� ������ �װ��⸦ �̱�� ó������ ����� ���ֿ��� ����� ���� ����������? 1909��, ���̽� ������(Louis Bl?riot)�� ����Ⱑ �гη�(Panelo) ���ֿ��� ����߽��ϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '�� �ڵ��� ���� �߿��� �޴���ȭ�� ����ؼ��� �� �Ǵ°���? ���� �� �޴���ȭ ����� ���Ǹ� �길�ϰ� �ϰ� ��� ������ ���� �� �ֽ��ϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '���迡�� ���� ��� �ڵ����� �����ΰ���? 2019�� �ѽ����̽�(Rolls Royce)�� ''������Ʈ ��ũ''�� 1�� 3300�� �޷��� �ǸŵǾ����ϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''������ ������''��� ǥ���� ��� �����Ǿ�����? 1960��뿡�� ���ķθ޿�(Alfa Romeo) �ڵ����� ���� ���Ϳ����ϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '�ڵ����� ������Ʈ�� ������ ����� �����ΰ���? �ȹ�Ʈ ��Ʈ(Anbert Belt)�Դϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '�ڵ����� ''�ͺ�''�� �����ΰ���? �ͺ��� ���� ����� ���̱� ���� ��� ������ �������� Ȱ���ϴ� ��ġ�Դϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''Ŭ��ġ''�� �����ΰ���? Ŭ��ġ�� ������ ���ӱ� ���̿� ��ġ�Ͽ� ��ũ�� �����ϰ� �����մϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '���迡�� ���� ������ �ڵ��� ȸ��� �����ΰ���? �޸�������-����(Mercedes-Benz)�Դϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''�ڵ��� ����''��� �� ó������ ������ ������ �����ΰ���? 1899���Դϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '�̱����� ���� ���� �ȸ��� �ڵ��� �귣��� �����ΰ���? ���Ÿ(Toyota)�Դϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''������''�̶� �����ΰ���? �������� �Ϲ������� ��޽����� ������ ���� �� ��������, VIP�� Ư���� ��翡 ���˴ϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''V8''�� ������ �ǹ��ϳ���? ������ �ִ� �Ǹ����� ��ġ �������, V ������� ��ġ�Ǿ� �ְ� ������ �� �ٿ� �� ���� �Ǹ����� �ֽ��ϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''Ŭ���� ī''�� �����ΰ���? 20���� �߹� ������ ���۵� �������� �����ΰ� ���� ���� �ڵ����� �ǹ��մϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '�ڵ��� ���� �� �ڵ��� ���� �� �ո��� ������ ���� �� �߿��Ѱ���? �ո��� ������ �� ������ ��Ȯ�ϰ� �ڵ鸵�� �� �ֽ��ϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''����ī''�� ������ �ǹ��ϳ���? �������̰� ������ �Ϻ� �ڵ��� �귣���� �ֻ�(Nissan)�� ��ǰ�� �ǹ��մϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''�ڵ����ӱ�''�� �����ΰ���? �����ڰ� �� �������� ������ �ʿ� ���� �ڵ����� �����ϴ� �ý����Դϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''���̺긮�� �ڵ���''�� �����ΰ���? ��������� ���� ���͸� ��� ����Ͽ� �������� �����ϴ� �����Դϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '�ڵ����� �ӵ��� �����ϴ� �⺻ ������ �����ΰ���? ų�ι���/�ð�(km/h)�Դϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''���̵�̷�''�� �� �߿��Ѱ���? �����ڰ� ���� �ֺ��� ���� �� �� �ֵ��� �����ݴϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''��Ⱑ��''�� �����ΰ���? ������ ���Ḧ ������ �� �����Ǵ� �����Դϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''������̼� �ý���''�� �����ΰ���? �����ڰ� ������������ ��θ� ã���ְ� �ȳ��ϴ� �ý����Դϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '�ڵ������� ���Ǵ� ''������''�̶� �����ΰ���? ������ �������� �����, ��ü�� �������� ������ �����մϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''��Ƽ�� �극��ŷ �ý���(ABS)''�� �����ΰ���? ������ �� ���� ����� �����Ͽ� ������ ������ �����ִ� �ý����Դϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''�������''�� �ڵ������� ���Ǵ� ���� � ��찡 �ֳ���? ��������� ������ ����� �ý��۰� �޴���ȭ�� �����Ͽ� ��ȭ�� ���� ����� �� �� �ְ� ���ݴϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''���� ī�÷���(Apple CarPlay)''�� ''�ȵ���̵� ����(Android Auto)''�� �����ΰ���? �̰��� ����Ʈ���� ����� ������ ���� �� ����� �ý��۰� �����Ͽ� �����ϴ� �ý����Դϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''���� ���� ��ġ(ECU)''�� �����ΰ���? ������ ���� �ý����� �����ϰ� ����͸��ϴ� ��ǻ���Դϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '������ ������ �� �ִ� ��ҷ�, ���⸦ �����Ͽ� ���͸��� �����մϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''�ͺ�����(Turbocharger)''�� ��� �۵��ϳ���? ��� ������ �̿��Ͽ� ������ ���� ���̴� ��ġ�Դϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''�극��ũ ��''�� �����ΰ���? �극��ũ �ý��ۿ��� ���� ����Ͽ� �극��ũ ������ �����ϴ� ��ü�Դϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''���� ����''�� �� �߿��Ѱ���? ���� ���� ���������� �����Ͽ� ������ �����ϰ� �����մϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''�������õ�''�� �� �߿��Ѱ���? ������ ���� ������ �˸��� �ٸ� �����ڿ��� ���� �ǵ��� �˷��ݴϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''��Ƽ� ��''�� �� �߿��Ѱ���? �����ڰ� ������ �����ϰ� ������ ������ �� �ֵ��� �մϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''Ÿ�̾�''�� �� �߿��Ѱ���? ������ ���ο� �����ϰ� ������ �� �ֵ��� �����ݴϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''�극��ũ ��ũ''�� �� �߿��Ѱ���? ������ ���߰� ���ӽ�Ű�� �� ���˴ϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''���ָ�''�� �����ΰ���? ��������� ���� ������ ���Ǵ� �����Դϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''�˷�̴� �ձ�''�� �� �ڵ��� ���ۿ� ���ǳ���? ������鼭�� ���� ����, �ڵ����� ���Ը� ���̰� ������ ����ŵ�ϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''Ÿ�̾� ������''�� �� �߿��Ѱ���? �ùٸ� Ÿ�̾� �����Ŵ� ���� ȿ������ ���� ���ɿ� ������ ��Ĩ�ϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''����''�� �� �߿��Ѱ���? ������ ��Ȱ�ϰ� ������ �����ϱ� ���� ���˴ϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''������� �ý���''�� �����ΰ���? ������ ���ο��� �ε巴�� �����̵��� �����ݴϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''�̷���''�� �� �߿��Ѱ���? �ֺ� ȯ���� �����ϰ� ���� ������ �����ϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''��� �ý���''�� �����ΰ���? �������� ������ ������ ó���ϰ� �����ϴ� �ý����Դϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''���̵� �����''�� �� �߿��Ѱ���? �浹 �� �����ڿ� �°��� ��ȣ�ϱ� ���� ���˴ϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''������Ʈ''�� �� �߿��Ѱ���? �浹 �� �����ڿ� �°��� ��ȣ�ϱ� ���� ���˴ϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''���� ����''�� �� ��ü�ؾ� �ϳ���? ������ ������ ������ ����� ��Ȱ���� ���ϰ� ������ ���Ͻ�ų �� �ֽ��ϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''���� ��Ʈ''�� �����ΰ���? ������ ������ ������ �����ϱ� ���� ���˴ϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''�Ĺ� ī�޶�''�� �� �߿��Ѱ���? ������ �� �ֺ� ȯ���� Ȯ���Ͽ� ��� �����մϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''Ʈ���� ��Ʈ�� �ý���(TCS)''�� �����ΰ���? ������ Ʈ������ �����Ͽ� �̲������� �����մϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''�극��ũ ���''�� �� �߿��Ѱ���? ������ ���߰� ���ӽ�Ű�� �� ���˴ϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''���� ����''�� �� �߿��Ѱ���? ���� �ý��ۿ��� ������ �Ҽ����� �����Ͽ� ������ ��ȣ�մϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''���� ����''�� �� �߿��Ѱ���? ���Ḧ �������� �����Ͽ� �����ϴ� �� �ʿ��մϴ�.');
INSERT INTO car_facts (factId, factText) VALUES (factId_seq.nextval, '''������''�� �� �߿��Ѱ���? �㿡 �þ߸� Ȯ���ϰ� �ٸ� �����ڿ��� �ڽ��� ��ġ�� �˷��ݴϴ�.');

SELECT factId, factText FROM (
    SELECT ROW_NUMBER() OVER (ORDER BY factId) AS rn, factId, factText
    FROM CAR_FACTS
)
WHERE rn = 5;

Select Count(*) FROM CAR_FACTS;

SELECT * FROM CAR_FACTS;

commit;