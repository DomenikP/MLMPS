package jetbrains.mps.internal.make.runtime.script;

/*Generated by MPS */

import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;

public class LoggingProgressStrategy extends AbstractProgressStrategy {
  private static Logger LOG = LogManager.getLogger(LoggingProgressStrategy.class.getPackage().getName());
  private static String TOTAL = "\u221e";
  private String lastInfo = null;
  private LoggingProgressStrategy.Log logger = new LoggingProgressStrategy.Log() {
    @Override
    public void error(String text) {
      LoggingProgressStrategy.LOG.error(text);
    }
    @Override
    public void warning(String text) {
      LoggingProgressStrategy.LOG.warn(text);
    }
    @Override
    public void info(String text) {
      LoggingProgressStrategy.LOG.info(text);
    }
  };
  public LoggingProgressStrategy() {
    super(TOTAL);
  }
  /**
   * For testing only.
   */
  public LoggingProgressStrategy(LoggingProgressStrategy.Log log) {
    this();
    this.logger = log;
  }
  @Override
  protected void begunWork(AbstractProgressStrategy.Work wrk) {
    if (lastInfo != null) {
      logger.info(lastInfo);
      lastInfo = null;
    }
    logger.info(wrk.fullName() + " -- started");
  }
  @Override
  protected void advancedWork(AbstractProgressStrategy.Work wrk) {
    if (lastInfo != null) {
      logger.info(lastInfo);
      lastInfo = null;
    }
    double p = wrk.doneRatio();
    int prg = (int) Math.ceil(p * 100);
    if (prg == 100) {
      this.lastInfo = wrk.fullName() + " -- done " + (prg) + "%";
    } else {
      logger.info(wrk.fullName() + " -- done " + (prg) + "%");
    }
  }
  @Override
  protected void finishedWork(AbstractProgressStrategy.Work wrk) {
    if (lastInfo != null) {
      logger.info(lastInfo);
      lastInfo = null;
    }
    logger.info(wrk.fullName() + " -- finished");
  }
  public static interface Log {
    public void error(String text);
    public void warning(String text);
    public void info(String text);
  }
}
