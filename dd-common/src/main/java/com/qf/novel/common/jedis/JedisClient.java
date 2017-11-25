package com.qf.novel.common.jedis;

import java.util.List;

public interface JedisClient {

	String set(String key, String value);
	String get(String key);
	Long del(String key);
	Boolean exists(String key);
	Long expire(String key, int seconds);//过期时间
	Long ttl(String key);
	Long incr(String key);//步长
	Long hset(String key, String field, String value);
	String hget(String key, String field);
	Long hdel(String key, String... field);
	Boolean hexists(String key, String field);
	List<String> hvals(String key);

}
