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

public class ChromeTest {

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

	/**
	 * Test Login Logout
	 */
	@Test
	public void testLogin() {
		driver.get("http://172.18.26.211/ocsreports/");
		login();
		logout();
	}


	/**
	 * Test Languages
	 */
	@Test
	public void testLanguage() {
		driver.get("http://172.18.26.211/ocsreports/");
		driver.findElement(By.xpath("//a/span[2]")).click();
		driver.findElement(By.xpath("//div/div/ul/li[3]/a/i")).click();
		login();
		driver.findElement(By.id("menu_settings")).click();
		driver.findElement(By.linkText("Odhlásit")).click();
		driver.findElement(By.xpath("//a/span[2]")).click();
		driver.findElement(By.xpath("//div/div/ul/li[4]/a/i")).click();
		login();
		driver.findElement(By.id("menu_settings")).click();
		driver.findElement(By.linkText("Ausloggen")).click();
		driver.findElement(By.xpath("//a/span[2]")).click();
		driver.findElement(By.xpath("//div/div/ul/li[5]/a/i")).click();
		login();
		driver.findElement(By.id("menu_settings")).click();
		driver.findElement(By.linkText("Salir")).click();
		driver.findElement(By.xpath("//a/span[2]")).click();
		driver.findElement(By.xpath("//div/div/ul/li[6]/a/i")).click();
		login();
		driver.findElement(By.id("menu_settings")).click();
		driver.findElement(By.linkText("Esci")).click();
		driver.findElement(By.xpath("//a/span[2]")).click();
		driver.findElement(By.xpath("//div/div/ul/li[7]/a/i")).click();
		login();
		driver.findElement(By.id("menu_settings")).click();
		driver.findElement(By.linkText("Sair")).click();
		driver.findElement(By.xpath("//a/span[2]")).click();
		driver.findElement(By.xpath("//div/div/ul/li[8]/a/i")).click();
		login();
		driver.findElement(By.id("menu_settings")).click();
		driver.findElement(By.linkText("Wyloguj")).click();
		driver.findElement(By.xpath("//a/span[2]")).click();
		driver.findElement(By.xpath("//div/div/ul/li[9]/a/i")).click();
		login();
		driver.findElement(By.id("menu_settings")).click();
		driver.findElement(By.linkText("Kilďż˝pďż˝s")).click();
		driver.findElement(By.xpath("//a/span[2]")).click();
		driver.findElement(By.xpath("//div/div/ul/li[10]/a/i")).click();
		login();
		driver.findElement(By.id("menu_settings")).click();
		driver.findElement(By.linkText("Sair")).click();
		driver.findElement(By.xpath("//a/span[2]")).click();
		driver.findElement(By.xpath("//div/div/ul/li[11]/a/i")).click();
		login();
		driver.findElement(By.id("menu_settings")).click();
		driver.findElement(By.linkText("Выход")).click();
		driver.findElement(By.xpath("//a/span[2]")).click();
		driver.findElement(By.xpath("//div/div/ul/li[12]/a/i")).click();
		login();
		driver.findElement(By.id("menu_settings")).click();
		driver.findElement(By.linkText("Odjava")).click();
		driver.findElement(By.xpath("//a/span[2]")).click();
		driver.findElement(By.xpath("//div/div/ul/li[2]/a/i")).click();
		login();
		driver.findElement(By.id("menu_settings")).click();
		driver.findElement(By.linkText("Logout")).click();
	}

	/**
	 * Test Onglet à gauche de la page d'accueil
	 */
	@Test
	public void testFirstPage() {
		driver.get("http://172.18.26.211/ocsreports/");
		driver.findElement(By.xpath("//a/span[2]")).click();
		driver.findElement(By.xpath("//div/div/ul/li[2]/a/i")).click();
		login();
		element = driver.findElement(By.linkText("SOFTWARE"));
		actions = new Actions(driver);
		actions.moveToElement(element).click().perform();
		element = driver.findElement(By.linkText("HARDWARE"));
		actions = new Actions(driver);
		actions.moveToElement(element).click().perform();
		element = driver.findElement(By.linkText("OTHER"));
		actions = new Actions(driver);
		actions.moveToElement(element).click().perform();
		element = driver.findElement(By.linkText("MESSAGES"));
		actions = new Actions(driver);
		actions.moveToElement(element).click().perform();
		element = driver.findElement(By.linkText("ACTIVITY"));
		actions = new Actions(driver);
		actions.moveToElement(element).click().perform();
		driver.findElement(By.xpath("//form[@id='console']/div[2]/table/tbody/tr/td/a/span")).click();
		driver.findElement(By.xpath("//form[@id='console']/div[2]/table/tbody/tr/td/a/span")).click();
		logout();
	}

	@Test
	public void testAllcomputer() {
		driver.get("http://172.18.26.211/ocsreports/index.php?first");
		login();
		driver.findElement(By.linkText("All computers")).click();
		new Select(driver.findElement(By.id("select_collist_show_all"))).selectByVisibleText("Select columns to show / hide");
		driver.findElement(By.id("select_collist_show_all")).click();
		new Select(driver.findElement(By.id("select_search_collist_show_all"))).selectByVisibleText("Account info: TAG");
		driver.findElement(By.id("select_search_collist_show_all")).click();
		driver.findElement(By.xpath("//input[@type='search']")).click();
		driver.findElement(By.xpath("//input[@type='search']")).clear();
		driver.findElement(By.xpath("//input[@type='search']")).sendKeys("TEST");
		new Select(driver.findElement(By.name("list_show_all_length"))).selectByVisibleText("10");
		driver.findElement(By.name("list_show_all_length")).click();
		element = driver.findElement(By.linkText("DESKTOP-PMOIBHH"));
		actions = new Actions(driver);
		actions.moveToElement(element).click().perform();
		logout();
	}

	@Test
	public void Hardware() {
		driver.get("http://172.18.26.211/ocsreports/index.php?function=computer&head=1&systemid=3&cat=hardware");
		login();
		new Select(driver.findElement(By.id("select_colaffich_memories"))).selectByVisibleText("Select columns to show / hide");
		driver.findElement(By.id("select_colaffich_memories")).click();
		new Select(driver.findElement(By.id("select_search_colaffich_memories"))).selectByVisibleText("Capacity (MB)");
		driver.findElement(By.id("select_search_colaffich_memories")).click();
		driver.findElement(By.xpath("(//input[@type='search'])[2]")).click();
		driver.findElement(By.xpath("(//input[@type='search'])[2]")).clear();
		driver.findElement(By.xpath("(//input[@type='search'])[2]")).sendKeys("000");
		new Select(driver.findElement(By.id("select_colaffich_rstorages"))).selectByVisibleText("Select columns to show / hide");
		driver.findElement(By.id("select_colaffich_rstorages")).click();
		new Select(driver.findElement(By.id("select_search_colaffich_rstorages"))).selectByVisibleText("Serial number");
		driver.findElement(By.id("select_search_colaffich_rstorages")).click();
		driver.findElement(By.xpath("(//input[@type='search'])[3]")).click();
		driver.findElement(By.xpath("(//input[@type='search'])[3]")).clear();
		driver.findElement(By.xpath("(//input[@type='search'])[3]")).sendKeys("Q");
		new Select(driver.findElement(By.id("select_colaffich_drives"))).selectByVisibleText("Select columns to show / hide");
		driver.findElement(By.id("select_colaffich_drives")).click();
		new Select(driver.findElement(By.id("select_search_colaffich_drives"))).selectByVisibleText("Total (MB)");
		driver.findElement(By.id("select_search_colaffich_drives")).click();
		driver.findElement(By.xpath("(//input[@type='search'])[4]")).click();
		driver.findElement(By.xpath("(//input[@type='search'])[4]")).clear();
		driver.findElement(By.xpath("(//input[@type='search'])[4]")).sendKeys("00");
		new Select(driver.findElement(By.id("select_colaffich_videos"))).selectByVisibleText("Select columns to show / hide");
		driver.findElement(By.id("select_colaffich_videos")).click();
		new Select(driver.findElement(By.id("select_search_colaffich_videos"))).selectByVisibleText("Memory (MB)");
		driver.findElement(By.id("select_search_colaffich_videos")).click();
		new Select(driver.findElement(By.id("select_colaffich_sounds"))).selectByVisibleText("Select columns to show / hide");
		driver.findElement(By.id("select_colaffich_sounds")).click();
		new Select(driver.findElement(By.id("select_search_colaffich_sounds"))).selectByVisibleText("Description");
		driver.findElement(By.id("select_search_colaffich_sounds")).click();
		new Select(driver.findElement(By.id("select_colaffich_controllers"))).selectByVisibleText("Select columns to show / hide");
		driver.findElement(By.id("select_colaffich_controllers")).click();
		new Select(driver.findElement(By.id("select_search_colaffich_controllers"))).selectByVisibleText("Description");
		driver.findElement(By.id("select_search_colaffich_controllers")).click();
		new Select(driver.findElement(By.id("select_colaffich_bios"))).selectByVisibleText("Select columns to show / hide");
		driver.findElement(By.id("select_colaffich_bios")).click();
		new Select(driver.findElement(By.id("select_search_colaffich_bios"))).selectByVisibleText("BIOS Date");
		driver.findElement(By.id("select_search_colaffich_bios")).click();
		logout();
	}

	@Test
	public void testSoftware() {
		driver.get("http://172.18.26.211/ocsreports/index.php?function=computer&head=1&systemid=3&cat=software");
		login();
		new Select(driver.findElement(By.id("select_colaffich_soft"))).selectByVisibleText("Select columns to show / hide");
		driver.findElement(By.id("select_colaffich_soft")).click();
		new Select(driver.findElement(By.id("select_search_colaffich_soft"))).selectByVisibleText("Editor");
		driver.findElement(By.id("select_search_colaffich_soft")).click();
		driver.findElement(By.xpath("//input[@type='search']")).click();
		driver.findElement(By.xpath("//input[@type='search']")).clear();
		driver.findElement(By.xpath("//input[@type='search']")).sendKeys("Google");
		new Select(driver.findElement(By.name("affich_soft_length"))).selectByVisibleText("25");
		driver.findElement(By.name("affich_soft_length")).click();
		logout();
	}

	@Test
	public void testNetwork() {
		driver.get("http://172.18.26.211/ocsreports/index.php?function=computer&head=1&systemid=3&cat=network");
		login();
		new Select(driver.findElement(By.id("select_colaffich_networks"))).selectByVisibleText("Select columns to show / hide");
		driver.findElement(By.id("select_colaffich_networks")).click();
		new Select(driver.findElement(By.id("select_search_colaffich_networks"))).selectByVisibleText("Description");
		driver.findElement(By.id("select_search_colaffich_networks")).click();
		driver.findElement(By.xpath("//input[@type='search']")).click();
		driver.findElement(By.xpath("//input[@type='search']")).clear();
		driver.findElement(By.xpath("//input[@type='search']")).sendKeys("Carte");
		new Select(driver.findElement(By.name("affich_networks_length"))).selectByVisibleText("100");
		driver.findElement(By.name("affich_networks_length")).click();
		new Select(driver.findElement(By.name("affich_networks_length"))).selectByVisibleText("1000");
		driver.findElement(By.name("affich_networks_length")).click();
		element = driver.findElement(By.id("resetaffich_networks"));
		actions = new Actions(driver);
		actions.moveToElement(element).click().perform();
		logout();
	}

	@Test
	public void testDevices() {
		driver.get("http://172.18.26.211/ocsreports/index.php?function=computer&head=1&systemid=3&cat=devices");
		login();
		new Select(driver.findElement(By.id("select_colaffich_monitors"))).selectByVisibleText("Select columns to show / hide");
		driver.findElement(By.id("select_colaffich_monitors")).click();
		new Select(driver.findElement(By.id("select_search_colaffich_monitors"))).selectByVisibleText("Manufactured on (week/year)");
		driver.findElement(By.id("select_search_colaffich_monitors")).click();
		new Select(driver.findElement(By.id("select_colaffich_inputs"))).selectByVisibleText("Select columns to show / hide");
		driver.findElement(By.id("select_colaffich_inputs")).click();
		new Select(driver.findElement(By.id("select_search_colaffich_inputs"))).selectByVisibleText("Caption");
		driver.findElement(By.id("select_search_colaffich_inputs")).click();
		new Select(driver.findElement(By.id("select_colaffich_modems"))).selectByVisibleText("Select columns to show / hide");
		driver.findElement(By.id("select_colaffich_modems")).click();
		new Select(driver.findElement(By.id("select_search_colaffich_modems"))).selectByVisibleText("Model");
		driver.findElement(By.id("select_search_colaffich_modems")).click();
		new Select(driver.findElement(By.name("affich_sim_length"))).selectByVisibleText("25");
		driver.findElement(By.name("affich_sim_length")).click();
		new Select(driver.findElement(By.name("affich_monitors_length"))).selectByVisibleText("50");
		driver.findElement(By.name("affich_monitors_length")).click();
		new Select(driver.findElement(By.name("affich_inputs_length"))).selectByVisibleText("250");
		driver.findElement(By.name("affich_inputs_length")).click();
		new Select(driver.findElement(By.name("affich_printers_length"))).selectByVisibleText("1000");
		driver.findElement(By.name("affich_printers_length")).click();
		driver.findElement(By.xpath("//form[@id='affich_modems']/div")).click();
		new Select(driver.findElement(By.name("affich_modems_length"))).selectByVisibleText("250");
		driver.findElement(By.name("affich_modems_length")).click();
		logout();
	}

	@Test
	public void testConfig() {
		driver.get("http://172.18.26.211/ocsreports/index.php?function=computer&head=1&systemid=3&cat=config");
		login();
		driver.findElement(By.linkText("Edit")).click();
		driver.findElement(By.id("PROLOG_FREQ")).click();
		driver.findElement(By.xpath("(//input[@id='PROLOG_FREQ'])[2]")).click();
		driver.findElement(By.id("INVENTORY_ON_STARTUP")).click();
		driver.findElement(By.xpath("(//input[@id='INVENTORY_ON_STARTUP'])[2]")).click();
		driver.findElement(By.xpath("(//input[@id='INVENTORY_ON_STARTUP'])[3]")).click();
		driver.findElement(By.xpath("(//a[contains(text(),'Inventory')])[2]")).click();
		driver.findElement(By.id("FREQUENCY")).click();
		driver.findElement(By.xpath("(//input[@id='FREQUENCY'])[2]")).click();
		driver.findElement(By.xpath("(//input[@id='FREQUENCY'])[3]")).click();
		driver.findElement(By.xpath("(//input[@id='FREQUENCY'])[4]")).click();
		driver.findElement(By.xpath("(//a[contains(text(),'Deployment')])[2]")).click();
		driver.findElement(By.id("DOWNLOAD_SWITCH")).click();
		driver.findElement(By.xpath("(//input[@id='DOWNLOAD_SWITCH'])[2]")).click();
		driver.findElement(By.xpath("(//input[@id='DOWNLOAD_SWITCH'])[3]")).click();
		driver.findElement(By.id("DOWNLOAD_CYCLE_LATENCY")).click();
		driver.findElement(By.xpath("(//input[@id='DOWNLOAD_CYCLE_LATENCY'])[2]")).click();
		driver.findElement(By.id("DOWNLOAD_FRAG_LATENCY")).click();
		driver.findElement(By.xpath("(//input[@id='DOWNLOAD_FRAG_LATENCY'])[2]")).click();
		driver.findElement(By.xpath("//form[@id='param_affect']/div[2]/div[4]/div[2]/div")).click();
		driver.findElement(By.id("DOWNLOAD_PERIOD_LATENCY")).click();
		driver.findElement(By.xpath("(//input[@id='DOWNLOAD_PERIOD_LATENCY'])[2]")).click();
		driver.findElement(By.id("DOWNLOAD_PERIOD_LENGTH")).click();
		driver.findElement(By.xpath("(//input[@id='DOWNLOAD_PERIOD_LENGTH'])[2]")).click();
		driver.findElement(By.id("DOWNLOAD_TIMEOUT")).click();
		driver.findElement(By.xpath("(//input[@id='DOWNLOAD_TIMEOUT'])[2]")).click();
		driver.findElement(By.linkText("Networks scans")).click();
		driver.findElement(By.id("SNMP_SWITCH")).click();
		driver.findElement(By.xpath("(//input[@id='SNMP_SWITCH'])[2]")).click();
		driver.findElement(By.xpath("(//input[@id='SNMP_SWITCH'])[3]")).click();
		new Select(driver.findElement(By.name("IPDISCOVER"))).selectByVisibleText("NEVER assign again");
		driver.findElement(By.name("IPDISCOVER")).click();
		new Select(driver.findElement(By.name("IPDISCOVER"))).selectByVisibleText("Revert back to standard state");
		driver.findElement(By.name("IPDISCOVER")).click();
		new Select(driver.findElement(By.name("IPDISCOVER"))).selectByVisibleText("172.18.26.0");
		driver.findElement(By.name("IPDISCOVER")).click();
		driver.findElement(By.name("Valid")).click();
		logout();
	}

	@Test
	public void testDeploy() {
		driver.get("http://172.18.26.211/ocsreports/index.php?function=computer&head=1&systemid=3&cat=teledeploy");
		login();
		new Select(driver.findElement(By.id("select_colaffich_packets"))).selectByVisibleText("Select columns to show / hide");
		driver.findElement(By.id("select_colaffich_packets")).click();
		new Select(driver.findElement(By.id("select_colaffich_packets"))).selectByVisibleText("Select columns to show / hide");
		driver.findElement(By.id("select_colaffich_packets")).click();
		new Select(driver.findElement(By.id("select_search_colaffich_packets"))).selectByVisibleText("Priority");
		driver.findElement(By.id("select_search_colaffich_packets")).click();
		new Select(driver.findElement(By.name("affich_packets_length"))).selectByVisibleText("500");
		driver.findElement(By.name("affich_packets_length")).click();
		driver.findElement(By.linkText("Add package")).click();
		new Select(driver.findElement(By.id("DWL_OPT"))).selectByVisibleText("NO");
		driver.findElement(By.id("DWL_OPT")).click();
		new Select(driver.findElement(By.id("DWL_OPT"))).selectByVisibleText("YES");
		driver.findElement(By.id("DWL_OPT")).click();
		new Select(driver.findElement(By.id("DWL_OPT"))).selectByVisibleText("");
		driver.findElement(By.id("DWL_OPT")).click();
		element = driver.findElement(By.linkText("Packages on servers groups"));
		actions = new Actions(driver);
		actions.moveToElement(element).click().perform();
		logout();
	}

	@Test
	public void testMiscellaneous() {
		driver.get("http://172.18.26.211/ocsreports/index.php?function=computer&head=1&systemid=3&cat=other");
		login();
		new Select(driver.findElement(By.name("affich_vm_length"))).selectByVisibleText("50");
		driver.findElement(By.name("affich_vm_length")).click();
		driver.findElement(By.xpath("//div[@id='affich_vm_wrapper']/div/div[3]/div/div/table/thead/tr/th")).click();
		driver.findElement(By.xpath("//div[@id='affich_vm_wrapper']/div/div[3]/div/div/table/thead/tr/th[2]/font")).click();
		driver.findElement(By.xpath("//div[@id='affich_vm_wrapper']/div/div[3]/div")).click();
		driver.findElement(By.xpath("//div[@id='affich_vm_wrapper']/div/div[3]/div/div/table/thead/tr/th[3]")).click();
		driver.findElement(By.xpath("//div[@id='affich_vm_wrapper']/div/div[3]/div/div/table/thead/tr/th[3]")).click();
		driver.findElement(By.xpath("//div[@id='affich_vm_wrapper']/div/div[3]/div/div/table/thead/tr/th[4]/font")).click();
		driver.findElement(By.xpath("//div[@id='affich_vm_wrapper']/div/div[3]/div/div/table/thead/tr/th[5]")).click();
		driver.findElement(By.xpath("//div[@id='affich_vm_wrapper']/div/div[3]/div/div/table/thead/tr/th[6]/font")).click();
		driver.findElement(By.xpath("//div[@id='affich_vm_wrapper']/div/div[3]/div/div/table/thead/tr/th[7]")).click();
		driver.findElement(By.xpath("//div[@id='affich_vm_wrapper']/div/div[3]/div/div/table/thead/tr/th[7]/font")).click();
		driver.findElement(By.xpath("//div[@id='affich_vm_wrapper']/div/div[3]/div/div/table/thead/tr/th[8]")).click();
		driver.findElement(By.xpath("//div[@id='affich_vm_wrapper']/div/div[3]/div/div/table/thead/tr/th[9]/font")).click();
		logout();
	}

	@Test
	public void testMenu() {
		driver.get("http://172.18.26.211/ocsreports/index.php");
		login();
		driver.findElement(By.linkText("All computers")).click();
		driver.findElement(By.linkText("Inventory")).click();
		driver.findElement(By.linkText("Groups")).click();
		driver.findElement(By.linkText("Inventory")).click();
		driver.findElement(By.linkText("Computers per tag")).click();
		driver.findElement(By.linkText("Inventory")).click();
		driver.findElement(By.linkText("All software")).click();
		driver.findElement(By.linkText("Inventory")).click();
		driver.findElement(By.linkText("Search with various criteria")).click();
		driver.findElement(By.linkText("Inventory")).click();
		driver.findElement(By.linkText("Software search")).click();
		driver.findElement(By.linkText("Deployment")).click();
		driver.findElement(By.linkText("Build")).click();
		driver.findElement(By.linkText("Deployment")).click();
		driver.findElement(By.linkText("Activate")).click();
		driver.findElement(By.linkText("Deployment")).click();
		driver.findElement(By.linkText("Assignment rules")).click();
		driver.findElement(By.linkText("Config")).click();
		driver.findElement(By.xpath("(//a[contains(text(),'Config')])[2]")).click();
		driver.findElement(By.linkText("Config")).click();
		driver.findElement(By.linkText("Users")).click();
		driver.findElement(By.linkText("Config")).click();
		driver.findElement(By.linkText("Blacklist")).click();
		driver.findElement(By.linkText("Config")).click();
		driver.findElement(By.linkText("Label file configuration")).click();
		driver.findElement(By.linkText("Config")).click();
		driver.findElement(By.linkText("Agent")).click();
		driver.findElement(By.linkText("Config")).click();
		driver.findElement(By.linkText("Update old account info")).click();
		driver.findElement(By.linkText("Network(s)")).click();
		driver.findElement(By.linkText("IpDiscover")).click();
		driver.findElement(By.linkText("Network(s)")).click();
		driver.findElement(By.linkText("SNMP")).click();
		driver.findElement(By.linkText("Network(s)")).click();
		driver.findElement(By.linkText("Administer")).click();
		driver.findElement(By.linkText("Manage")).click();
		driver.findElement(By.linkText("Registry")).click();
		driver.findElement(By.linkText("Manage")).click();
		driver.findElement(By.linkText("Administrative data")).click();
		driver.findElement(By.linkText("Manage")).click();
		driver.findElement(By.linkText("Duplicates")).click();
		driver.findElement(By.linkText("Manage")).click();
		driver.findElement(By.linkText("Dictionary")).click();
		driver.findElement(By.linkText("Manage")).click();
		driver.findElement(By.linkText("Local import")).click();
		driver.findElement(By.linkText("Plugins")).click();
		driver.findElement(By.linkText("Plugins manager")).click();
		driver.findElement(By.linkText("Information")).click();
		driver.findElement(By.linkText("Log visualization")).click();
		driver.findElement(By.linkText("Information")).click();
		driver.findElement(By.linkText("Statistics")).click();
		driver.findElement(By.linkText("Information")).click();
		driver.findElement(By.linkText("Server information")).click();
		driver.findElement(By.linkText("Help")).click();
		driver.findElement(By.linkText("Wiki")).click();
		driver.findElement(By.linkText("Help")).click();
		driver.findElement(By.linkText("IRC")).click();
		driver.findElement(By.linkText("Help")).click();
		driver.findElement(By.linkText("Q&A")).click();
		driver.findElement(By.linkText("Help")).click();
		driver.findElement(By.linkText("OCS Professional")).click();
		driver.findElement(By.id("menu_settings")).click();
		driver.findElement(By.linkText("My account")).click();
		driver.findElement(By.id("menu_settings")).click();
		driver.findElement(By.linkText("DEBUG")).click();
		logout();
	}

	@Test
	public void testGroups() {
		driver.get("http://172.18.26.211/ocsreports/index.php?function=visu_groups");
		login();
		new Select(driver.findElement(By.id("select_colLIST_GROUPS"))).selectByVisibleText("Select columns to show / hide");
		driver.findElement(By.id("select_colLIST_GROUPS")).click();
		new Select(driver.findElement(By.id("select_search_colLIST_GROUPS"))).selectByVisibleText("GROUP_ID");
		driver.findElement(By.id("select_search_colLIST_GROUPS")).click();
		driver.findElement(By.name("add_static_group")).click();
		driver.findElement(By.name("Reset_modif")).click();
		driver.findElement(By.name("add_static_group")).click();
		driver.findElement(By.id("NAME")).click();
		driver.findElement(By.id("NAME")).clear();
		driver.findElement(By.id("NAME")).sendKeys("Test");
		driver.findElement(By.name("Valid_modif")).click();
		element = driver.findElement(By.linkText("DYNAMIC GROUPS"));
		actions = new Actions(driver);
		actions.moveToElement(element).click().perform();
		new Select(driver.findElement(By.id("select_colLIST_GROUPS"))).selectByVisibleText("Select columns to show / hide");
		driver.findElement(By.id("select_colLIST_GROUPS")).click();
		new Select(driver.findElement(By.id("select_search_colLIST_GROUPS"))).selectByVisibleText("GROUP_ID");
		driver.findElement(By.id("select_search_colLIST_GROUPS")).click();
		element = driver.findElement(By.linkText("REDISTRIBUTION GROUP"));
		actions = new Actions(driver);
		actions.moveToElement(element).click().perform();
		new Select(driver.findElement(By.id("select_colLIST_GROUPS"))).selectByVisibleText("Select columns to show / hide");
		driver.findElement(By.id("select_colLIST_GROUPS")).click();
		new Select(driver.findElement(By.id("select_search_colLIST_GROUPS"))).selectByVisibleText("NBRE");
		driver.findElement(By.id("select_search_colLIST_GROUPS")).click();
		logout();
	}

	@Test
	public void testComputerpertag() {
		driver.get("http://172.18.26.211/ocsreports/index.php?function=visu_repart_tag");
		login();
		new Select(driver.findElement(By.id("TAG_CHOISE"))).selectByVisibleText("Account info: DATE GARANTIE");
		driver.findElement(By.id("TAG_CHOISE")).click();
		new Select(driver.findElement(By.id("TAG_CHOISE"))).selectByVisibleText("Account info: cxwcxwcxwcxw");
		driver.findElement(By.id("TAG_CHOISE")).click();
		new Select(driver.findElement(By.name("repart_tag_length"))).selectByVisibleText("10");
		driver.findElement(By.name("repart_tag_length")).click();
		driver.findElement(By.xpath("//input[@type='search']")).click();
		logout();
	}

	@Test
	public void testAllsoft() {
		driver.get("http://172.18.26.211/ocsreports/index.php?first");
		login();
		driver.findElement(By.linkText("Inventory")).click();
		driver.findElement(By.linkText("All software")).click();
		driver.findElement(By.linkText("G")).click();
		new Select(driver.findElement(By.name("all_soft_length"))).selectByVisibleText("10");
		driver.findElement(By.name("all_soft_length")).click();
		driver.findElement(By.linkText("M")).click();
		driver.findElement(By.xpath("//input[@type='search']")).click();
		driver.findElement(By.xpath("//input[@type='search']")).clear();
		driver.findElement(By.xpath("//input[@type='search']")).sendKeys("Micro");
		driver.findElement(By.linkText("5")).click();
		driver.findElement(By.name("RESET")).click();
		driver.findElement(By.id("NAME_RESTRICT")).click();
		driver.findElement(By.id("NAME_RESTRICT")).clear();
		driver.findElement(By.id("NAME_RESTRICT")).sendKeys("Avast");
		new Select(driver.findElement(By.id("COMPAR"))).selectByVisibleText(">");
		driver.findElement(By.id("COMPAR")).click();
		driver.findElement(By.name("NBRE")).click();
		driver.findElement(By.name("NBRE")).clear();
		driver.findElement(By.name("NBRE")).sendKeys("2");
		driver.findElement(By.name("SUBMIT_FORM")).click();
		logout();

	}

	@Test
	public void Search() {
		driver.get("http://172.18.26.211/ocsreports/index.php?first");
		login();
		driver.findElement(By.linkText("Inventory")).click();
		driver.findElement(By.linkText("Search with various criteria")).click();
		new Select(driver.findElement(By.id("multiSearch"))).selectByVisibleText("Computers: Name");
		driver.findElement(By.id("multiSearch")).click();
		driver.findElement(By.id("InputValue-HARDWARE-NAME-0")).click();
		driver.findElement(By.id("InputValue-HARDWARE-NAME-0")).clear();
		driver.findElement(By.id("InputValue-HARDWARE-NAME-0")).sendKeys("user-win-dev");
		driver.findElement(By.name("Valid-search")).click();
		driver.findElement(By.id("InputValue-HARDWARE-NAME-0")).click();
		driver.findElement(By.id("InputValue-HARDWARE-NAME-0")).clear();
		driver.findElement(By.id("InputValue-HARDWARE-NAME-0")).sendKeys("user-win-dev-pc");
		driver.findElement(By.name("Valid-search")).click();
		new Select(driver.findElement(By.id("multiSearch"))).selectByVisibleText("Computers: Name");
		driver.findElement(By.id("multiSearch")).click();
		driver.findElement(By.xpath("//button[@onclick='pag(\"1\",\"delfield\",\"multisearch\");']")).click();	    
		logout();
	}

	@Test
	public void Softwaresearch() {
		driver.get("http://172.18.26.211/ocsreports/index.php?first");
		login();
		driver.findElement(By.linkText("Inventory")).click();
		driver.findElement(By.linkText("Software search")).click();
		driver.findElement(By.id("logiciel_select")).click();
		new Select(driver.findElement(By.id("logiciel_select"))).selectByVisibleText("Avast Antivirus Gratuit");
		driver.findElement(By.id("logiciel_select")).click();
		driver.findElement(By.id("bouton-submit")).click();
		new Select(driver.findElement(By.id("select_colsearch_soft"))).selectByVisibleText("Select columns to show / hide");
		driver.findElement(By.id("select_colsearch_soft")).click();
		driver.findElement(By.id("logiciel_select")).click();
		new Select(driver.findElement(By.id("logiciel_select"))).selectByVisibleText("");
		driver.findElement(By.id("logiciel_select")).click();
		driver.findElement(By.id("logiciel_text")).click();
		driver.findElement(By.id("logiciel_text")).clear();
		driver.findElement(By.id("logiciel_text")).sendKeys("TeamViewer 13");
		driver.findElement(By.xpath("//body")).click();
		driver.findElement(By.id("bouton-submit")).click();
		logout();
	}

	@Test
	public void Build() {
		driver.get("http://172.18.26.211/ocsreports/index.php?first");
		login();
		driver.findElement(By.linkText("Deployment")).click();
		driver.findElement(By.linkText("Build")).click();
		new Select(driver.findElement(By.id("OS"))).selectByVisibleText("UNIX/LINUX");
		driver.findElement(By.id("OS")).click();
		new Select(driver.findElement(By.id("OS"))).selectByVisibleText("MACOS");
		driver.findElement(By.id("OS")).click();
		driver.findElement(By.id("PROTOCOLE")).click();
		new Select(driver.findElement(By.id("PRIORITY"))).selectByVisibleText("0");
		driver.findElement(By.id("PRIORITY")).click();
		new Select(driver.findElement(By.id("PRIORITY"))).selectByVisibleText("1");
		driver.findElement(By.id("PRIORITY")).click();
		new Select(driver.findElement(By.id("PRIORITY"))).selectByVisibleText("2");
		driver.findElement(By.id("PRIORITY")).click();
		new Select(driver.findElement(By.id("PRIORITY"))).selectByVisibleText("3");
		driver.findElement(By.id("PRIORITY")).click();
		new Select(driver.findElement(By.id("PRIORITY"))).selectByVisibleText("4");
		driver.findElement(By.id("PRIORITY")).click();
		new Select(driver.findElement(By.id("PRIORITY"))).selectByVisibleText("5");
		driver.findElement(By.id("PRIORITY")).click();
		new Select(driver.findElement(By.id("PRIORITY"))).selectByVisibleText("6");
		driver.findElement(By.id("PRIORITY")).click();
		new Select(driver.findElement(By.id("PRIORITY"))).selectByVisibleText("8");
		driver.findElement(By.id("PRIORITY")).click();
		new Select(driver.findElement(By.id("PRIORITY"))).selectByVisibleText("9");
		driver.findElement(By.id("PRIORITY")).click();
		new Select(driver.findElement(By.id("PRIORITY"))).selectByVisibleText("7");
		driver.findElement(By.id("PRIORITY")).click();
		new Select(driver.findElement(By.id("ACTION"))).selectByVisibleText("Store");
		driver.findElement(By.id("ACTION")).click();
		new Select(driver.findElement(By.id("ACTION"))).selectByVisibleText("Launch");
		driver.findElement(By.id("ACTION")).click();
		driver.findElement(By.id("ACTION_INPUT")).click();
		new Select(driver.findElement(By.id("REDISTRIB_USE"))).selectByVisibleText("Yes");
		driver.findElement(By.id("REDISTRIB_USE")).click();
		new Select(driver.findElement(By.id("REDISTRIB_PRIORITY"))).selectByVisibleText("9");
		driver.findElement(By.id("REDISTRIB_PRIORITY")).click();
		new Select(driver.findElement(By.id("REDISTRIB_PRIORITY"))).selectByVisibleText("8");
		driver.findElement(By.id("REDISTRIB_PRIORITY")).click();
		new Select(driver.findElement(By.id("REDISTRIB_PRIORITY"))).selectByVisibleText("7");
		driver.findElement(By.id("REDISTRIB_PRIORITY")).click();
		new Select(driver.findElement(By.id("REDISTRIB_PRIORITY"))).selectByVisibleText("6");
		driver.findElement(By.id("REDISTRIB_PRIORITY")).click();
		new Select(driver.findElement(By.id("REDISTRIB_PRIORITY"))).selectByVisibleText("4");
		driver.findElement(By.id("REDISTRIB_PRIORITY")).click();
		new Select(driver.findElement(By.id("REDISTRIB_PRIORITY"))).selectByVisibleText("3");
		driver.findElement(By.id("REDISTRIB_PRIORITY")).click();
		new Select(driver.findElement(By.id("REDISTRIB_PRIORITY"))).selectByVisibleText("2");
		driver.findElement(By.id("REDISTRIB_PRIORITY")).click();
		new Select(driver.findElement(By.id("REDISTRIB_PRIORITY"))).selectByVisibleText("1");
		driver.findElement(By.id("REDISTRIB_PRIORITY")).click();
		new Select(driver.findElement(By.id("REDISTRIB_PRIORITY"))).selectByVisibleText("0");
		driver.findElement(By.id("REDISTRIB_PRIORITY")).click();
		logout();
	}

	@Test
	public void Activate() {
		driver.get("http://172.18.26.211/ocsreports/index.php?first");
		login();
		driver.findElement(By.linkText("Deployment")).click();
		driver.findElement(By.linkText("Activate")).click();
		new Select(driver.findElement(By.id("SHOW_SELECT"))).selectByVisibleText("Packages created automatically");
		driver.findElement(By.id("SHOW_SELECT")).click();
		new Select(driver.findElement(By.id("SHOW_SELECT"))).selectByVisibleText("");
		driver.findElement(By.id("SHOW_SELECT")).click();
		new Select(driver.findElement(By.id("select_colLIST_PACK"))).selectByVisibleText("Select columns to show / hide");
		driver.findElement(By.id("select_colLIST_PACK")).click();
		driver.findElement(By.xpath("//div[@id='LIST_PACK_wrapper']/div/div[3]/div/div/table/thead/tr/th[3]/font")).click();
		driver.findElement(By.xpath("//div[@id='LIST_PACK_wrapper']/div/div[3]/div/div/table/thead/tr/th[4]/font")).click();
		driver.findElement(By.xpath("//div[@id='LIST_PACK_wrapper']/div/div[3]/div/div/table/thead/tr/th[5]/font")).click();
		driver.findElement(By.xpath("//div[@id='LIST_PACK_wrapper']/div/div[3]/div/div/table/thead/tr/th[2]/font")).click();
		driver.findElement(By.xpath("//div[@id='LIST_PACK_wrapper']/div/div[3]/div/div/table/thead/tr/th/font")).click();
		driver.findElement(By.id("checkboxALL")).click();
		driver.findElement(By.id("checkboxALL")).click();
		// ERROR: Caught exception [ERROR: Unsupported command [doubleClick | id=checkboxALL | ]]
		new Select(driver.findElement(By.name("LIST_PACK_length"))).selectByVisibleText("25");
		driver.findElement(By.name("LIST_PACK_length")).click();
		new Select(driver.findElement(By.name("LIST_PACK_length"))).selectByVisibleText("10");
		driver.findElement(By.name("LIST_PACK_length")).click();
		element = driver.findElement(By.linkText("Deleted packages"));
		actions = new Actions(driver);
		actions.moveToElement(element).click().perform();
		logout();
	}

	@Test
	public void Assignmentrules() {
		driver.get("http://172.18.26.211/ocsreports/index.php?first");
		login();
		driver.findElement(By.linkText("Deployment")).click();
		driver.findElement(By.linkText("Assignment rules")).click();
		new Select(driver.findElement(By.id("select_colDOWNLOAD_AFFECT_RULES"))).selectByVisibleText("Select columns to show / hide");
		driver.findElement(By.id("select_colDOWNLOAD_AFFECT_RULES")).click();
		new Select(driver.findElement(By.id("select_search_colDOWNLOAD_AFFECT_RULES"))).selectByVisibleText("RULE_NAME");
		driver.findElement(By.id("select_search_colDOWNLOAD_AFFECT_RULES")).click();
		new Select(driver.findElement(By.name("DOWNLOAD_AFFECT_RULES_length"))).selectByVisibleText("100");
		driver.findElement(By.name("DOWNLOAD_AFFECT_RULES_length")).click();
		driver.findElement(By.xpath("//div[@id='DOWNLOAD_AFFECT_RULES_wrapper']/div/div[3]/div/div/table/thead/tr/th")).click();
		driver.findElement(By.name("NEW_RULE")).click();
		new Select(driver.findElement(By.id("CFIELD_1"))).selectByVisibleText("@IP");
		driver.findElement(By.id("CFIELD_1")).click();
		new Select(driver.findElement(By.id("CFIELD_1"))).selectByVisibleText("IPSUBNET");
		driver.findElement(By.id("CFIELD_1")).click();
		new Select(driver.findElement(By.id("CFIELD_1"))).selectByVisibleText("DOMAIN");
		driver.findElement(By.id("CFIELD_1")).click();
		new Select(driver.findElement(By.id("CFIELD_1"))).selectByVisibleText("USER");
		driver.findElement(By.id("CFIELD_1")).click();
		new Select(driver.findElement(By.id("OP_1"))).selectByVisibleText("<>");
		driver.findElement(By.id("OP_1")).click();
		new Select(driver.findElement(By.id("OP_1"))).selectByVisibleText("LIKE");
		driver.findElement(By.id("OP_1")).click();
		new Select(driver.findElement(By.id("COMPTO_1"))).selectByVisibleText("@IP");
		driver.findElement(By.id("COMPTO_1")).click();
		new Select(driver.findElement(By.id("COMPTO_1"))).selectByVisibleText("IPSUBNET");
		driver.findElement(By.id("COMPTO_1")).click();
		new Select(driver.findElement(By.id("COMPTO_1"))).selectByVisibleText("DOMAIN");
		driver.findElement(By.id("COMPTO_1")).click();
		new Select(driver.findElement(By.id("COMPTO_1"))).selectByVisibleText("USER");
		driver.findElement(By.id("COMPTO_1")).click();
		driver.findElement(By.linkText("Cancel")).click();
		logout();
	}

	@Test
	public void Config() {
		driver.get("http://172.18.26.211/ocsreports/index.php?first");
		login();
		driver.findElement(By.linkText("Config")).click();
		driver.findElement(By.xpath("(//a[contains(text(),'Config')])[2]")).click();
		driver.findElement(By.xpath("(//input[@id='FREQUENCY'])[2]")).click();
		driver.findElement(By.xpath("(//input[@id='FREQUENCY'])[3]")).click();
		driver.findElement(By.id("FREQUENCY")).click();
		driver.findElement(By.xpath("(//input[@id='INVENTORY_DIFF'])[2]")).click();
		driver.findElement(By.id("INVENTORY_DIFF")).click();
		driver.findElement(By.xpath("(//input[@id='INVENTORY_TRANSACTION'])[2]")).click();
		driver.findElement(By.xpath("//form[@id='modif_onglet']/div[2]/div[3]/div[2]/div")).click();
		driver.findElement(By.id("INVENTORY_TRANSACTION")).click();
		driver.findElement(By.id("INVENTORY_WRITE_DIFF")).click();
		driver.findElement(By.xpath("(//input[@id='INVENTORY_WRITE_DIFF'])[2]")).click();
		driver.findElement(By.id("INVENTORY_SESSION_ONLY")).click();
		driver.findElement(By.xpath("(//input[@id='INVENTORY_SESSION_ONLY'])[2]")).click();
		driver.findElement(By.xpath("(//input[@id='INVENTORY_CACHE_ENABLED'])[2]")).click();
		driver.findElement(By.id("INVENTORY_CACHE_ENABLED")).click();
		driver.findElement(By.name("Valid")).click();
		driver.findElement(By.name("Reset")).click();
		element= driver.findElement(By.linkText("Server"));
		actions = new Actions(driver);
		actions.moveToElement(element).click().perform();
		element=driver.findElement(By.linkText("IpDiscover"));
		actions = new Actions(driver);
		actions.moveToElement(element).click().perform();
		element=driver.findElement(By.linkText("Deployment"));
		actions = new Actions(driver);
		actions.moveToElement(element).click().perform();
		element=driver.findElement(By.linkText("Redistribution Servers"));
		actions = new Actions(driver);
		actions.moveToElement(element).click().perform();
		element=driver.findElement(By.linkText("Groups"));
		actions = new Actions(driver);
		actions.moveToElement(element).click().perform();
		element=driver.findElement(By.linkText("Registry"));
		actions = new Actions(driver);
		actions.moveToElement(element).click().perform();
		element=driver.findElement(By.linkText("Inventory files"));
		actions = new Actions(driver);
		actions.moveToElement(element).click().perform();
		element=driver.findElement(By.linkText("Filters"));
		actions = new Actions(driver);
		actions.moveToElement(element).click().perform();
		element=driver.findElement(By.linkText("Webservice"));
		actions = new Actions(driver);
		actions.moveToElement(element).click().perform();
		element=driver.findElement(By.linkText("Interface"));
		actions = new Actions(driver);
		actions.moveToElement(element).click().perform();
		element=driver.findElement(By.linkText("LDAP configuration"));
		actions = new Actions(driver);
		actions.moveToElement(element).click().perform();
		element=driver.findElement(By.linkText("SNMP"));
		actions = new Actions(driver);
		actions.moveToElement(element).click().perform();
		element=driver.findElement(By.linkText("WOL"));
		actions = new Actions(driver);
		actions.moveToElement(element).click().perform();
		element=driver.findElement(By.linkText("Plugins"));
		actions = new Actions(driver);
		actions.moveToElement(element).click().perform();
		logout();
	}

	/**
	 * Test Users + test left menu
	 */
	@Test
	public void Users() {
		driver.get("http://172.18.26.211/ocsreports/index.php?first");
		login();
		driver.findElement(By.linkText("Config")).click();
		driver.findElement(By.linkText("Users")).click();
		new Select(driver.findElement(By.id("select_colTAB_ACCESSLVL"))).selectByVisibleText("Select columns to show / hide");
		driver.findElement(By.id("select_colTAB_ACCESSLVL")).click();
		new Select(driver.findElement(By.id("select_search_colTAB_ACCESSLVL"))).selectByVisibleText("Last name");
		driver.findElement(By.id("select_search_colTAB_ACCESSLVL")).click();
		driver.findElement(By.xpath("//input[@type='search']")).click();
		driver.findElement(By.xpath("//input[@type='search']")).clear();
		driver.findElement(By.xpath("//input[@type='search']")).sendKeys("admin");
		element = driver.findElement(By.linkText("Profiles"));
		actions = new Actions(driver);
		actions.moveToElement(element).click().perform();
		element = driver.findElement(By.linkText("Create user"));
		actions = new Actions(driver);
		actions.moveToElement(element).click().perform();
		element = driver.findElement(By.linkText("Create profile"));
		actions = new Actions(driver);
		actions.moveToElement(element).click().perform();
		logout();
	}

	@Test
	public void UsersProfiles() {
		driver.get("http://172.18.26.211/ocsreports/index.php?function=admin_profiles");
		login();
		driver.findElement(By.xpath("//div[@id='ms_profiles_wrapper']/div/div[3]/div/div/table/thead/tr/th[2]")).click();
		driver.findElement(By.xpath("//div[@id='ms_profiles_wrapper']/div/div[3]/div/div/table/thead/tr/th[2]")).click();
		driver.findElement(By.xpath("//div[@id='ms_profiles_wrapper']/div/div[3]/div/div/table/thead/tr/th[3]")).click();
		driver.findElement(By.xpath("//div[@id='ms_profiles_wrapper']/div/div[3]/div/div/table/thead/tr/th[3]")).click();
		driver.findElement(By.name("check[admin]")).click();
		driver.findElement(By.name("check[dde_teledeploy]")).click();
		driver.findElement(By.linkText("dde_teledeploy")).click();
		logout();
	}

	@Test
	public void CreateUser() {
		driver.get("http://172.18.26.211/ocsreports/index.php?function=admin_add_user");
		login();
		driver.findElement(By.id("ID")).click();
		driver.findElement(By.id("ID")).clear();
		driver.findElement(By.id("ID")).sendKeys("test");
		new Select(driver.findElement(By.id("ACCESSLVL"))).selectByVisibleText("RO");
		driver.findElement(By.id("ACCESSLVL")).click();
		new Select(driver.findElement(By.id("ACCESSLVL"))).selectByVisibleText("Local administrators");
		driver.findElement(By.id("ACCESSLVL")).click();
		new Select(driver.findElement(By.id("ACCESSLVL"))).selectByVisibleText("teledeploy requesters");
		driver.findElement(By.id("ACCESSLVL")).click();
		new Select(driver.findElement(By.id("ACCESSLVL"))).selectByVisibleText("Super administrators");
		driver.findElement(By.id("ACCESSLVL")).click();
		driver.findElement(By.id("FIRSTNAME")).click();
		driver.findElement(By.id("FIRSTNAME")).clear();
		driver.findElement(By.id("FIRSTNAME")).sendKeys("n");
		driver.findElement(By.id("LASTNAME")).click();
		driver.findElement(By.id("LASTNAME")).clear();
		driver.findElement(By.id("LASTNAME")).sendKeys("t");
		driver.findElement(By.id("EMAIL")).click();
		driver.findElement(By.id("EMAIL")).clear();
		driver.findElement(By.id("EMAIL")).sendKeys("nt@ffx.com");
		driver.findElement(By.id("COMMENTS")).click();
		driver.findElement(By.id("COMMENTS")).clear();
		driver.findElement(By.id("COMMENTS")).sendKeys("test");
		driver.findElement(By.id("PASSWORD")).click();
		driver.findElement(By.id("PASSWORD")).clear();
		driver.findElement(By.id("PASSWORD")).sendKeys("test");
		driver.findElement(By.name("Reset_modif")).click();
		driver.findElement(By.id("PASSWORD")).click();
		driver.findElement(By.id("PASSWORD")).click();
		logout();
	}

	@Test
	public void CreateProfile() {
		driver.get("http://172.18.26.211/ocsreports/index.php?function=admin_add_profile");
		login();
		driver.findElement(By.id("name")).click();
		driver.findElement(By.id("name")).clear();
		driver.findElement(By.id("name")).sendKeys("admin");
		driver.findElement(By.id("label")).click();
		driver.findElement(By.id("label")).clear();
		driver.findElement(By.id("label")).sendKeys("Admin");
		new Select(driver.findElement(By.id("duplicate_profile"))).selectByVisibleText("teledeploy requesters");
		driver.findElement(By.id("duplicate_profile")).click();
		new Select(driver.findElement(By.id("duplicate_profile"))).selectByVisibleText("Local administrators");
		driver.findElement(By.id("duplicate_profile")).click();
		new Select(driver.findElement(By.id("duplicate_profile"))).selectByVisibleText("RO");
		driver.findElement(By.id("duplicate_profile")).click();
		driver.findElement(By.id("create-profile")).click();
		new Select(driver.findElement(By.id("duplicate_profile"))).selectByVisibleText("Super administrators");
		driver.findElement(By.id("duplicate_profile")).click();
		driver.findElement(By.xpath("//input[@value='Cancel']")).click();
		logout();
	}


	@Test
	public void Blacklist() {
		driver.get("http://172.18.26.211/ocsreports/index.php?first");
		login();
		driver.findElement(By.linkText("Config")).click();
		driver.findElement(By.linkText("Blacklist")).click();
		new Select(driver.findElement(By.name("blacklist_macaddresses_length"))).selectByVisibleText("50");
		driver.findElement(By.name("blacklist_macaddresses_length")).click();
		driver.findElement(By.id("checkboxALL")).click();
		driver.findElement(By.id("checkboxALL")).click();
		driver.findElement(By.id("check1")).click();
		driver.findElement(By.id("check2")).click();
		driver.findElement(By.id("check3")).click();
		driver.findElement(By.xpath("//input[@type='search']")).click();
		driver.findElement(By.xpath("//input[@type='search']")).clear();
		driver.findElement(By.xpath("//input[@type='search']")).sendKeys("09:");
		driver.findElement(By.id("check8")).click();
		element = driver.findElement(By.linkText("Serial number"));
		actions = new Actions(driver);
		actions.moveToElement(element).click().perform();
		element = driver.findElement(By.linkText("Subnet"));
		actions = new Actions(driver);
		actions.moveToElement(element).click().perform();
		element = driver.findElement(By.linkText("Add"));
		actions = new Actions(driver);
		actions.moveToElement(element).click().perform();
		logout();
	}

	@Test
	public void LabelFileConf() {
		driver.get("http://172.18.26.211/ocsreports/index.php?first");
		login();
		driver.findElement(By.linkText("Config")).click();
		driver.findElement(By.linkText("Label file configuration")).click();
		driver.findElement(By.name("lbl")).click();
		driver.findElement(By.name("lbl")).clear();
		driver.findElement(By.name("lbl")).sendKeys("test");
		driver.findElement(By.name("Valid_modif")).click();
		driver.findElement(By.name("lbl")).click();
		driver.findElement(By.name("lbl")).clear();
		driver.findElement(By.name("lbl")).sendKeys("");
		driver.findElement(By.name("Valid_modif")).click();
		driver.findElement(By.name("Reset_modif")).click();
		logout();
	}

	@Test
	public void Agent() {
		driver.get("http://172.18.26.211/ocsreports/index.php?first");
		login();
		driver.findElement(By.linkText("Config")).click();
		driver.findElement(By.linkText("Agent")).click();
		driver.findElement(By.xpath("//div[@id='upload_client_wrapper']/div/div[3]/div/div/table/thead/tr/th")).click();
		new Select(driver.findElement(By.name("upload_client_length"))).selectByVisibleText("100");
		driver.findElement(By.name("upload_client_length")).click();
		driver.findElement(By.name("ADD_FILE")).click();
		logout();
	}


	@Test
	public void IpDiscover() {
		driver.get("http://172.18.26.211/ocsreports/index.php?first");
		login();
		driver.findElement(By.linkText("Network(s)")).click();
		driver.findElement(By.linkText("IpDiscover")).click();
		new Select(driver.findElement(By.id("DPT_CHOISE"))).selectByVisibleText("---Show all subnets---");
		driver.findElement(By.id("DPT_CHOISE")).click();
		new Select(driver.findElement(By.id("DPT_CHOISE"))).selectByVisibleText("---unknown---");
		driver.findElement(By.id("DPT_CHOISE")).click();
		new Select(driver.findElement(By.id("select_colIPDISCOVER"))).selectByVisibleText("Select columns to show / hide");
		driver.findElement(By.id("select_colIPDISCOVER")).click();
		new Select(driver.findElement(By.id("DPT_CHOISE"))).selectByVisibleText("");
		driver.findElement(By.id("DPT_CHOISE")).click();
		logout();
	}


	@Test
	public void Administer() {
		driver.get("http://172.18.26.211/ocsreports/index.php?first");
		login();
		driver.findElement(By.linkText("Network(s)")).click();
		driver.findElement(By.linkText("Administer")).click();
		element = driver.findElement(By.linkText("Manage TYPES"));
		actions = new Actions(driver);
		actions.moveToElement(element).click().perform();
		element = driver.findElement(By.linkText("Manage SNMP communities"));
		actions = new Actions(driver);
		actions.moveToElement(element).click().perform();
		logout();
	}

	@Test
	public void Registy() {
		driver.get("http://172.18.26.211/ocsreports/index.php?first");
		login();
		driver.findElement(By.linkText("Manage")).click();
		driver.findElement(By.linkText("Registry")).click();
		element = driver.findElement(By.linkText("New data"));
		actions = new Actions(driver);
		actions.moveToElement(element).click().perform();
		logout();
	}

	@Test
	public void Dictionary() {
		driver.get("http://172.18.26.211/ocsreports/index.php?first");
		login();
		driver.findElement(By.linkText("Manage")).click();
		driver.findElement(By.linkText("Dictionary")).click();
		element = driver.findElement(By.linkText("New"));
		actions = new Actions(driver);
		actions.moveToElement(element).click().perform();
		element = driver.findElement(By.linkText("Ignored"));
		actions = new Actions(driver);
		actions.moveToElement(element).click().perform();
		element = driver.findElement(By.linkText("Unchanged"));
		actions = new Actions(driver);
		actions.moveToElement(element).click().perform();
		logout();
	}

	@Test
	public void LocalImport() {
		driver.get("http://172.18.26.211/ocsreports/index.php?first");
		login();
		driver.findElement(By.linkText("Manage")).click();
		driver.findElement(By.linkText("Local import")).click();
		element = driver.findElement(By.linkText("Manual Entry"));
		actions = new Actions(driver);
		actions.moveToElement(element).click().perform();
		logout();
	}

	@Test
	public void PluginsManager() {
		driver.get("http://172.18.26.211/ocsreports/index.php?first");
		login();
		driver.findElement(By.linkText("Plugins")).click();
		driver.findElement(By.linkText("Plugins manager")).click();
		new Select(driver.findElement(By.id("select_colshow_all_plugins"))).selectByVisibleText("Select columns to show / hide");
		driver.findElement(By.id("select_colshow_all_plugins")).click();
		new Select(driver.findElement(By.name("show_all_plugins_length"))).selectByVisibleText("250");
		driver.findElement(By.name("show_all_plugins_length")).click();
		driver.findElement(By.id("checkboxALL")).click();
		driver.findElement(By.xpath("//div[@id='show_all_plugins_wrapper']/div/div[3]/div/div/table/thead/tr/th[2]")).click();
		driver.findElement(By.xpath("//div[@id='show_all_plugins_wrapper']/div/div[3]/div/div/table/thead/tr/th[3]/font")).click();
		driver.findElement(By.xpath("//div[@id='show_all_plugins_wrapper']/div/div[3]/div/div/table/thead/tr/th[4]")).click();
		driver.findElement(By.xpath("//div[@id='show_all_plugins_wrapper']/div/div[3]/div/div/table")).click();
		driver.findElement(By.xpath("//div[@id='show_all_plugins_wrapper']/div/div[3]/div/div/table/thead/tr/th[6]/font")).click();
		logout();
	}

	@Test
	public void Stats() {
		driver.get("http://172.18.26.211/ocsreports/index.php?function=stats");
		login();
		driver.findElement(By.linkText("Other")).click();
		new Select(driver.findElement(By.id("CHOICE_OP"))).selectByVisibleText("OS Versions");
		element = driver.findElement(By.id("CHOICE_OP"));
		actions = new Actions(driver);
		actions.moveToElement(element).click().perform();
		new Select(driver.findElement(By.id("CHOICE_OP"))).selectByVisibleText("Agent Versions");
		element = driver.findElement(By.id("CHOICE_OP"));
		actions = new Actions(driver);
		actions.moveToElement(element).click().perform();
		new Select(driver.findElement(By.id("CHOICE_OP"))).selectByVisibleText("top soft");
		element = driver.findElement(By.id("CHOICE_OP"));
		actions = new Actions(driver);
		actions.moveToElement(element).click().perform();
		new Select(driver.findElement(By.id("CHOICE_TOP"))).selectByVisibleText("20");
		element = driver.findElement(By.id("CHOICE_TOP"));
		actions = new Actions(driver);
		actions.moveToElement(element).click().perform();
		new Select(driver.findElement(By.id("CHOICE_TOP"))).selectByVisibleText("5");
		element = driver.findElement(By.id("CHOICE_TOP"));
		actions = new Actions(driver);
		actions.moveToElement(element).click().perform();
		new Select(driver.findElement(By.id("CHOICE_TOP"))).selectByVisibleText("");
		element = driver.findElement(By.id("CHOICE_TOP"));
		actions = new Actions(driver);
		actions.moveToElement(element).click().perform();
		logout();
	}
	
	@Test
	public void Help() {
	    driver.get("http://172.18.26.211/ocsreports/index.php?first");
	    login();
	    driver.findElement(By.linkText("Help")).click();
	    driver.findElement(By.linkText("Wiki")).click();
	    driver.findElement(By.linkText("Help")).click();
	    driver.findElement(By.linkText("IRC")).click();
	    driver.findElement(By.linkText("Help")).click();
	    driver.findElement(By.linkText("Q&A")).click();
	    driver.findElement(By.linkText("Help")).click();
	    driver.findElement(By.linkText("OCS Professional")).click();
	    logout();
	}
	
	@Test
	public void MyAccount() {
	    driver.get("http://172.18.26.211/ocsreports/index.php?first");
	    login();
	    driver.findElement(By.id("menu_settings")).click();
	    driver.findElement(By.linkText("My account")).click();
	    driver.findElement(By.id("ID")).click();
	    new Select(driver.findElement(By.id("ACCESSLVL"))).selectByVisibleText("teledeploy requesters");
	    driver.findElement(By.id("ACCESSLVL")).click();
	    new Select(driver.findElement(By.id("ACCESSLVL"))).selectByVisibleText("Administrators");
	    driver.findElement(By.id("ACCESSLVL")).click();
	    new Select(driver.findElement(By.id("ACCESSLVL"))).selectByVisibleText("Local administrators");
	    driver.findElement(By.id("ACCESSLVL")).click();
	    driver.findElement(By.id("pass")).click();
	    new Select(driver.findElement(By.id("ACCESSLVL"))).selectByVisibleText("RO");
	    driver.findElement(By.id("ACCESSLVL")).click();
	    new Select(driver.findElement(By.id("ACCESSLVL"))).selectByVisibleText("Super administrators");
	    driver.findElement(By.id("ACCESSLVL")).click();
	    driver.findElement(By.name("Valid_modif")).click();
	    driver.findElement(By.name("Reset_modif")).click();
	    logout();
	}
	
	@Test
	public void DEBUG() {
	    driver.get("http://172.18.26.211/ocsreports/index.php?first");
	    login();
	    driver.findElement(By.id("menu_settings")).click();
	    driver.findElement(By.xpath("//div[@id='ocs-navbar']/ul[2]/li/ul/li[2]/a/font")).click();
	    new Select(driver.findElement(By.name("MODE"))).selectByVisibleText("DEBUG");
	    driver.findElement(By.name("MODE")).click();
	    new Select(driver.findElement(By.name("MODE"))).selectByVisibleText("LANGUAGE");
	    driver.findElement(By.name("MODE")).click();
	    new Select(driver.findElement(By.name("MODE"))).selectByVisibleText("MAINTENANCE");
	    driver.findElement(By.name("MODE")).click();
	    new Select(driver.findElement(By.name("MODE"))).selectByVisibleText("FUSER");
	    driver.findElement(By.name("MODE")).click();
	    new Select(driver.findElement(By.name("MODE"))).selectByVisibleText("NOCACHE");
	    driver.findElement(By.name("MODE")).click();
	    new Select(driver.findElement(By.name("MODE"))).selectByVisibleText("NORMAL");
	    driver.findElement(By.name("MODE")).click();
	    driver.findElement(By.xpath("//div[2]")).click();
	    driver.findElement(By.name("Valid_modif")).click();
	    driver.findElement(By.name("Reset_modif")).click();
	    logout();
	}

	@AfterClass
	public static void closeBrowser() {
		driver.quit();
	}

	public static void login() {
		driver.findElement(By.id("LOGIN")).click();
		driver.findElement(By.id("LOGIN")).clear();
		driver.findElement(By.id("LOGIN")).sendKeys("admin");
		driver.findElement(By.id("PASSWD")).click();
		driver.findElement(By.id("PASSWD")).clear();
		driver.findElement(By.id("PASSWD")).sendKeys("admin");
		driver.findElement(By.id("btn-logon")).click();
	}

	public static void logout() {
		driver.findElement(By.id("menu_settings")).click();
		driver.findElement(By.linkText("Logout")).click();
	}

}

