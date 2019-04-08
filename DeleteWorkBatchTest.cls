@isTest
Private Class DeleteWorkBatchTest {
    static testMethod void test1() {
        Test.startTest();
        DeleteWorkBatch bat = new DeleteWorkBatch();
        Database.executeBatch( bat, 1);
        System.schedule('TestScheduledApex', '0 0 * * * ?', new DeleteWorkBatchScheduler());
        Test.stopTest();    
    }
}