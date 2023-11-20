Description: The Demo Tests for WEB App Plugin


Scenario: 1. Verify that allows register a User

Given I am on page with URL `https://petstore.swagger.io/#`
When I wait until element located by `By.xpath(//div[@id='operations-user-createUser']//span[contains(text(),'POST')])` appears
Then number of elements found by `By.xpath(//div[@id='operations-user-createUser']//span[contains(text(),'POST')])` is = `1`

When I execute sequence of actions:
|type      |argument                                                                         |
|CLICK     |By.xpath(//div[@id='operations-user-createUser']//span[contains(text(),'POST')]) |
Then the page with the URL 'https://petstore.swagger.io/#/user/createUser' is loaded

When I click on element located by `By.xpath(//div[@id='operations-user-createUser']//button[contains(text(),"Try it out")])`
When I clear field located by `By.xpath(//div[@id='operations-user-createUser']//textarea[@class='body-param__text'])`
When I enter `{
  "id": 1,
  "username": "IraPr",
  "firstName": "Iryna",
  "lastName": "Pr",
  "email": "pr@gmail.com",
  "password": "112233",
  "phone": "0501111111",
  "userStatus": 1
}` in field located by `By.xpath(//div[@id='operations-user-createUser']//textarea[@class='body-param__text'])`

When I click on element located by `By.xpath(//div[@id='operations-user-createUser']//button[text()='Execute'])`
When I wait until element located by `By.xpath(//div[@id='operations-user-createUser']//table[contains(@class,"live-responses")]//td[@class="response-col_status"])` appears
Then number of elements found by `By.xpath(//div[@id='operations-user-createUser']//table[contains(@class,"live-responses")]//td[contains(@class,"response") and text()='200'])` is = `1`



Scenario: 2. Verify that allows login as a User

Given I am on page with URL `https://petstore.swagger.io/#`
When I wait until element located by `By.xpath(//div[@id='operations-user-loginUser']//span[contains(text(),'GET')])` appears
Then number of elements found by `By.xpath(//div[@id='operations-user-loginUser']//span[contains(text(),'GET')])` is = `1`

When I execute sequence of actions:
|type      |argument                                                                       |
|CLICK     |By.xpath(//div[@id='operations-user-loginUser']//span[contains(text(),'GET')]) |
Then the page with the URL 'https://petstore.swagger.io/#/user/loginUser' is loaded

When I click on element located by `By.xpath(//div[@id='operations-user-loginUser']//button[contains(text(),"Try it out")])`
When I enter `IraPr` in field located by `By.xpath(//div[@id='operations-user-loginUser']//input[@placeholder='username'])`
When I enter `112233` in field located by `By.xpath(//div[@id='operations-user-loginUser']//input[@placeholder='password'])`

When I click on element located by `By.xpath(//div[@id='operations-user-loginUser']//button[text()='Execute'])`
When I wait until element located by `By.xpath(//div[@id='operations-user-loginUser']//table[contains(@class,"live-responses")]//td[@class="response-col_status"])` appears
Then number of elements found by `By.xpath(//div[@id='operations-user-loginUser']//table[contains(@class,"live-responses")]//td[contains(@class,"response") and text()='200'])` is = `1`



Scenario: 3. Verify that allows creating the list of Users

Given I am on page with URL `https://petstore.swagger.io/#`
When I wait until element located by `By.xpath(//div[@id='operations-user-createUsersWithListInput']//span[contains(text(),'POST')])` appears
Then number of elements found by `By.xpath(//div[@id='operations-user-createUsersWithListInput']//span[contains(text(),'POST')])` is = `1`

When I execute sequence of actions:
|type      |argument                                                                                       |
|CLICK     |By.xpath(//div[@id='operations-user-createUsersWithListInput']//span[contains(text(),'POST')]) |
Then the page with the URL 'https://petstore.swagger.io/#/user/createUsersWithListInput' is loaded

When I click on element located by `By.xpath(//div[@id='operations-user-createUsersWithListInput']//button[contains(text(),"Try it out")])`
When I clear field located by `By.xpath(//div[@id='operations-user-createUsersWithListInput']//textarea[@class='body-param__text'])`
When I enter `[
  {
    "id": 2,
    "username": "IraPr2",
    "firstName": "Iryna2",
    "lastName": "Pr2",
    "email": "pr2@gmail.com",
    "password": "1122332",
    "phone": "0501111112",
    "userStatus": 2
  },
  {
    "id": 3,
    "username": "IraPr3",
    "firstName": "Iryna3",
    "lastName": "Pr3",
    "email": "pr3@gmail.com",
    "password": "1122333",
    "phone": "0501111113",
    "userStatus": 3
  },
  {
    "id": 4,
    "username": "IraPr4",
    "firstName": "Iryna4",
    "lastName": "Pr4",
    "email": "pr4@gmail.com",
    "password": "1122334",
    "phone": "0501111114",
    "userStatus": 4
  }
]` in field located by `By.xpath(//div[@id='operations-user-createUsersWithListInput']//textarea[@class='body-param__text'])`

When I click on element located by `By.xpath(//div[@id='operations-user-createUsersWithListInput']//button[text()='Execute'])`
When I wait until element located by `By.xpath(//div[@id='operations-user-createUsersWithListInput']//table[contains(@class,"live-responses")]//td[@class="response-col_status"])` appears
Then number of elements found by `By.xpath(//div[@id='operations-user-createUsersWithListInput']//table[contains(@class,"live-responses")]//td[contains(@class,"response") and text()='200'])` is = `1`



Scenario: 4. Verify that allows Log out User

Given I am on page with URL `https://petstore.swagger.io/#`
When I wait until element located by `By.xpath(//div[@id='operations-user-logoutUser']//span[contains(text(),'GET')])` appears
Then number of elements found by `By.xpath(//div[@id='operations-user-logoutUser']//span[contains(text(),'GET')])` is = `1`

When I execute sequence of actions:
|type      |argument                                                                        |
|CLICK     |By.xpath(//div[@id='operations-user-logoutUser']//span[contains(text(),'GET')]) |
Then the page with the URL 'https://petstore.swagger.io/#/user/logoutUser' is loaded

When I click on element located by `By.xpath(//div[@id='operations-user-logoutUser']//button[contains(text(),"Try it out")])`
When I click on element located by `By.xpath(//div[@id='operations-user-logoutUser']//button[text()='Execute'])`
When I wait until element located by `By.xpath(//div[@id='operations-user-logoutUser']//table[contains(@class,"live-responses")]//td[@class="response-col_status"])` appears
Then number of elements found by `By.xpath(//div[@id='operations-user-logoutUser']//table[contains(@class,"live-responses")]//td[contains(@class,"response") and text()='200'])` is = `1`



Scenario: 5. Verify that allows adding a new Pet

Given I am on page with URL `https://petstore.swagger.io/#`
When I wait until element located by `By.xpath(//div[@id='operations-pet-addPet']//span[contains(text(),'POST')])` appears
Then number of elements found by `By.xpath(//div[@id='operations-pet-addPet']//span[contains(text(),'POST')])` is = `1`

When I execute sequence of actions:
|type      |argument                                                                    |
|CLICK     |By.xpath(//div[@id='operations-pet-addPet']//span[contains(text(),'POST')]) |
Then the page with the URL 'https://petstore.swagger.io/#/pet/addPet' is loaded

When I click on element located by `By.xpath(//div[@id='operations-pet-addPet']//button[contains(text(),"Try it out")])`
When I clear field located by `By.xpath(//div[@id='operations-pet-addPet']//textarea[@class='body-param__text'])`
When I enter `{
  "id": 1,
  "category": {
    "id": 2,
    "name": "ausi"
  },
  "name": "Elli",
  "photoUrls": [
    "https://www.dailypaws.com/thmb/7hSOqJsROLMN_letKcAYgNbiecM=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/australian-shepherd-full-body-635701178-2000-3e79ff41114848e4a81d1bf72994a3e9.jpg"
  ],
  "tags": [
    {
      "id": 55577,
      "name": "QR"
    }
  ],
  "status": "available"
}` in field located by `By.xpath(//div[@id='operations-pet-addPet']//textarea[@class='body-param__text'])`

When I click on element located by `By.xpath(//div[@id='operations-pet-addPet']//button[text()='Execute'])`
When I wait until element located by `By.xpath(//div[@id='operations-pet-addPet']//table[contains(@class,"live-responses")]//td[@class="response-col_status"])` appears
Then number of elements found by `By.xpath(//div[@id='operations-pet-addPet']//table[contains(@class,"live-responses")]//td[contains(@class,"response") and text()='200'])` is = `1`



Scenario: 6. Verify that allows updating Pet’s image

Given I am on page with URL `https://petstore.swagger.io/#`
When I wait until element located by `By.xpath(//div[@id='operations-pet-updatePet']//span[contains(text(),'PUT')])` appears
Then number of elements found by `By.xpath(//div[@id='operations-pet-updatePet']//span[contains(text(),'PUT')])` is = `1`

When I execute sequence of actions:
|type      |argument                                                                      |
|CLICK     |By.xpath(//div[@id='operations-pet-updatePet']//span[contains(text(),'PUT')]) |
Then the page with the URL 'https://petstore.swagger.io/#/pet/updatePet' is loaded

When I click on element located by `By.xpath(//div[@id='operations-pet-updatePet']//button[contains(text(),"Try it out")])`
When I clear field located by `By.xpath(//div[@id='operations-pet-updatePet']//textarea[@class='body-param__text'])`
When I enter `{
  "id": 1,
  "category": {
    "id": 2,
    "name": "ausi"
  },
  "name": "Elli",
  "photoUrls": [
    "https://i.pinimg.com/originals/61/17/c1/6117c179aa6bf6be9d5f1e8e807dfe0e.jpg"
  ],
  "tags": [
    {
      "id": 55577,
      "name": "QR"
    }
  ],
  "status": "available"
}` in field located by `By.xpath(//div[@id='operations-pet-updatePet']//textarea[@class='body-param__text'])`

When I click on element located by `By.xpath(//div[@id='operations-pet-updatePet']//button[text()='Execute'])`
When I wait until element located by `By.xpath(//div[@id='operations-pet-updatePet']//table[contains(@class,"live-responses")]//td[@class="response-col_status"])` appears
Then number of elements found by `By.xpath(//div[@id='operations-pet-updatePet']//table[contains(@class,"live-responses")]//td[contains(@class,"response") and text()='200'])` is = `1`



Scenario: 7. Verify that allows updating Pet’s name and status

Given I am on page with URL `https://petstore.swagger.io/#`
When I wait until element located by `By.xpath(//div[@id='operations-pet-updatePetWithForm']//span[contains(text(),'POST')])` appears
Then number of elements found by `By.xpath(//div[@id='operations-pet-updatePetWithForm']//span[contains(text(),'POST')])` is = `1`

When I execute sequence of actions:
|type      |argument                                                                               |
|CLICK     |By.xpath(//div[@id='operations-pet-updatePetWithForm']//span[contains(text(),'POST')]) |
Then the page with the URL 'https://petstore.swagger.io/#/pet/updatePetWithForm' is loaded

When I click on element located by `By.xpath(//div[@id='operations-pet-updatePetWithForm']//button[contains(text(),"Try it out")])`
When I enter `1` in field located by `By.xpath(//div[@id='operations-pet-updatePetWithForm']//input[@placeholder='petId'])`
When I enter `Citrus` in field located by `By.xpath(//div[@id='operations-pet-updatePetWithForm']//input[@placeholder='name'])`
When I enter `pending` in field located by `By.xpath(//div[@id='operations-pet-updatePetWithForm']//input[@placeholder='status'])`

When I click on element located by `By.xpath(//div[@id='operations-pet-updatePetWithForm']//button[text()='Execute'])`
When I wait until element located by `By.xpath(//div[@id='operations-pet-updatePetWithForm']//table[contains(@class,"live-responses")]//td[@class="response-col_status"])` appears
Then number of elements found by `By.xpath(//div[@id='operations-pet-updatePetWithForm']//table[contains(@class,"live-responses")]//td[contains(@class,"response") and text()='200'])` is = `1`



Scenario: 8. Verify that allows deleting Pet

Given I am on page with URL `https://petstore.swagger.io/#`
When I wait until element located by `By.xpath(//div[@id='operations-pet-deletePet']//span[contains(text(),'DELETE')])` appears
Then number of elements found by `By.xpath(//div[@id='operations-pet-deletePet']//span[contains(text(),'DELETE')])` is = `1`

When I execute sequence of actions:
|type      |argument                                                                         |
|CLICK     |By.xpath(//div[@id='operations-pet-deletePet']//span[contains(text(),'DELETE')]) |
Then the page with the URL 'https://petstore.swagger.io/#/pet/deletePet' is loaded

When I click on element located by `By.xpath(//div[@id='operations-pet-deletePet']//button[contains(text(),"Try it out")])`
When I enter `special-key` in field located by `By.xpath(//div[@id='operations-pet-deletePet']//input[@placeholder='api_key'])`
When I enter `1` in field located by `By.xpath(//div[@id='operations-pet-deletePet']//input[@placeholder='petId'])`

When I click on element located by `By.xpath(//div[@id='operations-pet-deletePet']//button[text()='Execute'])`
When I wait until element located by `By.xpath(//div[@id='operations-pet-deletePet']//table[contains(@class,"live-responses")]//td[@class="response-col_status"])` appears
Then number of elements found by `By.xpath(//div[@id='operations-pet-deletePet']//table[contains(@class,"live-responses")]//td[contains(@class,"response") and text()='200'])` is = `1`
