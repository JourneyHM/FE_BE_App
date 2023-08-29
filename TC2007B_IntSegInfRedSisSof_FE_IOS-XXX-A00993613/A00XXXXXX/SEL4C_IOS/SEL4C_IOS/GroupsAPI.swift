//
// GroupsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class GroupsAPI {
    /**

     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func groupsCreate(body: Group, completion: @escaping ((_ data: Group?,_ error: Error?) -> Void)) {
        groupsCreateWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - POST /groups/

     - BASIC:
       - type: http
       - name: basicAuth
     - API Key:
       - type: apiKey sessionid (QUERY)
       - name: cookieAuth
     - examples: [{contentType=application/json, example={
  "name" : "name",
  "url" : "http://example.com/aeiou"
}}]
     - parameter body: (body)  

     - returns: RequestBuilder<Group> 
     */
    open class func groupsCreateWithRequestBuilder(body: Group) -> RequestBuilder<Group> {
        let path = "/groups/"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Group>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
    /**

     - parameter url2: (form)  
     - parameter name2: (form)  
     - parameter url: (form)  
     - parameter name: (form)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func groupsCreate(url2: String, name2: String, url: String, name: String, completion: @escaping ((_ data: Group?,_ error: Error?) -> Void)) {
        groupsCreateWithRequestBuilder(url2: url2, name2: name2, url: url, name: name).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - POST /groups/

     - BASIC:
       - type: http
       - name: basicAuth
     - API Key:
       - type: apiKey sessionid (QUERY)
       - name: cookieAuth
     - examples: [{contentType=application/json, example={
  "name" : "name",
  "url" : "http://example.com/aeiou"
}}]
     - parameter url2: (form)  
     - parameter name2: (form)  
     - parameter url: (form)  
     - parameter name: (form)  

     - returns: RequestBuilder<Group> 
     */
    open class func groupsCreateWithRequestBuilder(url2: String, name2: String, url: String, name: String) -> RequestBuilder<Group> {
        let path = "/groups/"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: {})
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Group>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }


    /**

     - parameter _id: (path) A unique integer value identifying this group. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func groupsDestroy(_id: Int, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        groupsDestroyWithRequestBuilder(_id: _id).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     - DELETE /groups/{id}/

     - BASIC:
       - type: http
       - name: basicAuth
     - API Key:
       - type: apiKey sessionid (QUERY)
       - name: cookieAuth
     - parameter _id: (path) A unique integer value identifying this group. 

     - returns: RequestBuilder<Void> 
     */
    open class func groupsDestroyWithRequestBuilder(_id: Int) -> RequestBuilder<Void> {
        var path = "/groups/{id}/"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**

     - parameter page: (query) A page number within the paginated result set. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func groupsList(page: Int? = nil, completion: @escaping ((_ data: PaginatedGroupList?,_ error: Error?) -> Void)) {
        groupsListWithRequestBuilder(page: page).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /groups/

     - BASIC:
       - type: http
       - name: basicAuth
     - API Key:
       - type: apiKey sessionid (QUERY)
       - name: cookieAuth
     - examples: [{contentType=application/json, example={
  "next" : "http://api.example.org/accounts/?page=4",
  "previous" : "http://api.example.org/accounts/?page=2",
  "count" : 123,
  "results" : [ {
    "name" : "name",
    "url" : "http://example.com/aeiou"
  }, {
    "name" : "name",
    "url" : "http://example.com/aeiou"
  } ]
}}]
     - parameter page: (query) A page number within the paginated result set. (optional)

     - returns: RequestBuilder<PaginatedGroupList> 
     */
    open class func groupsListWithRequestBuilder(page: Int? = nil) -> RequestBuilder<PaginatedGroupList> {
        let path = "/groups/"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "page": page?.encodeToJSON()
        ])


        let requestBuilder: RequestBuilder<PaginatedGroupList>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**

     - parameter _id: (path) A unique integer value identifying this group. 
     - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func groupsPartialUpdate(_id: Int, body: PatchedGroup? = nil, completion: @escaping ((_ data: Group?,_ error: Error?) -> Void)) {
        groupsPartialUpdateWithRequestBuilder(_id: _id, body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - PATCH /groups/{id}/

     - BASIC:
       - type: http
       - name: basicAuth
     - API Key:
       - type: apiKey sessionid (QUERY)
       - name: cookieAuth
     - examples: [{contentType=application/json, example={
  "name" : "name",
  "url" : "http://example.com/aeiou"
}}]
     - parameter _id: (path) A unique integer value identifying this group. 
     - parameter body: (body)  (optional)

     - returns: RequestBuilder<Group> 
     */
    open class func groupsPartialUpdateWithRequestBuilder(_id: Int, body: PatchedGroup? = nil) -> RequestBuilder<Group> {
        var path = "/groups/{id}/"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Group>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PATCH", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
    /**

     - parameter _id: (path) A unique integer value identifying this group. 
     - parameter url2: (form)  (optional)
     - parameter name2: (form)  (optional)
     - parameter url: (form)  (optional)
     - parameter name: (form)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func groupsPartialUpdate(_id: Int, url2: String? = nil, name2: String? = nil, url: String? = nil, name: String? = nil, completion: @escaping ((_ data: Group?,_ error: Error?) -> Void)) {
        groupsPartialUpdateWithRequestBuilder(_id: _id, url2: url2, name2: name2, url: url, name: name).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - PATCH /groups/{id}/

     - BASIC:
       - type: http
       - name: basicAuth
     - API Key:
       - type: apiKey sessionid (QUERY)
       - name: cookieAuth
     - examples: [{contentType=application/json, example={
  "name" : "name",
  "url" : "http://example.com/aeiou"
}}]
     - parameter _id: (path) A unique integer value identifying this group. 
     - parameter url2: (form)  (optional)
     - parameter name2: (form)  (optional)
     - parameter url: (form)  (optional)
     - parameter name: (form)  (optional)

     - returns: RequestBuilder<Group> 
     */
    open class func groupsPartialUpdateWithRequestBuilder(_id: Int, url2: String? = nil, name2: String? = nil, url: String? = nil, name: String? = nil) -> RequestBuilder<Group> {
        var path = "/groups/{id}/"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: {})
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Group>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PATCH", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**

     - parameter _id: (path) A unique integer value identifying this group. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func groupsRetrieve(_id: Int, completion: @escaping ((_ data: Group?,_ error: Error?) -> Void)) {
        groupsRetrieveWithRequestBuilder(_id: _id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /groups/{id}/

     - BASIC:
       - type: http
       - name: basicAuth
     - API Key:
       - type: apiKey sessionid (QUERY)
       - name: cookieAuth
     - examples: [{contentType=application/json, example={
  "name" : "name",
  "url" : "http://example.com/aeiou"
}}]
     - parameter _id: (path) A unique integer value identifying this group. 

     - returns: RequestBuilder<Group> 
     */
    open class func groupsRetrieveWithRequestBuilder(_id: Int) -> RequestBuilder<Group> {
        var path = "/groups/{id}/"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Group>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**

     - parameter body: (body)  
     - parameter _id: (path) A unique integer value identifying this group. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func groupsUpdate(body: Group, _id: Int, completion: @escaping ((_ data: Group?,_ error: Error?) -> Void)) {
        groupsUpdateWithRequestBuilder(body: body, _id: _id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - PUT /groups/{id}/

     - BASIC:
       - type: http
       - name: basicAuth
     - API Key:
       - type: apiKey sessionid (QUERY)
       - name: cookieAuth
     - examples: [{contentType=application/json, example={
  "name" : "name",
  "url" : "http://example.com/aeiou"
}}]
     - parameter body: (body)  
     - parameter _id: (path) A unique integer value identifying this group. 

     - returns: RequestBuilder<Group> 
     */
    open class func groupsUpdateWithRequestBuilder(body: Group, _id: Int) -> RequestBuilder<Group> {
        var path = "/groups/{id}/"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Group>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
    /**

     - parameter url2: (form)  
     - parameter name2: (form)  
     - parameter url: (form)  
     - parameter name: (form)  
     - parameter _id: (path) A unique integer value identifying this group. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func groupsUpdate(url2: String, name2: String, url: String, name: String, _id: Int, completion: @escaping ((_ data: Group?,_ error: Error?) -> Void)) {
        groupsUpdateWithRequestBuilder(url2: url2, name2: name2, url: url, name: name, _id: _id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - PUT /groups/{id}/

     - BASIC:
       - type: http
       - name: basicAuth
     - API Key:
       - type: apiKey sessionid (QUERY)
       - name: cookieAuth
     - examples: [{contentType=application/json, example={
  "name" : "name",
  "url" : "http://example.com/aeiou"
}}]
     - parameter url2: (form)  
     - parameter name2: (form)  
     - parameter url: (form)  
     - parameter name: (form)  
     - parameter _id: (path) A unique integer value identifying this group. 

     - returns: RequestBuilder<Group> 
     */
    open class func groupsUpdateWithRequestBuilder(url2: String, name2: String, url: String, name: String, _id: Int) -> RequestBuilder<Group> {
        var path = "/groups/{id}/"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: {})
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Group>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
