using System.Web.Mvc;

namespace TestBedjQuery.Controllers
{
	public class HomeController : Controller
	{
		public ActionResult Index()
		{
			//ViewBag.Message = "Welcome to 'The Heap'";

			return View();
		}

		public ActionResult About()
		{
			return View();
		}
	}
}
