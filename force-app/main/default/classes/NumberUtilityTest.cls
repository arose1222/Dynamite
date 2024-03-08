@isTest
private class NumberUtilityTest {
    
    @isTest static void testIsPositive() {
        // Positive number test
        System.assert(NumberUtility.isPositive(5), 'The method should return true for positive numbers.');
        
        // Negative number test
        System.assert(!NumberUtility.isPositive(-5), 'The method should return false for negative numbers.');
        
        // Zero test
        System.assert(!NumberUtility.isPositive(0), 'The method should return false for zero.');
    }
}