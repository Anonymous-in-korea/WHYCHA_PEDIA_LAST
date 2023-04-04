package com.whychapedia.service;

import java.util.List;

public interface MovieOttService {

	List<Integer> selectOttTop(int ott_id, int limit);

}
