package com.oijoa.service;

import java.util.List;
import com.oijoa.domain.Notice;

public interface NoticeService {

  List<Notice> list() throws Exception;
  int add(Notice notice) throws Exception;
  Notice get(int noticeNo) throws Exception;
}
