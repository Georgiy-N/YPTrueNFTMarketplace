import Foundation

protocol DataProviderProtocol {
    func fetchNFTCollection(completion: @escaping (Result<NFTCollections, Error>) -> Void)
    func fetchUsersRating(sortingOption: SortingOption, page: Int, completion: @escaping (Result<[User], Error>) -> Void)
    func fetchUserID(userId: String, completion: @escaping (Result<UserResponse, Error>) -> Void)
    func fetchProfile(completion: @escaping (Result<Profile, Error>) -> Void)
    func fetchUsersNFT(userId: String?, nftsId: [String]?, completion: @escaping (Result<NFTCards, Error>) -> Void)
    func fetchCurrencies(completion: @escaping (Result<Currencies, Error>) -> Void)
}
