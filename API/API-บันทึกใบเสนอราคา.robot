*** Setting ***
Library    Selenium2Library
Library    RequestsLibrary
Library    Collections
Library    String
*** Variables ***

*** Test Cases ***
Request Create Quotation successfully
    Save new Quotation successfully    /quotation
*** Keywords ***
Save new Quotation successfully
    [Arguments]    ${Path}
    Create Session    venus    http://venus:3000
    ${new Quotation}=    Create New Quotation
    ${resp}=    Post request    venus    ${PATH}    ${new Quotation}
    Log     ${resp.content}
    Should be equal as strings    ${resp.status_code}    200


Create New Quotation
    ${new Quotation}=    Catenate    SEPARATOR=
    ...       {
    ...        "doc_no":"S01-QHV6009-0017",
    ...        "doc_date":"",
    ...        "bill_type":0,
    ...        "ar_id":234245,
    ...        "ar_code":"45040",
    ...        "ar_name":"สาธิต",
    ...        "ar_bill_address":"xxx",
    ...        "ar_telephone":"123456",
    ...        "sale_id":4343435,
    ...        "sale_code":"56163",
    ...        "sale_name":"เอกชัย จันต๊ะไพร",
    ...        "depart_code":"",
    ...        "ref_no":"",
    ...        "tax_type":1,
    ...        "is_confirm":0,
    ...        "bill_status":0,
    ...        "credit_day":1,
    ...        "due_date":"20/09/2017",
    ...        "expire_day":1,
    ...        "expire_date":"20/09/2017",
    ...        "delivery_day":1,
    ...        "delivery_date":"20/09/2017",
    ...        "validity":1,
    ...        "customer_assert":1,
    ...        "assert_status":0,
    ...        "contract_id":0,
    ...        "contract_code":"",
    ...        "is_condition_send":1,
    ...        "my_description":"Test",
    ...        "sum_item_amount":250,
    ...        "dis_count_word":"",
    ...        "dis_count_amount":0,
    ...        "after_discount_amount":250,
    ...        "before_tax_amount":233,
    ...        "tax_amount":17,
    ...        "total_amount":250,
    ...        "net_amount":250,
    ...        "tax_rate":7,
    ...        "approve_id":0,
    ...        "approve_code":"",
    ...        "approve_date_time":"",
    ...        "project_id":0,
    ...        "project_code":"",
    ...        "allocate_id":0,
    ...        "allocate_code":"",
    ...        "is_cancel":0,
    ...        "creator_id":0,
    ...        "creator_code":"tom",
    ...        "create_date_time":"",
    ...        "Subs": [
    ...        {
    ...          "item_id": 1,
    ...          "item_code": "2120250",
    ...          "item_name": "กาวยาแนว",
    ...          "qty": 1,
    ...          "remain_qty": 1,
    ...          "price": 250,
    ...          "dis_count_word_sub": "",
    ...          "dis_count_amount_sub": 0,
    ...          "unit_code": "กระป๋อง",
    ...          "item_amount": 250,
    ...          "item_description": "Test",
    ...          "is_cancel": 0,
    ...          "packing_rate_1": 1,
    ...          "packing_rate_2": 1,
    ...          "line_number":0
    ...          }
    ...        ]
    ...       }
    [return]    ${new Quotation}"
