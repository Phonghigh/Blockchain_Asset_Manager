pragma solidity ^0.8.0;

/// @title ERC-20 Token Standard Interface
/// @notice Interface chuẩn cho token ERC-20

interface IERC20 {
    /// @notice Trả về tổng cung token
    /// @return Tổng số token đang tồn tại
    function totalSupply() external view returns (uint256);

    /// @notice Trả về số dư token của một địa chỉ
    /// @param account Địa chỉ cần truy vấn số dư
    /// @return Số token trong tài khoản
    function balanceOf(address account) external view returns (uint256);

    /// @notice Chuyển token tới địa chỉ khác
    /// @param to Địa chỉ nhận token
    /// @param amount Số lượng token muốn chuyển
    /// @return Thành công hoặc thất bại của giao dịch
    function transfer(address to, uint256 amount) external returns (bool);

    /// @notice Trả về số token được phép chuyển bởi `spender` từ `owner`
    /// @param owner Chủ sở hữu token
    /// @param spender Người được cấp quyền
    /// @return Số token được phép tiêu
    function allowance(address owner, address spender) external view returns (uint256);

    /// @notice Cấp quyền cho địa chỉ khác sử dụng token của bạn
    /// @param spender Địa chỉ được cấp quyền
    /// @param amount Số lượng token được cấp quyền
    /// @return Thành công hoặc thất bại của thao tác
    function approve(address spender, uint256 amount) external returns (bool);

    /// @notice Chuyển token từ người khác mà bạn được cấp quyền
    /// @param from Địa chỉ gửi
    /// @param to Địa chỉ nhận
    /// @param amount Số lượng token muốn chuyển
    /// @return Thành công hoặc thất bại của giao dịch
    function transferFrom(address from, address to, uint256 amount) external returns (bool);

    /// @notice Sự kiện khi token được chuyển
    event Transfer(address indexed from, address indexed to, uint256 value);

    /// @notice Sự kiện khi cấp quyền cho người khác sử dụng token
    event Approval(address indexed owner, address indexed spender, uint256 value);
}
