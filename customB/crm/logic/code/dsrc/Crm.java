import java.math.*;
import java.sql.*;
import java.util.*;
import org.dom4j.*;
import com.justep.system.data.*;

public class Crm {


	public static void delete(String danjuID){
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("danjuID", danjuID);
		KSQL.executeUpdate("DELETE FROM CU_DDCB P WHERE P.fDJBH=:danjuID", params, "/custom/crm/data", null);
	}

	public static void move(String customID,String clerkID){
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("customID", customID);
		params.put("clerkID", clerkID);
		KSQL.executeUpdate("UPDATE  CU_KHXX P SET P.fGZR=:clerkID WHERE P=:customID", params, "/custom/crm/data", null);
	}

	public static String personID(String personName){
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("personName", personName);
		Table table = KSQL.select("SELECT p as ID FROM CU_ZYXX p WHERE p.fZYMC = :personName", params, "/custom/crm/data", null);
		String result = table.iterator().next().getString("ID");
		return result;
	}

	public static void oneMove(String customID,String clerkID){
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("customID", customID);
		params.put("clerkID", clerkID);
		KSQL.executeUpdate("UPDATE  CU_KHXX P SET P.fBYYI=P.fGZR WHERE P=:customID", params, "/custom/crm/data", null);
		KSQL.executeUpdate("UPDATE  CU_KHXX P SET P.fGZR=:clerkID WHERE P=:customID", params, "/custom/crm/data", null);
	}

	public static void twoMove(String customID){
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("customID", customID);
		KSQL.executeUpdate("UPDATE  CU_KHXX P SET P.P.fBYYI=null WHERE P=:customID", params, "/custom/crm/data", null);
	}

	public static void price(String productID,BigDecimal price){
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("productID", productID);
		params.put("price", price);
		KSQL.executeUpdate("UPDATE  CU_CPXX P SET P.fJG=:price WHERE P=:productID", params, "/custom/crm/data", null);
	}

	public static void print(java.sql.Date date,String type){
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("date", date);
		params.put("type", type);
		KSQL.executeUpdate("UPDATE CU_DDCB P SET P.fBZE='已打印' WHERE P.fDJRQ=:date AND P.fYSLX=:type AND P.fBYSI='1'", params, "/custom/crm/data", null);
	}
}