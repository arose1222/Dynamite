@isTest
private class CalculatorTest {
    @isTest static void testAddNumbers() {
        // Test data setup
        Integer a = 5;
        Integer b = 3;

        // Call the method to test
        Integer result = Calculator.addNumbers(a, b);

        // Verify the result
        System.assertEquals(8, result, 'The addNumbers method did not return the expected result.');
    }
}