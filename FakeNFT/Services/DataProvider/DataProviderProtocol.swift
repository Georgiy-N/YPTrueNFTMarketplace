import Foundation

protocol DataProviderProtocol {
    func fetchNFTCollection(completion: @escaping (Result<NFTCollections, Error>) -> Void)
    func fetchUsersRating(completion: @escaping (Result<UsersResponse, Error>) -> Void)
    func fetchUserID(userId: String, completion: @escaping (Result<UserResponse, Error>) -> Void)
    func fetchProfile(completion: @escaping (Result<Profile, Error>) -> Void)
    func fetchUsersNFT(userId: String?, nftsId: [String]?, completion: @escaping (Result<NFTCards, Error>) -> Void)
    func fetchCurrencies(completion: @escaping (Result<Currencies, Error>) -> Void)
    func changeProfile(profile: Profile, completion: @escaping (Result<Profile, Error>) -> Void)
    func fetchUsers(completion: @escaping (Result<[User], Error>) -> Void)
    func fetchOrder(completion: @escaping (Result<Order, Error>) -> Void)
    func putNewProfile(profile: Profile, completion: @escaping (Result<Void, Error>) -> Void)
    func putNewOrder(order: Order, completion: @escaping (Result<Order, Error>) -> Void)
    func fetchPaymentCurrency(currencyId: Int, completion: @escaping (Result<OrderPayment, Error>) -> Void)
}
