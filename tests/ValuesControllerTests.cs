using System;
using System.Linq;
using test_app.Controllers;
using Xunit;

namespace tests
{
    public class ValuesControllerTests
    {
        [Fact]
        public void ASillyTest()
        {
            var subject = new ValuesController();
            var result = subject.Get();
            Assert.True(result.ToList().Count == 2);
        }
    }
}
