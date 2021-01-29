# renda_clone

## state

- app_state user,users,
- app_state の管理 Provider を使用
- 連打マシーンのロジックを作成。

## view

- view の作成(Widget イメージ)

  - header

  ```
    <Row>
      <Children>
        <>
          <selectA...C></selectA...C>
          <userResultA...C></userResultA...C>
        </>
      </Children>
    </Row>
  ```

  - body

  ```
        <>
          <title></title>
            <input></input>
            <Row>
            <selectA...C></selectA...C>
            </Row>
          <button></button>
        </>
  ```

  - footer

  ```
      <Row>
        <Children>
          <Rolls></Rolls>
          <Board></Board>
        </Children>
      </Row>
  ```

## model

- model の作成

  - User

  ```
  class User
  final id
  final name
  final resultA
  final resultB
  final resultC
  ```

  - Users

  ```
  class Users
  final id
  final <User>List user
  ```

## Game

とりあえずあとで
