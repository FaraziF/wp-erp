<?php
//namespace Scenario;


class ExpensesCest
{
    public function _before(AcceptanceTester $I)
    {
    }

    // tests
    public function createExpense(\Step\Acceptance\AllSteps $I)
    {
        $I->loginAsAdmin();
        $I->previewTransactions();
            $I->click('Expenses');
            $I->wait(5);
            $I->moveMouseOver('#erp-accounting');
            $I->click(['css' => '.wperp-selected-option']);
            $I->click('Create Expense');
            $I->wait(5);
            $I->click('//form/div/div/div/div/div/div[2]');
            $I->click('//div[3]/ul/li/span');
            

    }
}
