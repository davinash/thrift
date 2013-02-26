/**
 * Gemfire service apis
 */ 
 
namespace java gemfire.server.thrift
namespace py gemfire

/**
 * A THGemfireInternalError exception as of now is 
 * general purpose error message 
 * will need to improve on the various new
 * exceptions messages.
 */
exception THGemfireInternalError {
  1: optional string message
}


service THGemfireService {
  /**
   * insert a key value pair into a gemfire region.
   */
  void put
  (
    /** regionName to put the entry */
    1: required binary regionName,
    
    /**  key as of now only accepting as a string*/
    2: required binary keyName,      
    
    /** value will of the form of map in which first is the key 
      * second is value 
      */    
    3: required map<binary, binary>  value
  ) throws (1: THGemfireInternalError gError)
  
  /**
   * insert a key value pair into a gemfire region.
   */
  map<binary, binary> get
  (
    /** regionName to put the entry */
    1: required binary regionName,
    /**  key as of now only accepting as a string*/
    2: required binary keyName
  ) 
  throws (1: THGemfireInternalError gError)
  
  
} /* service THBaseService ends here */