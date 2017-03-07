using Microsoft.AspNetCore.Mvc;

namespace Test.Controllers
{
    public class TestController : Controller
    {
        public IActionResult Get()
        {
            return Ok("Test");
        }
    }
}