public class TableManager {
  public ArrayList<TableObject> tableArray;

  public TableManager() {
    tableArray = new ArrayList<TableObject>();
  }

  public void add(TableObject table) {
    tableArray.add(table);
  }

  public void clear() {
    tableArray.clear();
  }
}

public class TableObject {
  public String name;
  public ArrayList<String> columnNames;
  private String foreignKey;

  public TableObject() {
    columnNames = new ArrayList<String>();
  }

  public void setName(String name) {
    this.name = name;
  }

  public void addColumnName(String name) {
    columnNames.add(name);
  }

  public String getName() {
    return name;
  }

  public void setForeignKey(String key) {
    foreignKey = key;
  }

  public String getForeignKey() {
    return foreignKey;
  }

  public boolean isFK(String name) {
    return foreignKey.equals(name);
  }
  
  public boolean hasFK(){
     return foreignKey != null; 
  }
}
