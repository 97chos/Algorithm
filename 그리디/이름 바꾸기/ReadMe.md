# 이름 바꾸기
- 회사 내부에서 각 직원들에게 영어로 된 사용자 이름이 할당되었습니다.
- 직원들은 이름을 변경할 수 있으며, 영어 이름 내에 있는 알파벳의 위치를 서로 변경하는 방식으로 바꿀 수 있습니다.
- 이때, 이름을 사전 순으로 나열했을 때 현재 이름보다 뒤에 위치하면 안되며, 반드시 앞에 위치해야 합니다. 
- 그 예로 ["bee","superhero","ace"]의 세 가지 이름이 주어졌을 때, bee는 알파벳의 위치를 바꿨을 때 b보다 앞에 올 수 있는 알파벳이 없으므로 이름 변경이 불가능하지만, superhero는 사전 상으로 s보다 앞에 있는 e,h,o,r,p와 변경할 수 있습니다. 
- 이름 배열 usernames가 주어졌을 때, 각 이름마다 변경할 수 있는지의 여부를 확인하는 배열을 리턴하도록 함수를 완성하시오.
***
### 접근법
- 문자열내 알파벳을 다루는 일인 만큼 아스키코드로 접근하였다.
- 처음에는 배열을 for문으로 돌려서 각 이름별로 아스키코드를 구한 다음, [이름의 알파벳: 아스키코드]로 Dictionary 타입을 선언하여 해당 알파벳을 key로 대입한 후 아스키코드를 기준으로 오름차순 정렬, 이를 이름의 순서와 대조하여 같으면 No, 다르면 Yes를 반환하도록 구현하였다.
- 하지만 Bee와 같이 이름 내에서 같은 알파벳이 오는 경우, Dictionary의 특성 상 중복된 key가 발생할 수 없으므로 이름 변경이 불가능하더라도 문자열이 처음 이름과 달라지는 현상이 발생하였다.
- 이를 해결하기 위해 Dictionary를 대체하는 (String, UInt8) 형태의 튜플을 생성하여 중복된 알파벳을 정렬할 수 있도록 수정하였고, 결과적으로 문제를 해결하였다.
