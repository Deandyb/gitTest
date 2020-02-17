package util;

import java.sql.PreparedStatement;

public interface ParamSeter {
	public void setValue(PreparedStatement stmt);
}
