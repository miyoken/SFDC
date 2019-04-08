public with sharing class DeleteWorkBatch implements Database.Batchable<sObject>, Database.Stateful {
    public Database.QueryLocator start(Database.BatchableContext BC) {
        String query = '';
        query = 'select id from Work__c where CreatedDate < YESTERDAY';
        Database.QueryLocator q = Database.getQueryLocator(query);
        return q;
    }

    public void execute(Database.BatchableContext BC, List<Work__c> scope) {
        delete scope;
    }

    public void finish(Database.BatchableContext BC) {
    }
}