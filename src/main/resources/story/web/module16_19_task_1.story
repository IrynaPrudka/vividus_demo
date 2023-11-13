Description: The Demo Tests for WEB App Plugin


Scenario: 1-1. Check the title of EPAM.com is correct

Given I am on page with URL `https://www.epam.com/`
Then page title is equal to `EPAM | Software Engineering & Product Development Services`


Scenario: 1-2. Check the ability to switch Light / Dark mode

Given I am on page with URL `https://www.epam.com/`
When I click on element located by `By.xpath(//section[@class='theme-switcher-ui']/div)`


Scenario: 1-3. Check that allow to change language to UA

Given I am on page with URL `https://www.epam.com/`
When I click on element located by `By.xpath(//button[@class='location-selector__button'])`
When I click on element located by `By.xpath(//a[@class='location-selector__link' and @lang='uk'])`


Scenario: 1-4. Check the policies list

Given I am on page with URL `https://www.epam.com/`
When I click on element located by `By.xpath(//a[text()="INVESTORS"])`
When I click on element located by `By.xpath(//a[text()="COOKIE POLICY"])`
When I click on element located by `By.xpath(//a[text()="OPEN SOURCE"])`
When I click on element located by `By.xpath(//a[text()="APPLICANT PRIVACY NOTICE"])`
When I click on element located by `By.xpath(//a[text()="PRIVACY POLICY"])`
When I click on element located by `By.xpath(//a[text()="WEB ACCESSIBILITY"])`


Scenario: 1-5. Check that allow to switch location list by region

Given I am on page with URL `https://www.epam.com/`
When I click on element located by `By.xpath(//a[text()="AMERICAS"])`
Then number of elements found by `By.xpath(//div[@class='tabs-23__item js-tabs-item active' and @data-item='0'])` is = `1`
Then number of elements found by `By.xpath(//div[@class='tabs-23__item js-tabs-item'        and @data-item='1'])` is = `0`
Then number of elements found by `By.xpath(//div[@class='tabs-23__item js-tabs-item'        and @data-item='2'])` is = `0`

When I click on element located by `By.xpath(//a[text()="EMEA"])`
Then number of elements found by `By.xpath(//div[@class='tabs-23__item js-tabs-item'        and @data-item='0'])` is = `0`
Then number of elements found by `By.xpath(//div[@class='tabs-23__item js-tabs-item active' and @data-item='1'])` is = `1`
Then number of elements found by `By.xpath(//div[@class='tabs-23__item js-tabs-item'        and @data-item='2'])` is = `0`

When I click on element located by `By.xpath(//a[text()="APAC"])`
Then number of elements found by `By.xpath(//div[@class='tabs-23__item js-tabs-item'        and @data-item='0'])` is = `0`
Then number of elements found by `By.xpath(//div[@class='tabs-23__item js-tabs-item'        and @data-item='1'])` is = `0`
Then number of elements found by `By.xpath(//div[@class='tabs-23__item js-tabs-item active' and @data-item='2'])` is = `1`


Scenario: 1-6. Check the search function

Given I am on page with URL `https://www.epam.com/`
When I click on element located by `By.xpath(//button[contains(@class,"header-search__button")])`
When I enter `AI` in field located by `By.xpath(//input[@id='new_form_search'])`
When I click on element located by `By.xpath(//button[contains(@class,"custom-search-button")])`
Then the page with the URL 'https://www.epam.com/search?q=AI' is loaded
Then number of elements found by `By.xpath(//h2[@class='search-results__counter'])` is = `1`


Scenario: 1-7. Check form's fields validation

Given I am on page with URL `https://www.epam.com/about/who-we-are/contact`

When I click on element located by `By.xpath(//span[contains(@aria-labelledby,"mail_subjects")])`
When I execute sequence of actions:
|type      |argument                   |
|ENTER_TEXT|General Information Request|

When I click on element located by `By.xpath(//input[@name='user_first_name'])`
When I execute sequence of actions:
|type      |argument    |
|ENTER_TEXT|Iryna       |

When I click on element located by `By.xpath(//input[@name='user_last_name'])`
When I execute sequence of actions:
|type      |argument    |
|ENTER_TEXT|Prudka      |

When I click on element located by `By.xpath(//input[@name='user_email'])`
When I execute sequence of actions:
|type      |argument              |
|ENTER_TEXT|iryna_prudka@epam.com |

When I click on element located by `By.xpath(//input[@name='user_phone'])`
When I execute sequence of actions:
|type      |argument        |
|ENTER_TEXT|+38(050)5199069 |

When I click on element located by `By.xpath(//span[contains(@aria-labelledby,"user_country")])`
When I execute sequence of actions:
|type      |argument|
|ENTER_TEXT|Ukraine|

When I click on element located by `By.xpath(//span[contains(@aria-labelledby,"user_comment_how_hear_about")])`
When I execute sequence of actions:
|type      |argument      |
|ENTER_TEXT|Worked at EPAM|

When I click on element located by `By.xpath(//label[contains(@for,"gdprConsent")])`

Then number of elements found by `By.xpath(//span[contains(@aria-labelledby,"mail_subjects") and @aria-invalid='false'])` is = `1`
Then number of elements found by `By.xpath(//input[@name='user_first_name' and @aria-invalid='false'])` is = `1`
Then number of elements found by `By.xpath(//input[@name='user_last_name' and @aria-invalid='false'])` is = `1`
Then number of elements found by `By.xpath(//input[@name='user_email' and @aria-invalid='false'])` is = `1`
Then number of elements found by `By.xpath(//input[@name='user_phone' and @aria-invalid='false'])` is = `1`
!-- Then number of elements found by `By.xpath(//span[contains(@title,"Ukraine")])` is = `1`
!-- Then number of elements found by `By.xpath(//span[contains(@aria-labelledby,"user_comment_how_hear_about") and @aria-invalid='false'])` is = `1`
Then number of elements found by `By.xpath(//input[contains(@id,"gdprConsent") and @aria-invalid='false'])` is = `1`


Scenario: 1-8. Check tha the Company logo on the header lead to the main page

Given I am on page with URL `https://www.epam.com/about`
When I click on element located by `By.xpath(//img[contains(@class,'header__logo-light')])`
Then the page with the URL 'https://www.epam.com/' is loaded


Scenario: 1-9. Check that allows to download report

Given I am on page with URL `https://www.epam.com/about`
When I click on element located by `By.xpath(//span[contains(@class,'desktop') and contains(text(),'DOWNLOAD')])`
