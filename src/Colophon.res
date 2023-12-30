@react.component
let make = () => {
  <article className="px-6 py-12 max-w-xl mx-auto md:max-w-4xl prose">
    <h1> {"제작기"->React.string} </h1>
    <div className="text-right text-sm">
      <a href="http://ropas.snu.ac.kr/~jhlee/">
        {"서울대학교 프로그래밍 연구실 이재호"->React.string}
      </a>
    </div>
    <div className="divider" />
    <h2> {"기초가 튼튼한 언어로 작성하기"->React.string} </h2>
    <p>
      {"본 사이트의 앞단(frontend)은 ReScript로 작성되었다. ReScript는 강력한 정적 타입 시스템이 장착된 OCaml에서 파생된 함수형 프로그래밍 언어로, 웹 프로그래밍의 표준이 된 JavaScript로 번역된다. 이러한 특징을 가진 ReScript는 탄탄한 프로그래밍 언어의 기반과 풍부한 JavaScript 생태계의 이점을 동시에 누린다. 안전하면서도 편리한 언어의 힘을 맛 본 사람으로서 ReScript는 매력적인 언어일 수밖에 없다."->React.string}
    </p>
    <p>
      {"TypeScript와 Flow처럼 기존의 JavaScript 위에 정적 타입 시스템을 얹는 방법도 있지만, 이런 방식은 분명 언어를 고안할 때부터 정적 타입 시스템을 염두한 것에 비하면 불완전하다. ReScript는 JSX, 비동기 처리와 같은 JavaScript 세상과의 연결도 편리하게 제공하면서, OCaml의 계보를 이어받아 가변 변수, 예외, 모듈 시스템과 같은 기능과 더불어 (원한다면) GADT, 확장 가능한 갈래 타입(extensible variant) 등의 기능도 제공한다."->React.string}
    </p>
    <p>
      {"함수형 사고방식을 지향하는 ReScript의 장점은 React의 함수 컴포넌트를 사용할 때 빛을 발휘한다. 특히 임의로 중첩되는 나무 구조식 댓글을 만들 때 체감할 수 있었는데, 서로 맞물려 돌아가는 컴포넌트로 댓글 구조를 만들었을 때의 전율은 아직도 생생하다."->React.string}
    </p>
    <h2> {"더 알아보기"->React.string} </h2>
    <p>
      {"쉬운 전문용어 사이트의 소스코드는 "->React.string}
      <a href="https://github.com/Zeta611/eko"> {"github.com/Zeta611/eko"->React.string} </a>
      {"에서 살펴볼 수 있다. 사이트 자체에 대한 질문이나 건의사항이 있다면 깃허브의 "->React.string}
      <a href="https://github.com/Zeta611/eko/issues"> {"Issues"->React.string} </a>
      {" 기능을 활용하면 된다."->React.string}
    </p>
  </article>
}
