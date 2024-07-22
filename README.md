# 1.1 The Var Keyword
## Variables
- `var` 키워드로 변수 정의 가능
    - 컴파일러가 자동으로 변수 타입 정의
    - String, Int 같은 명시적 타입으로 대체 가능함
- 관습
    - 함수나 메소드 내부에 지역 변수 선언 시 var을 사용함
    - 클래스에서 변수나 프로퍼티를 선언할 때는 타입을 지정
- 기본적으로 mutable임 = 업데이트 가능
    - 명시적으로 타입을 지정할 시 
    변수 업데이트 시 타입을 유지해야 함.

```dart
void main() {
    String name = '이름';
    name = "손흥민";        // O
    name = 123;             // X
}
```

# 1.2 Dynamic Type
## Dynamic?
- 여러 타입을 가질 수 있는 변수를 지정할 때 쓰이는 타입
- var을 사용할 때와 비슷한 효과
    - 그럼 왜 dynamic?
    - 변수가 어떤 타입인지 알기 어려운 경우 등
- 예를 들어 if문(후술) 등에서 String이라는 타입을 가정할 때 
  <br />해당 블럭에서는 String에 해당하는 메소드 등을 사용 가능
- 이상적인 코드에서는 사용을 꺼림
    - 정말 필요할 때만 사용

# 1.3 Nullable Variables
## null safety
- Null 값을 참조할 수 없도록 하는 것
## null? 
- 빈 값
- 기본적으로 모든 변수는 non-nullable임
- 변수를 null로 할당하기 위해서는 Null이 될 수 있다고 명확히 표시해야 함 
    - 명시적 타입을 사용할 때는 타입 뒤에 `?`를 붙임
    - 예를 들어, `String? name = "페이커"`는 `문자열일까요오...?` 라는 느낌임
    - 이로서 dart는 name이 String일 수도, null일 수도 있다는 걸 알 게 됨
- 나중에 nullable 값을 사용하려면 다음과 같이 해야 함
```dart
void main() {
  String? goat = "페이커";
  goat = null;
  if (goat != null) {
      goat.isNotEmpty; 
  }
  goat?.isNotEmpty; // 위와 똑같이 작동함
}
```

# 1.4 Final Variables
# final 
- 한 번 정의된 변수를 수정할 수 없게 만드는 키워드
    - mutable -> immutable
- 상수를 만들 때는 var 대신 final을 사용해야 함
- 타입을 지정하려면 final 키워드 뒤에 타입을 지정
    - 하지 않아도 됨 (var 키워드와 똑같은 기능을 가지기 때문)

# 1.5 Late Variables
## late keyword
- late는 final이나 var 앞에 붙일 수 있는 수식어임
- 초기 데이터 없이 변수 선언을 가능하게 함
- 정의 전 print 같은 것을 사용하려고 하면 에러를 발생시킴
    - "분명히 할당되지 않음"

# 1.6 Constant Variables
## const keyword
- 자바스크립트 등의 const는 final과 비슷함
- dart에서는 const가 compile time constant를 만듬
    - 컴파일 될 때 컴파일러가 값을 알고 있어야 함
    - API 키 등...
    - 정확히 `이건 '페이커'야!` 라고 명시되도록 값을 가져야 한다는 소리임

