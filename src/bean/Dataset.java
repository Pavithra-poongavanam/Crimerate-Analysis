package bean;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table (name="dataset")
public class Dataset 
{
	int id;
	String state,crimes;
	String year_2001,year_2002,year_2003,year_2004,year_2005,year_2006,year_2007,year_2008,
	year_2009,year_2010,year_2011,year_2012;

public Dataset() 
{
}

@Id
public int getId() {
	return id;
}


public void setId(int id) {
	this.id = id;
}


public String getState() {
	return state;
}

public void setState(String state) {
	this.state = state;
}

public String getCrimes() {
	return crimes;
}

public void setCrimes(String crimes) {
	this.crimes = crimes;
}

public String getYear_2001() {
	return year_2001;
}

public void setYear_2001(String year_2001) {
	this.year_2001 = year_2001;
}

public String getYear_2002() {
	return year_2002;
}

public void setYear_2002(String year_2002) {
	this.year_2002 = year_2002;
}

public String getYear_2003() {
	return year_2003;
}

public void setYear_2003(String year_2003) {
	this.year_2003 = year_2003;
}

public String getYear_2004() {
	return year_2004;
}

public void setYear_2004(String year_2004) {
	this.year_2004 = year_2004;
}

public String getYear_2005() {
	return year_2005;
}

public void setYear_2005(String year_2005) {
	this.year_2005 = year_2005;
}

public String getYear_2006() {
	return year_2006;
}

public void setYear_2006(String year_2006) {
	this.year_2006 = year_2006;
}

public String getYear_2007() {
	return year_2007;
}

public void setYear_2007(String year_2007) {
	this.year_2007 = year_2007;
}

public String getYear_2008() {
	return year_2008;
}

public void setYear_2008(String year_2008) {
	this.year_2008 = year_2008;
}

public String getYear_2009() {
	return year_2009;
}

public void setYear_2009(String year_2009) {
	this.year_2009 = year_2009;
}

public String getYear_2010() {
	return year_2010;
}

public void setYear_2010(String year_2010) {
	this.year_2010 = year_2010;
}

public String getYear_2011() {
	return year_2011;
}

public void setYear_2011(String year_2011) {
	this.year_2011 = year_2011;
}

public String getYear_2012() {
	return year_2012;
}

public void setYear_2012(String year_2012) {
	this.year_2012 = year_2012;
}



}
