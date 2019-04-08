global class DeleteWorkBatchScheduler Implements Schedulable {
    private final Integer BATCH_SIZE = 10000;
    
    global void execute(SchedulableContext ctx) {
        DeleteWorkBatch batch = new DeleteWorkBatch();
        Database.executeBatch(batch , BATCH_SIZE);
    }
}