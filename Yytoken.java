/* A single scanner token. */

public class Yytoken {
  public boolean is_seperator = false;
  public boolean is_int = false;
  public boolean is_token = false;
  public boolean is_key = false;

  public char seperator;
  public String token = null;
  public int value = 0;
  public int line = 0;

  /* Default for range seperator. */
  public Yytoken(char c, int line) {
    is_seperator = true;
    seperator = c;
    this.line = line;
  }

  public Yytoken(int value, int line) {
    is_int = true;
    this.value = value;
    this.line = line;
  }

  public Yytoken(String token, int line) {
    is_token = true;
    this.token = token;
    this.line = line;
  }

  public Yytoken(String token, int line, boolean key) {
    is_key = key;
    this.token = token;
    this.line = line;
  }

  public String toString() {
    if (is_seperator) return line + ":Range Token(" + seperator + ")";
    else if (is_int) return line + ":Int Token(" + value + ")";
    else if (is_key) return line + ":Keyword(" + value + ")";
    else return line + ":Token(" + token + ")";
  }
}
