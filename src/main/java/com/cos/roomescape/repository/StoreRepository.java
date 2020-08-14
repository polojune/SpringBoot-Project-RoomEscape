import com.cos.roomescape.dto.ReserveStoreRespDto;
import com.cos.roomescape.model.Store;

public interface StoreRepository {
    public List<Store> findAll();
    public Store findById(int storeId);
    public List<ReserveStoreRespDto> findByLocation(String location);
    public List<ReserveStoreRespDto> findByAllLocation();
}
