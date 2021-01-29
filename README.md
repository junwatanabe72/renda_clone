# renda_clone

## app_state

- app_state user,users の ChangeNotifierWidget 作成
- app_state の管理は Provider を使用

## model

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
  final <User>List user
  ```

## view

- toppage view の作成(Widget イメージ)

  - header

  ```
    <Row>
      <Children>
        <>
          <SelectA...C></SelectA...C>
          <UserResultA...C></UserResultA...C>
        </>
      </Children>
    </Row>
  ```

  - body

  ```
        <>
          <Title></Title>
            <Input></Input>
            <Row>
            <selectA...C></selectA...C>
            </Row>
          <Button></Button>
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

## Game

とりあえずあとで
