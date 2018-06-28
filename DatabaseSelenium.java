import java.util.concurrent.TimeUnit;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.Select;
public class DatabaseSelenium {
	private static WebDriver driver;
	WebElement element;
	Actions actions;
	@BeforeClass
	public static void openBrowser() {
		ChromeOptions options = new ChromeOptions();
		options.addArguments("--headless");
		driver = new ChromeDriver(options);
		driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
	}
	
	 @Test
        public void testDatabase() {
                driver.get("http://172.18.26.216/ocsreports/");
                driver.findElement(By.id("name")).click();
                driver.findElement(By.id("name")).clear();
                driver.findElement(By.id("name")).sendKeys("root");
                driver.findElement(By.id("database")).click();
                driver.findElement(By.id("database")).clear();
                driver.findElement(By.id("database")).sendKeys("ocs_test_jenkins");
                driver.findElement(By.id("host")).click();
                driver.findElement(By.id("host")).clear();
                driver.findElement(By.id("host")).sendKeys("localhost");
                driver.findElement(By.name("Valid_INSTALL")).click();
                driver.findElement(By.linkText("Click here to enter OCS-NG GUI")).click();
        }

	@AfterClass
	public static void closeBrowser() {
		driver.quit();
	}
}
