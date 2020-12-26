package com.oijoa.dao;

import java.util.List;
import com.oijoa.domain.Notice;

public interface NoticeDao {
  List<Notice> findAll(String keyword) throws Exception;
  Notice findByNoticeNo(int noticeNo) throws Exception;
  int insert(Notice notice) throws Exception;
}


