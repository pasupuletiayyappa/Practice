global class ScheduleOrgLimits implements Schedulable {
    global void execute(SchedulableContext SC) {
        OrgLimitsHandler handler = new OrgLimitsHandler(); 
    }
 }