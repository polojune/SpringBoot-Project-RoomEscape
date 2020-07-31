package com.cos.roomescape.repository;

import com.cos.roomescape.model.User;

public interface UserRepository {
     public void save(User user);
     public User login(User user);
     public User findByUsername(String user);
}