﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Bu kod araç tarafından oluşturuldu.
//     Çalışma Zamanı Sürümü:4.0.30319.42000
//
//     Bu dosyada yapılacak değişiklikler yanlış davranışa neden olabilir ve
//     kod yeniden oluşturulursa kaybolur.
// </auto-generated>
//------------------------------------------------------------------------------

namespace gps_device.tracker_service {
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="tracker_service.WebService1Soap")]
    public interface WebService1Soap {
        
        // CODEGEN: http://tempuri.org/ ad alanındaki lat öğe adı sıfırlanabilir olarak işaretlenmediğinden, ileti sözleşmesi oluşturuluyor
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/get_Device_Data", ReplyAction="*")]
        gps_device.tracker_service.get_Device_DataResponse get_Device_Data(gps_device.tracker_service.get_Device_DataRequest request);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/get_Device_Data", ReplyAction="*")]
        System.Threading.Tasks.Task<gps_device.tracker_service.get_Device_DataResponse> get_Device_DataAsync(gps_device.tracker_service.get_Device_DataRequest request);
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class get_Device_DataRequest {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="get_Device_Data", Namespace="http://tempuri.org/", Order=0)]
        public gps_device.tracker_service.get_Device_DataRequestBody Body;
        
        public get_Device_DataRequest() {
        }
        
        public get_Device_DataRequest(gps_device.tracker_service.get_Device_DataRequestBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://tempuri.org/")]
    public partial class get_Device_DataRequestBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(Order=0)]
        public int signal_id;
        
        [System.Runtime.Serialization.DataMemberAttribute(Order=1)]
        public int cihaz_id;
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=2)]
        public string lat;
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=3)]
        public string lng;
        
        [System.Runtime.Serialization.DataMemberAttribute(Order=4)]
        public System.DateTime signal_time;
        
        public get_Device_DataRequestBody() {
        }
        
        public get_Device_DataRequestBody(int signal_id, int cihaz_id, string lat, string lng, System.DateTime signal_time) {
            this.signal_id = signal_id;
            this.cihaz_id = cihaz_id;
            this.lat = lat;
            this.lng = lng;
            this.signal_time = signal_time;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class get_Device_DataResponse {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="get_Device_DataResponse", Namespace="http://tempuri.org/", Order=0)]
        public gps_device.tracker_service.get_Device_DataResponseBody Body;
        
        public get_Device_DataResponse() {
        }
        
        public get_Device_DataResponse(gps_device.tracker_service.get_Device_DataResponseBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute()]
    public partial class get_Device_DataResponseBody {
        
        public get_Device_DataResponseBody() {
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface WebService1SoapChannel : gps_device.tracker_service.WebService1Soap, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class WebService1SoapClient : System.ServiceModel.ClientBase<gps_device.tracker_service.WebService1Soap>, gps_device.tracker_service.WebService1Soap {
        
        public WebService1SoapClient() {
        }
        
        public WebService1SoapClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public WebService1SoapClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public WebService1SoapClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public WebService1SoapClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        gps_device.tracker_service.get_Device_DataResponse gps_device.tracker_service.WebService1Soap.get_Device_Data(gps_device.tracker_service.get_Device_DataRequest request) {
            return base.Channel.get_Device_Data(request);
        }
        
        public void get_Device_Data(int signal_id, int cihaz_id, string lat, string lng, System.DateTime signal_time) {
            gps_device.tracker_service.get_Device_DataRequest inValue = new gps_device.tracker_service.get_Device_DataRequest();
            inValue.Body = new gps_device.tracker_service.get_Device_DataRequestBody();
            inValue.Body.signal_id = signal_id;
            inValue.Body.cihaz_id = cihaz_id;
            inValue.Body.lat = lat;
            inValue.Body.lng = lng;
            inValue.Body.signal_time = signal_time;
            gps_device.tracker_service.get_Device_DataResponse retVal = ((gps_device.tracker_service.WebService1Soap)(this)).get_Device_Data(inValue);
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        System.Threading.Tasks.Task<gps_device.tracker_service.get_Device_DataResponse> gps_device.tracker_service.WebService1Soap.get_Device_DataAsync(gps_device.tracker_service.get_Device_DataRequest request) {
            return base.Channel.get_Device_DataAsync(request);
        }
        
        public System.Threading.Tasks.Task<gps_device.tracker_service.get_Device_DataResponse> get_Device_DataAsync(int signal_id, int cihaz_id, string lat, string lng, System.DateTime signal_time) {
            gps_device.tracker_service.get_Device_DataRequest inValue = new gps_device.tracker_service.get_Device_DataRequest();
            inValue.Body = new gps_device.tracker_service.get_Device_DataRequestBody();
            inValue.Body.signal_id = signal_id;
            inValue.Body.cihaz_id = cihaz_id;
            inValue.Body.lat = lat;
            inValue.Body.lng = lng;
            inValue.Body.signal_time = signal_time;
            return ((gps_device.tracker_service.WebService1Soap)(this)).get_Device_DataAsync(inValue);
        }
    }
}