package dev.mvc.brtalk;

import java.util.HashMap;
import java.util.List;

public interface BrtalkProcInter {
    /**
     * 등록
     * 
     * @param talksVO
     * @return
     */
    public int create(BrtalkVO brtalkVO);

    /**
     * 조회
     * @param talksno
     * @return
     */
    public BrtalkVO read(int talk_no);
    
    /**
     * 특정 카테고리의 등록된 글목록
     * @return
     */
    public List<BrtalkVO> list_talk_no_asc();
    
    /**
     * 카테고리별 검색 목록
     * @param hashMap
     * @return
     */
    public List<BrtalkVO> list_by_talk_no_search(HashMap<String, Object> hashMap);

    /**
     * 카테고리별 검색 레코드 갯수
     * @param hashMap
     * @return
     */
    public int search_count(HashMap<String, Object> hashMap);
    
    /**
     * 검색 + 페이징 목록
     * @param map
     * @return
     */
    public List<BrtalkVO> list_by_talk_no_search_paging(HashMap<String, Object> map);
    
    /**
     * 페이지 목록 문자열 생성, Box 형태
     * @param categrpno 카테고리번호
     * @param search_count 검색 갯수
     * @param now_page 현재 페이지, now_page는 1부터 시작
     * @param word 검색어
     * @return
     */
    public String pagingBox(int search_count, int now_page, String talk_word);
    
    /**
     * 패스워드 체크
     * @param map
     * @return
     */
    public int passwd_check(HashMap<String, Object> map);
    
    /**
     * 텍스트 수정용 조회
     * @param talksno
     * @return
     */
    public BrtalkVO read_update_text(int talk_no);

    /**
     * 텍스트 정보 수정
     * @param talksVO
     * @return
     */
    public int update_text(BrtalkVO brtalkVO);

   
    /**
     * 삭제
     * @param talksno
     * @return
     */
    public int delete(int talk_no);
    
    /**
     * 추천수 증가
     * @param talksno
     * @return
     */
    public int update_recom(int talk_no);
    
    /**
     * 조회수 증가
     * @param talksno
     * @return
     */
    public int update_talk_view(int talk_no);
}



