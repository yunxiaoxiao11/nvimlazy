import argparse
import logging
from logging.handlers import RotatingFileHandler
from pathlib import Path
from typing import Optional, Union


def setup_logger(
    name: str = __name__,
    log_file: Optional[Union[str, Path]] = None,
    console_level: int = logging.INFO,
    file_level: int = logging.ERROR,
    max_bytes: int = 10 * 1024 * 1024,  # 10MB
    backup_count: int = 3,
    fmt: str = "%(asctime)s - %(name)s - %(levelname)s - %(message)s",
) -> logging.Logger:
    """
    配置并返回一个多功能的日志记录器。

    Args:
        name (str): 日志记录器名称（通常用 __name__）。
        log_file (str/Path): 日志文件路径。若为 None，则不写入文件。
        console_level (int): 控制台日志级别（默认 INFO）。
        file_level (int): 文件日志级别（默认 DEBUG）。
        max_bytes (int): 日志文件最大字节数（默认 10MB）。
        backup_count (int): 保留的备份日志文件数（默认 3）。
        fmt (str): 日志格式字符串。

    Returns:
        logging.Logger: 配置好的日志记录器。
    """
    logger = logging.getLogger(name)
    logger.setLevel(logging.DEBUG)  # 设置全局最低级别

    # 避免重复添加处理器（防止多次调用时重复日志）
    if logger.hasHandlers():
        logger.handlers.clear()

    # 控制台处理器
    console_handler = logging.StreamHandler()
    console_handler.setLevel(console_level)
    console_handler.setFormatter(logging.Formatter(fmt))
    logger.addHandler(console_handler)

    # 文件处理器（如果指定了日志文件）
    if log_file:
        log_file = Path(log_file)
        log_file.parent.mkdir(parents=True, exist_ok=True)  # 自动创建目录

        file_handler = RotatingFileHandler(log_file, maxBytes=max_bytes, backupCount=backup_count, encoding="utf-8")
        file_handler.setLevel(file_level)
        file_handler.setFormatter(logging.Formatter(fmt))
        logger.addHandler(file_handler)

    return logger


def parse_args():
    parser = argparse.ArgumentParser(allow_abbrev=False, description="示例脚本：参数解析与日志打印")

    parser.add_argument("--input", "-i", type=str, help="输入文件路径")
    parser.add_argument("--output", "-o", type=str, default="output.txt", help="输出文件路径")
    parser.add_argument("--verbose", "-v", action="store_true", help="启用详细日志")

    args, _ = parser.parse_known_args()

    for key, value in vars(args).items():
        print(f"{key}: {value}")

    return args


if __name__ == "__main__":
    args = parse_args()
    logger = setup_logger()
