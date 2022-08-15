let dict = [
  ("A-normal form", `A-표준형`),
  ("Skolemization", `안전하게 정량자를 제거하는 기법`),
  ("abstract semantics", `요약된 의미구조`),
  ("abstract syntax", `핵심 문법구조`),
  (
    "abstract type",
    `구현된 속사정이 감추어진 타입, 추상형, 속내용이 감추어진 타입, 추상적인 타입`,
  ),
  ("abstraction", `추상화, 속내용 가리기, 요약`),
  ("application", `호출`),
  ("applicative language", `값 중심의 언어`),
  ("argument", `인자`),
  ("array row", `배열 내용`),
  ("assignment", `메모리에 쓰기`),
  ("association list", `관계 리스트`),
  ("associativity", `결합법칙, 방향성`),
  ("atomic proposition", `단위 조건식`),
  ("attribute grammar", `할일이 딸려있는 문법, 속성 문법`),
  ("be polymorphic", `다형성이 있다`),
  ("binary", `이진, 인자가 두개인`),
  ("bind", `정의하다, 이름짓다, 묶다`),
  ("binding", `정의하기, 명명하기, 결정하기`),
  ("bottom", `바닥`),
  ("bound", `위주의`),
  ("built-in", `이미 있는, 붙박이`),
  ("calculus", `셈법, 계산법`),
  ("call by name", `식전달 호출`),
  ("call by need", `제때 계산법, 적시 계산법`),
  ("call by reference", `주소전달 호출, 값의 주소로 호출(하기)`),
  ("call by value", `값으로 호출(하기), 값전달 호출`),
  ("canonical monomial", `규범 단항식`),
  ("case expression", `선택식`),
  ("closure", `함수값, 자유변수값이 결정된 함수`),
  ("closure analysis", `함수흐름 분석`),
  (
    "closure conversion",
    `함수의 자유 변수를 없애주는 변환, 인자를 통해서만 외부와 소통하게 하는 변환`,
  ),
  ("compilation", `언어의 기계어 변환, 프로그램 번역`),
  ("compilation unit", `컴파일 단위, 번역 단위`),
  ("compiler", `컴파일러, 번역기`),
  ("completeness", `완전성, 빠뜨림이 없음`),
  ("computation", `계산`),
  ("computation strategy", `계산 전략, 계산 방식`),
  ("concrete syntax", `구체적 문법 구조`),
  ("conditional branch", `조건 가지`),
  ("consistency", `일관성`),
  ("constraint expression", `제약식`),
  ("constructor", `생성자`),
  ("constructor bind", `데이타 구성자 정의`),
  ("constructor description", `데이타 구성자 접속방안`),
  ("continuation", `앞으로 할 계산, 앞으로 할 일`),
  (
    "continuation passing style",
    `앞으로 할 일을 전달하는, 계산과정을 전달하는, 앞으로 할 일을 함수로 정리해서 전달해주는`,
  ),
  ("continuation passing style transform", `계산과정 전달 변환`),
  ("control flow analysis", `함수 흐름 분석, 실행 흐름 분석`),
  ("convergence", `수렴성`),
  ("convergent", `수렴하는`),
  ("correctness", `정확성, 올바름`),
  ("curried application", `커리형 함수의 적용, 함수의 찻수를 하나씩 낮추는`),
  ("curried function", `커리방식으로 고차화된 함수, 커리형 함수`),
  (
    "dangling pointer",
    `메모리 도난, 없어진 메모리, 헛 메모리 주소, 다른용도로 재생된 메모리, 동강난 메모리`,
  ),
  (
    "dangling reference",
    `동강난 메모리주소, 헛 메모리 주소, 메모리 도난, 없어진 메모리주소`,
  ),
  ("data abstraction", `속내용을 신경쓰지 않게하기`),
  ("data constructor", `데이타 구성자`),
  ("data description", `데이타 타입 접속방안`),
  ("data structure", `자료 구조`),
  ("de-sugar", `설탕 구조를 풀다, 설탕구조를 녹이다`),
  ("dead code", `계산되지 않는 코드`),
  ("decision procedure", `참거짓 자동 판별기, 조건식 자동 검증기`),
  ("declaration", `선언`),
  ("deduction rule", `연역 법칙`),
  ("delayed evaluation", `최대한 미루어 계산하는 방법`),
  ("depedency analysis", `의존성 분석`),
  ("descriptive logic", `서술논리`),
  ("destructive", `파괴적인`),
  ("determinisitc", `결정적`),
  ("digit", `숫자`),
  (
    "dynamic scoping",
    `실행중에 드러나는 이름의 실체, [이름의] 유효범위가 실행 중에 결정되는`,
  ),
  ("dynamic semantics", `프로그램의 실행, 동적 의미구조`),
  ("eager evaluation", `적극적인 계산법, 일단 값을 계산하고 보는`),
  ("environment", `환경`),
  ("environment enrichment", `기획 환경의 적응`),
  ("environment function", `환경 함수`),
  ("equational reasoning", `등치만들기 논법, 동치만들기 논법`),
  ("error", `오류`),
  ("evaluation by value", `적극적인 계산법`),
  ("evaluation strategy", `계산법, 계산 전략, 계산 방식`),
  ("exception", `예외상황`),
  ("exception analysis", `예외상황 분석`),
  ("exception bind", `예외상황 정의`),
  ("exception description", `예외상황 접속방안`),
  ("exception handling", `예외상황 처리, 예외상황 관리`),
  ("expression", `프로그램식, 식`),
  ("factorial", `계승`),
  ("factorial function", `계승(階乘)함수`),
  ("finiteness", `유한성`),
  ("first order equational logic", `1차 등식 논리`),
  ("foreign language interface", `외부 언어 접속`),
  ("formal parameter", `형식인자`),
  ("free identifier", `묶이지 않은 이름, 자유로운 이름`),
  ("free type name", `묶이지 않은 타입 이름`),
  (
    "free variable",
    `자유변수, 자유로운 이름, 묶이지 않은 변수, 자유로운 변수`,
  ),
  ("function application", `함수 적용식, 함수 호출, 계산`),
  ("function argument", `함수의 인자`),
  ("function expression", `함수식`),
  ("functional language", `함수 언어, 함수 중심의 언어, 값 중심의 언어`),
  ("functional programming", `값 중심의 프로그래밍, 함수 중심의 프로그래밍`),
  ("functional style", `함수 중심 스타일, 값 중심 스타일`),
  ("functor", `모듈함수`),
  ("functor signature instantiation", `모듈함수 타입의 실현`),
  ("garbage collection", `메모리 재활용, 메모리 수거`),
  ("generative", `생성적`),
  ("grammar", `문법`),
  ("head", `머리`),
  ("heap profiler", `메모리 계측기`),
  ("hierarchy", `계층구조, 계층구조 형성하기`),
  ("high-order function", `고차 함수, 함수를 주고 받는 함수`),
  ("higher-order and typed", `고차 타입을 갖춘`),
  ("homomorphism", `동형성`),
  (
    "imperative language",
    `행동지침형 언어, 명령형 언어, 순서 중심의 언어, 메모리 중심의 언어, 기계중심의 언어`,
  ),
  ("incomplete", `불완전한`),
  ("infix", `새치기`),
  ("instantiation", `모듈함수 타입의 실현`),
  ("interface", `접속방안`),
  ("interoperability", `상호운용성`),
  ("interpolating prover", `중간값을 채워나가는 증명기`),
  ("interpretation", `실행`),
  ("interpreter", `실행기`),
  ("invariant", `불변성질`),
  ("isomorphism", `같은 형태`),
  ("iterative", `반복적`),
  ("join operator", `결합 연산자`),
  ("label row", `레코드 내용`),
  ("lattice", `래티스`),
  (
    "lazy evaluation",
    `값 계산을 최대한 미루는, 소극적인 계산법, 지연 계산법, 제때 계산법`,
  ),
  ("leaf", `잎새`),
  ("lexical conventions", `어휘 만드는 방법`),
  ("lexicographic order", `사전적 순서 관계, 사전적 순서`),
  ("list", `리스트`),
  ("local definition", `우물안 정의, 지역적인 정의, 갇힌 정의`),
  ("local procedure", `갇힌 프로시져, 유효범위가 제한된 프로시져`),
  ("local variable", `유효범위가 제한된 변수, 갇힌 변수`),
  ("logical relation", `논리적 관계`),
  ("match", `어울리기, 패턴 맞추기`),
  ("memory function", `메모리 함수`),
  ("memory leak", `메모리 출혈, 메모리 누수`),
  ("metalanguage", `언어를 기술하는 언어`),
  ("model checking", `모델 검증`),
  ("modularity", `따로따로 포장하기`),
  ("module", `모듈`),
  ("monad", `모나드`),
  (
    "mono-variant analysis",
    `단일성 분석, 다수의 프로그램 흐름을 하나로 요약하는 분석, 다대일 분석`,
  ),
  ("mutual recursive", `서로 호출하는, 서로 맞물려서 호출하는`),
  ("narrowing", `좁히기`),
  ("network", `네트워크 구축, 네트웍`),
  ("non-deterministic", `비결정적`),
  ("non-expansive", `메모리 반응을 일으키지 않는`),
  ("normal form", `표준형, 틀에맞는 형태, 규격에맞는 형태`),
  ("normalization", `표준화, 틀맞춤, 규격화`),
  ("object", `객체, 물건`),
  ("object-oriented language", `물건 중심의 언어`),
  (
    "operational semantics",
    `실행과정을 생각하는 의미구조, 일상적인 의미구조, 논리형 의미구조`,
  ),
  ("operator", `연산자`),
  ("or-pattern", `무더기 패턴`),
  ("ordered relation", `순서 관계`),
  ("overflow", `넘침`),
  ("parameter", `인자, 매개변수`),
  ("parameterized module", `일반화된 모듈`),
  ("paramodulation", `도출 원리`),
  ("partial function", `일부만 정의된 함수`),
  ("pattern", `패턴`),
  ("pattern match", `패턴에 맞추기, 패턴과 어울리기`),
  (
    "poly-variant analysis",
    `다대다 분석, 다형성을 가지는 분석, 다중 변종 분석, 다수의 프로그램 흐름을 하나 이상으로 요약하는 분석`,
  ),
  ("polymorphic", `다형, 여러 모양의, 여러 타입을 가지는, 다변형`),
  ("polymorphic function", `인자 타입에 상관없는 함수, 다형 함수`),
  ("polymorphic type", `다형 타입`),
  ("polymorphism", `다형성`),
  ("postfix", `뒤에 붙는`),
  ("precedence", `우선순위`),
  ("predicate", `조건자, 서술식`),
  ("predicate abstraction", `조건식 요약, 조건식을 하나의 변수로 요약하기`),
  ("predicate logic", `서술논리`),
  ("primitive", `기본`),
  (
    "primitive recursive function",
    `단순한 자기 참조 함수, 원시적인 자기 참조 함수`,
  ),
  ("principal type", `대표 타입, 가장 일반적인 타입`),
  ("programming language", `프로그래밍 언어`),
  ("recursive", `자기자신을 부르는, 자기호출`),
  ("recursive function", `자기 호출 함수, 자기자신을 부르는 함수`),
  ("recursive primitive definition", `원시적 자기참조 정의`),
  ("reduction", `수행, 계산, 줄이기`),
  ("refer", `언급하다`),
  ("reference", `메모리 주소, 참조`),
  ("reference manual", `참고서`),
  ("rewrite", `다시 쓰기`),
  ("rewrite rule", `다시 쓰기 규칙`),
  ("rewrite semantics", `다시 쓰기를 이용한 의미 구조`),
  ("saturation prover", `새로운 사실이 도출되지 않을 때까지 유도하는 증명기`),
  ("scaffolding code", `테스터 코드, 테스트 발판 코드`),
  ("scheme", `타입 틀`),
  ("scope", `유효범위`),
  ("selector", `선택자`),
  ("semantics", `표시적, 의미 구조`),
  ("sequence", `나열식`),
  ("shape grammar", `형태 문법`),
  ("side-effect", `수반되는 반응, 메모리 반응, 함께오는 반응`),
  ("signature", `모듈타입`),
  ("signature bind", `모듈타입 정의`),
  ("signature matching", `모듈 접속`),
  ("simple type", `단순 타입`),
  ("soundness", `안전성`),
  ("sparse data structure", `듬성 듬성 사용하는 데이타 구조`),
  ("static analysis", `프로그램 분석`),
  (
    "static scoping",
    `실행전에 결정되는 이름의 실체, [이름의] 유효범위가 미리 결정되는`,
  ),
  ("static semantics", `정적 의미구조, 프로그램의 기획`),
  ("static type synthesis", `타입 유추`),
  ("strict evaluation", `일단 값을 계산하고 보는, 적극적 계산법`),
  ("string", `글자실`),
  ("structure", `모듈`),
  ("structure bind", `모듈 정의`),
  ("structure description", `모듈 접속방안`),
  ("structure expression", `모듈식`),
  ("substitution", `치환 함수, 바꿔치기`),
  ("symbol", `기호`),
  ("syntactic constraint", `문법적인 제약`),
  ("syntax", `문법구조, 문법 구조`),
  ("syntax analysis", `문법 구조 분석`),
  ("tail", `나머지, 꼬리`),
  (
    "tail recursive",
    `마지막에 자기자신을 부르는, 자기 호출이 마지막인, 끝재귀호출, 되돌아 올 필요없는 자기호출, 꼬리재귀호출`,
  ),
  ("template", `거푸집`),
  ("term", `명사식, 낱말`),
  ("top declaration", `가장 위의 선언`),
  ("top-level declaration", `가장 위의 선언`),
  ("total function", `모두가 정의된 함수`),
  ("trace partitioning", `실행과정 분할(하기)`),
  ("tradeoff", `디자인 거래, 거래, 공학적 거래`),
  ("tree", `가지구조`),
  (
    "truely recursive function",
    `자기참조 없이는 정의할 수 없는 함수, 완전한 자기 참조 함수`,
  ),
  ("tuple", `튜플`),
  ("type", `형, 꼴, 타입`),
  ("type abbreviation", `타입 줄임말`),
  ("type bind", `타입 정의`),
  ("type construct", `타입식`),
  ("type constructor", `타입, 타입 구성자`),
  ("type description", `타입 접속방안`),
  ("type expression", `타입식`),
  ("type inference", `타입 유추`),
  ("type realization", `타입 실현`),
  ("type scheme", `타입 틀`),
  ("type scheme generalization", `타입 틀의 적응`),
  ("type structure", `타입 구조`),
  ("type structure enrichment", `타입 구조의 적응`),
  ("type system", `타입 체계`),
  ("type variable", `타입 변수`),
  ("typing rule", `타입 규칙, 타입만들기 규칙`),
  ("unary", `인자가 하나인`),
  ("uncurrying", `언커링`),
  ("undecidable", `결정할 수 없는, 컴퓨터로는 불가능한`),
  ("unification", `동일화, 타입을 같게 하는`),
  ("value", `값`),
  ("value bind", `값 정의`),
  ("value type enrichment", `값 타입의 적응`),
  ("variable", `변수`),
  ("verifier", `검증기`),
  ("well founded", `바닥이 갖추어진, 올바르게 기초하였다, 밑바닥이 튼실한`),
  ("well-formed", `제대로 구성된`),
  ("widening", `축지법`),
  ("wild pattern", `임의 패턴`),
  //  ("속내용 감추기", `속내용을 신경쓰지 않게하기`),
]

// TODO: Refine types
@module("./firestore.js") external streamJargons: unit => 'stream = "streamJargons"
@module("./firestore.js") external addJargon: (string, string) => 'a = "addJargon"
type jargon = {id: string, english: string, korean: string}

module Dictionary = {
  let header =
    <thead>
      <tr> <th> {React.string(`영어`)} </th> <th> {React.string(`한국어`)} </th> </tr>
    </thead>

  let makeRow = ({id, english, korean}) => {
    <tr key=id> <td> {React.string(english)} </td> <td> {React.string(korean)} </td> </tr>
  }

  @react.component
  let make = (~query) => {
    let (jargons, setJargons) = React.useState(_ => [])

    React.useEffect0(() => {
      let stream = streamJargons()
      let unsubscribe = stream(jargons => {
        setJargons(_ => jargons)
      })

      // cleanup
      Some(() => {unsubscribe()})
    })

    let regex = {
      let matchAll = %re("/.*/")
      try Js.Re.fromString(query) catch {
      | Js.Exn.Error(obj) => {
          obj->Js.Exn.message->Option.forEach(Js.log)
          matchAll
        }
      }
    }
    let rows = jargons->Array.keepMap(({english, korean} as jargon) => {
      switch (english->Js.String2.match_(regex), korean->Js.String2.match_(regex)) {
      | (None, None) => None
      | _ => Some(makeRow(jargon))
      }
    })
    <table className="content-table"> header <tbody> {React.array(rows)} </tbody> </table>
  }
}

module InputForm = {
  @react.component
  let make = (~query, ~onChange) => {
    <form>
      <label> {React.string(`검색 (정규식)`)} </label>
      <input type_="text" value=query onChange />
    </form>
  }
}

@react.component
let make = () => {
  // query is set from InputForm via onChange and passed into Dictionary
  let (query, setQuery) = React.useState(() => "")
  let onChange = event => {
    let value = (event->ReactEvent.Form.currentTarget)["value"]
    setQuery(_ => value)
  }

  <div className="container"> <InputForm query onChange /> <Dictionary query /> </div>
}