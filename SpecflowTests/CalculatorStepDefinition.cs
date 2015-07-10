using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using TechTalk.SpecFlow;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Specflow
{
    [Binding]
    public class CalculatorStepDefinition
    {
        List<int> numbers = new List<int>();
        int? sum = null;
        // For additional details on SpecFlow step definitions see http://go.specflow.org/doc-stepdef

        [BeforeScenario] 
        public void InitializeScenario()
        {
            numbers.Clear();
            sum = null;
        }

        [Given("I have entered (.*) into the calculator")]
        public void GivenIHaveEnteredSomethingIntoTheCalculator(int number)
        {
            numbers.Add(number);
        }

        [When("I press add")]
        public void WhenIPressAdd()
        {
            sum = numbers.Sum();
        }

        [Then("the result should be (.*) on the screen")]
        public void ThenTheResultShouldBe(int result)
        {
            Assert.AreEqual(result, sum, String.Format("Expected {0} & Actual {1}", result, sum));
        }
    }
}
