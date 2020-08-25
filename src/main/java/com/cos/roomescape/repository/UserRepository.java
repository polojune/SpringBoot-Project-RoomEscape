package com.cos.roomescape.repository;

import java.util.Optional;

import com.cos.roomescape.model.User;

public interface UserRepository {
     public void save(User user);
     public User login(User user);
     public User findByUsername(String username);
     public Optional<User> findByProviderAndProviderId(String provider,String providerId);
}