//
// This file was auto-generated using the following command:
//
// jai generate.jai
//



WGPU_ARRAY_LAYER_COUNT_UNDEFINED :: 0xffffffff;
WGPU_COPY_STRIDE_UNDEFINED :: 0xffffffff;
WGPU_DEPTH_SLICE_UNDEFINED :: 0xffffffff;
WGPU_LIMIT_U32_UNDEFINED :: 0xffffffff;
WGPU_LIMIT_U64_UNDEFINED :: 0xffffffffffffffff;
WGPU_MIP_LEVEL_COUNT_UNDEFINED :: 0xffffffff;
WGPU_QUERY_SET_INDEX_UNDEFINED :: 0xffffffff;

WGPU_WHOLE_SIZE :: 0xffffffffffffffff;

/**
* \defgroup Typedefs
* \brief Utility typedefs.
*
* @{
*/
Flags :: u32;
Bool :: bool;

AdapterImpl :: struct {}
/**
* \defgroup Objects
* \brief Opaque, non-dispatchable handles to WebGPU objects.
*
* @{
*/
Adapter :: *AdapterImpl;
BindGroupImpl :: struct {}
BindGroup :: *BindGroupImpl;
BindGroupLayoutImpl :: struct {}
BindGroupLayout :: *BindGroupLayoutImpl;
BufferImpl :: struct {}
Buffer :: *BufferImpl;
CommandBufferImpl :: struct {}
CommandBuffer :: *CommandBufferImpl;
CommandEncoderImpl :: struct {}
CommandEncoder :: *CommandEncoderImpl;
ComputePassEncoderImpl :: struct {}
ComputePassEncoder :: *ComputePassEncoderImpl;
ComputePipelineImpl :: struct {}
ComputePipeline :: *ComputePipelineImpl;
DeviceImpl :: struct {}
Device :: *DeviceImpl;
InstanceImpl :: struct {}
Instance :: *InstanceImpl;
PipelineLayoutImpl :: struct {}
PipelineLayout :: *PipelineLayoutImpl;
QuerySetImpl :: struct {}
QuerySet :: *QuerySetImpl;
QueueImpl :: struct {}
Queue :: *QueueImpl;
RenderBundleImpl :: struct {}
RenderBundle :: *RenderBundleImpl;
RenderBundleEncoderImpl :: struct {}
RenderBundleEncoder :: *RenderBundleEncoderImpl;
RenderPassEncoderImpl :: struct {}
RenderPassEncoder :: *RenderPassEncoderImpl;
RenderPipelineImpl :: struct {}
RenderPipeline :: *RenderPipelineImpl;
SamplerImpl :: struct {}
Sampler :: *SamplerImpl;
ShaderModuleImpl :: struct {}
ShaderModule :: *ShaderModuleImpl;
SurfaceImpl :: struct {}
Surface :: *SurfaceImpl;
TextureImpl :: struct {}
Texture :: *TextureImpl;
TextureViewImpl :: struct {}
TextureView :: *TextureViewImpl;

/**
* \defgroup Enumerations
* \brief Enums.
*
* @{
*/
AdapterType :: enum u32 {
    DiscreteGPU   :: 0;
    IntegratedGPU :: 1;
    CPU           :: 2;
    Unknown       :: 3;
    Force32       :: 2147483647;
}

AddressMode :: enum u32 {
    Repeat       :: 0;
    MirrorRepeat :: 1;
    ClampToEdge  :: 2;
    Force32      :: 2147483647;
}

BackendType :: enum u32 {
    Undefined :: 0;
    Null      :: 1;
    WebGPU    :: 2;
    D3D11     :: 3;
    D3D12     :: 4;
    Metal     :: 5;
    Vulkan    :: 6;
    OpenGL    :: 7;
    OpenGLES  :: 8;
    Force32   :: 2147483647;
}

BlendFactor :: enum u32 {
    Zero              :: 0;
    One               :: 1;
    Src               :: 2;
    OneMinusSrc       :: 3;
    SrcAlpha          :: 4;
    OneMinusSrcAlpha  :: 5;
    Dst               :: 6;
    OneMinusDst       :: 7;
    DstAlpha          :: 8;
    OneMinusDstAlpha  :: 9;
    SrcAlphaSaturated :: 10;
    Constant          :: 11;
    OneMinusConstant  :: 12;
    Force32           :: 2147483647;
}

BlendOperation :: enum u32 {
    Add             :: 0;
    Subtract        :: 1;
    ReverseSubtract :: 2;
    Min             :: 3;
    Max             :: 4;
    Force32         :: 2147483647;
}

BufferBindingType :: enum u32 {
    Undefined       :: 0;
    Uniform         :: 1;
    Storage         :: 2;
    ReadOnlyStorage :: 3;
    Force32         :: 2147483647;
}

BufferMapAsyncStatus :: enum u32 {
    Success                 :: 0;
    ValidationError         :: 1;
    Unknown                 :: 2;
    DeviceLost              :: 3;
    DestroyedBeforeCallback :: 4;
    UnmappedBeforeCallback  :: 5;
    MappingAlreadyPending   :: 6;
    OffsetOutOfRange        :: 7;
    SizeOutOfRange          :: 8;
    Force32                 :: 2147483647;
}

BufferMapState :: enum u32 {
    Unmapped :: 0;
    Pending  :: 1;
    Mapped   :: 2;
    Force32  :: 2147483647;
}

CompareFunction :: enum u32 {
    Undefined    :: 0;
    Never        :: 1;
    Less         :: 2;
    LessEqual    :: 3;
    Greater      :: 4;
    GreaterEqual :: 5;
    Equal        :: 6;
    NotEqual     :: 7;
    Always       :: 8;
    Force32      :: 2147483647;
}

CompilationInfoRequestStatus :: enum u32 {
    Success    :: 0;
    Error      :: 1;
    DeviceLost :: 2;
    Unknown    :: 3;
    Force32    :: 2147483647;
}

CompilationMessageType :: enum u32 {
    Error   :: 0;
    Warning :: 1;
    Info    :: 2;
    Force32 :: 2147483647;
}

CompositeAlphaMode :: enum u32 {
    Auto            :: 0;
    Opaque          :: 1;
    Premultiplied   :: 2;
    Unpremultiplied :: 3;
    Inherit         :: 4;
    Force32         :: 2147483647;
}

CreatePipelineAsyncStatus :: enum u32 {
    Success         :: 0;
    ValidationError :: 1;
    InternalError   :: 2;
    DeviceLost      :: 3;
    DeviceDestroyed :: 4;
    Unknown         :: 5;
    Force32         :: 2147483647;
}

CullMode :: enum u32 {
    None    :: 0;
    Front   :: 1;
    Back    :: 2;
    Force32 :: 2147483647;
}

DeviceLostReason :: enum u32 {
    Unknown   :: 1;
    Destroyed :: 2;
    Force32   :: 2147483647;
}

ErrorFilter :: enum u32 {
    Validation  :: 0;
    OutOfMemory :: 1;
    Internal    :: 2;
    Force32     :: 2147483647;
}

ErrorType :: enum u32 {
    NoError     :: 0;
    Validation  :: 1;
    OutOfMemory :: 2;
    Internal    :: 3;
    Unknown     :: 4;
    DeviceLost  :: 5;
    Force32     :: 2147483647;
}

FeatureName :: enum u32 {
    Undefined               :: 0;
    DepthClipControl        :: 1;
    Depth32FloatStencil8    :: 2;
    TimestampQuery          :: 3;
    TextureCompressionBC    :: 4;
    TextureCompressionETC2  :: 5;
    TextureCompressionASTC  :: 6;
    IndirectFirstInstance   :: 7;
    ShaderF16               :: 8;
    RG11B10UfloatRenderable :: 9;
    BGRA8UnormStorage       :: 10;
    Float32Filterable       :: 11;
    Force32                 :: 2147483647;
}

FilterMode :: enum u32 {
    Nearest :: 0;
    Linear  :: 1;
    Force32 :: 2147483647;
}

FrontFace :: enum u32 {
    CCW     :: 0;
    CW      :: 1;
    Force32 :: 2147483647;
}

IndexFormat :: enum u32 {
    Undefined :: 0;
    Uint16    :: 1;
    Uint32    :: 2;
    Force32   :: 2147483647;
}

LoadOp :: enum u32 {
    Undefined :: 0;
    Clear     :: 1;
    Load      :: 2;
    Force32   :: 2147483647;
}

MipmapFilterMode :: enum u32 {
    Nearest :: 0;
    Linear  :: 1;
    Force32 :: 2147483647;
}

PowerPreference :: enum u32 {
    Undefined       :: 0;
    LowPower        :: 1;
    HighPerformance :: 2;
    Force32         :: 2147483647;
}

PresentMode :: enum u32 {
    Fifo        :: 0;
    FifoRelaxed :: 1;
    Immediate   :: 2;
    Mailbox     :: 3;
    Force32     :: 2147483647;
}

PrimitiveTopology :: enum u32 {
    PointList     :: 0;
    LineList      :: 1;
    LineStrip     :: 2;
    TriangleList  :: 3;
    TriangleStrip :: 4;
    Force32       :: 2147483647;
}

QueryType :: enum u32 {
    Occlusion :: 0;
    Timestamp :: 1;
    Force32   :: 2147483647;
}

QueueWorkDoneStatus :: enum u32 {
    Success    :: 0;
    Error      :: 1;
    Unknown    :: 2;
    DeviceLost :: 3;
    Force32    :: 2147483647;
}

RequestAdapterStatus :: enum u32 {
    Success     :: 0;
    Unavailable :: 1;
    Error       :: 2;
    Unknown     :: 3;
    Force32     :: 2147483647;
}

RequestDeviceStatus :: enum u32 {
    Success :: 0;
    Error   :: 1;
    Unknown :: 2;
    Force32 :: 2147483647;
}

SType :: enum u32 {
    Invalid                                  :: 0;
    SurfaceDescriptorFromMetalLayer          :: 1;
    SurfaceDescriptorFromWindowsHWND         :: 2;
    SurfaceDescriptorFromXlibWindow          :: 3;
    SurfaceDescriptorFromCanvasHTMLSelector  :: 4;
    ShaderModuleSPIRVDescriptor              :: 5;
    ShaderModuleWGSLDescriptor               :: 6;
    PrimitiveDepthClipControl                :: 7;
    SurfaceDescriptorFromWaylandSurface      :: 8;
    SurfaceDescriptorFromAndroidNativeWindow :: 9;
    SurfaceDescriptorFromXcbWindow           :: 10;
    RenderPassDescriptorMaxDrawCount         :: 15;
    Force32                                  :: 2147483647;
}

SamplerBindingType :: enum u32 {
    Undefined    :: 0;
    Filtering    :: 1;
    NonFiltering :: 2;
    Comparison   :: 3;
    Force32      :: 2147483647;
}

StencilOperation :: enum u32 {
    Keep           :: 0;
    Zero           :: 1;
    Replace        :: 2;
    Invert         :: 3;
    IncrementClamp :: 4;
    DecrementClamp :: 5;
    IncrementWrap  :: 6;
    DecrementWrap  :: 7;
    Force32        :: 2147483647;
}

StorageTextureAccess :: enum u32 {
    Undefined :: 0;
    WriteOnly :: 1;
    ReadOnly  :: 2;
    ReadWrite :: 3;
    Force32   :: 2147483647;
}

StoreOp :: enum u32 {
    Undefined :: 0;
    Store     :: 1;
    Discard   :: 2;
    Force32   :: 2147483647;
}

SurfaceGetCurrentTextureStatus :: enum u32 {
    Success     :: 0;
    Timeout     :: 1;
    Outdated    :: 2;
    Lost        :: 3;
    OutOfMemory :: 4;
    DeviceLost  :: 5;
    Force32     :: 2147483647;
}

TextureAspect :: enum u32 {
    All         :: 0;
    StencilOnly :: 1;
    DepthOnly   :: 2;
    Force32     :: 2147483647;
}

TextureDimension :: enum u32 {
    _1D     :: 0;
    _2D     :: 1;
    _3D     :: 2;
    Force32 :: 2147483647;
}

TextureFormat :: enum u32 {
    Undefined            :: 0;
    R8Unorm              :: 1;
    R8Snorm              :: 2;
    R8Uint               :: 3;
    R8Sint               :: 4;
    R16Uint              :: 5;
    R16Sint              :: 6;
    R16Float             :: 7;
    RG8Unorm             :: 8;
    RG8Snorm             :: 9;
    RG8Uint              :: 10;
    RG8Sint              :: 11;
    R32Float             :: 12;
    R32Uint              :: 13;
    R32Sint              :: 14;
    RG16Uint             :: 15;
    RG16Sint             :: 16;
    RG16Float            :: 17;
    RGBA8Unorm           :: 18;
    RGBA8UnormSrgb       :: 19;
    RGBA8Snorm           :: 20;
    RGBA8Uint            :: 21;
    RGBA8Sint            :: 22;
    BGRA8Unorm           :: 23;
    BGRA8UnormSrgb       :: 24;
    RGB10A2Uint          :: 25;
    RGB10A2Unorm         :: 26;
    RG11B10Ufloat        :: 27;
    RGB9E5Ufloat         :: 28;
    RG32Float            :: 29;
    RG32Uint             :: 30;
    RG32Sint             :: 31;
    RGBA16Uint           :: 32;
    RGBA16Sint           :: 33;
    RGBA16Float          :: 34;
    RGBA32Float          :: 35;
    RGBA32Uint           :: 36;
    RGBA32Sint           :: 37;
    Stencil8             :: 38;
    Depth16Unorm         :: 39;
    Depth24Plus          :: 40;
    Depth24PlusStencil8  :: 41;
    Depth32Float         :: 42;
    Depth32FloatStencil8 :: 43;
    BC1RGBAUnorm         :: 44;
    BC1RGBAUnormSrgb     :: 45;
    BC2RGBAUnorm         :: 46;
    BC2RGBAUnormSrgb     :: 47;
    BC3RGBAUnorm         :: 48;
    BC3RGBAUnormSrgb     :: 49;
    BC4RUnorm            :: 50;
    BC4RSnorm            :: 51;
    BC5RGUnorm           :: 52;
    BC5RGSnorm           :: 53;
    BC6HRGBUfloat        :: 54;
    BC6HRGBFloat         :: 55;
    BC7RGBAUnorm         :: 56;
    BC7RGBAUnormSrgb     :: 57;
    ETC2RGB8Unorm        :: 58;
    ETC2RGB8UnormSrgb    :: 59;
    ETC2RGB8A1Unorm      :: 60;
    ETC2RGB8A1UnormSrgb  :: 61;
    ETC2RGBA8Unorm       :: 62;
    ETC2RGBA8UnormSrgb   :: 63;
    EACR11Unorm          :: 64;
    EACR11Snorm          :: 65;
    EACRG11Unorm         :: 66;
    EACRG11Snorm         :: 67;
    ASTC4x4Unorm         :: 68;
    ASTC4x4UnormSrgb     :: 69;
    ASTC5x4Unorm         :: 70;
    ASTC5x4UnormSrgb     :: 71;
    ASTC5x5Unorm         :: 72;
    ASTC5x5UnormSrgb     :: 73;
    ASTC6x5Unorm         :: 74;
    ASTC6x5UnormSrgb     :: 75;
    ASTC6x6Unorm         :: 76;
    ASTC6x6UnormSrgb     :: 77;
    ASTC8x5Unorm         :: 78;
    ASTC8x5UnormSrgb     :: 79;
    ASTC8x6Unorm         :: 80;
    ASTC8x6UnormSrgb     :: 81;
    ASTC8x8Unorm         :: 82;
    ASTC8x8UnormSrgb     :: 83;
    ASTC10x5Unorm        :: 84;
    ASTC10x5UnormSrgb    :: 85;
    ASTC10x6Unorm        :: 86;
    ASTC10x6UnormSrgb    :: 87;
    ASTC10x8Unorm        :: 88;
    ASTC10x8UnormSrgb    :: 89;
    ASTC10x10Unorm       :: 90;
    ASTC10x10UnormSrgb   :: 91;
    ASTC12x10Unorm       :: 92;
    ASTC12x10UnormSrgb   :: 93;
    ASTC12x12Unorm       :: 94;
    ASTC12x12UnormSrgb   :: 95;
    Force32              :: 2147483647;
}

TextureSampleType :: enum u32 {
    Undefined         :: 0;
    Float             :: 1;
    UnfilterableFloat :: 2;
    Depth             :: 3;
    Sint              :: 4;
    Uint              :: 5;
    Force32           :: 2147483647;
}

TextureViewDimension :: enum u32 {
    Undefined :: 0;
    _1D       :: 1;
    _2D       :: 2;
    _2DArray  :: 3;
    Cube      :: 4;
    CubeArray :: 5;
    _3D       :: 6;
    Force32   :: 2147483647;
}

VertexFormat :: enum u32 {
    Undefined :: 0;
    Uint8x2   :: 1;
    Uint8x4   :: 2;
    Sint8x2   :: 3;
    Sint8x4   :: 4;
    Unorm8x2  :: 5;
    Unorm8x4  :: 6;
    Snorm8x2  :: 7;
    Snorm8x4  :: 8;
    Uint16x2  :: 9;
    Uint16x4  :: 10;
    Sint16x2  :: 11;
    Sint16x4  :: 12;
    Unorm16x2 :: 13;
    Unorm16x4 :: 14;
    Snorm16x2 :: 15;
    Snorm16x4 :: 16;
    Float16x2 :: 17;
    Float16x4 :: 18;
    Float32   :: 19;
    Float32x2 :: 20;
    Float32x3 :: 21;
    Float32x4 :: 22;
    Uint32    :: 23;
    Uint32x2  :: 24;
    Uint32x3  :: 25;
    Uint32x4  :: 26;
    Sint32    :: 27;
    Sint32x2  :: 28;
    Sint32x3  :: 29;
    Sint32x4  :: 30;
    Force32   :: 2147483647;
}

VertexStepMode :: enum u32 {
    Vertex              :: 0;
    Instance            :: 1;
    VertexBufferNotUsed :: 2;
    Force32             :: 2147483647;
}

WGSLFeatureName :: enum u32 {
    Undefined                           :: 0;
    ReadonlyAndReadwriteStorageTextures :: 1;
    Packed4x8IntegerDotProduct          :: 2;
    UnrestrictedPointerParameters       :: 3;
    PointerCompositeAccess              :: 4;
    Force32                             :: 2147483647;
}

/**
* \defgroup Bitflags
* \brief Enum used as bit flags.
*
* @{
*/
BufferUsage :: enum u32 {
    None         :: 0;
    MapRead      :: 1;
    MapWrite     :: 2;
    CopySrc      :: 4;
    CopyDst      :: 8;
    Index        :: 16;
    Vertex       :: 32;
    Uniform      :: 64;
    Storage      :: 128;
    Indirect     :: 256;
    QueryResolve :: 512;
    Force32      :: 2147483647;
}

BufferUsageFlags :: Flags;

ColorWriteMask :: enum u32 {
    None    :: 0;
    Red     :: 1;
    Green   :: 2;
    Blue    :: 4;
    Alpha   :: 8;
    All     :: 15;
    Force32 :: 2147483647;
}

ColorWriteMaskFlags :: Flags;

MapMode :: enum u32 {
    None    :: 0;
    Read    :: 1;
    Write   :: 2;
    Force32 :: 2147483647;
}

MapModeFlags :: Flags;

ShaderStage :: enum u32 {
    None     :: 0;
    Vertex   :: 1;
    Fragment :: 2;
    Compute  :: 4;
    Force32  :: 2147483647;
}

ShaderStageFlags :: Flags;

TextureUsage :: enum u32 {
    None             :: 0;
    CopySrc          :: 1;
    CopyDst          :: 2;
    TextureBinding   :: 4;
    StorageBinding   :: 8;
    RenderAttachment :: 16;
    Force32          :: 2147483647;
}

TextureUsageFlags :: Flags;

/** @} */
Proc :: #type () -> void #c_call;

DeviceLostCallback :: #type (reason: DeviceLostReason, message: *u8, userdata: *void) -> void #c_call;
ErrorCallback :: #type (type: ErrorType, message: *u8, userdata: *void) -> void #c_call;

/**
* \defgroup Callbacks
* \brief Callbacks through which asynchronous functions return.
*
* @{
*/
AdapterRequestDeviceCallback :: #type (status: RequestDeviceStatus, device: Device, message: *u8, userdata: *void) -> void #c_call;
BufferMapAsyncCallback :: #type (status: BufferMapAsyncStatus, userdata: *void) -> void #c_call;
DeviceCreateComputePipelineAsyncCallback :: #type (status: CreatePipelineAsyncStatus, pipeline: ComputePipeline, message: *u8, userdata: *void) -> void #c_call;
DeviceCreateRenderPipelineAsyncCallback :: #type (status: CreatePipelineAsyncStatus, pipeline: RenderPipeline, message: *u8, userdata: *void) -> void #c_call;
InstanceRequestAdapterCallback :: #type (status: RequestAdapterStatus, adapter: Adapter, message: *u8, userdata: *void) -> void #c_call;
QueueOnSubmittedWorkDoneCallback :: #type (status: QueueWorkDoneStatus, userdata: *void) -> void #c_call;
ShaderModuleGetCompilationInfoCallback :: #type (status: CompilationInfoRequestStatus, compilationInfo: *CompilationInfo, userdata: *void) -> void #c_call;

/** @} */
/**
* \defgroup ChainedStructures Chained Structures
* \brief Structures used to extend descriptors.
*
* @{
*/
ChainedStruct :: struct {
    next:  *ChainedStruct;
    sType: SType;
}

ChainedStructOut :: struct {
    next:  *ChainedStructOut;
    sType: SType;
}

/** @} */
// Structure forward declarations
AdapterInfo :: struct {
    nextInChain:  *ChainedStructOut;
    vendor:       *u8;
    architecture: *u8;
    device:       *u8;
    description:  *u8;
    backendType:  BackendType;
    adapterType:  AdapterType;
    vendorID:     u32;
    deviceID:     u32;
}

BindGroupEntry :: struct {
    nextInChain: *ChainedStruct;
    binding:     u32;
    buffer:      Buffer;
    offset:      u64;
    size:        u64;
    sampler:     Sampler;
    textureView: TextureView;
}

BlendComponent :: struct {
    operation: BlendOperation;
    srcFactor: BlendFactor;
    dstFactor: BlendFactor;
}

BufferBindingLayout :: struct {
    nextInChain:      *ChainedStruct;
    type:             BufferBindingType;
    hasDynamicOffset: Bool;
    minBindingSize:   u64;
}

BufferDescriptor :: struct {
    nextInChain:      *ChainedStruct;
    label:            *u8;
    usage:            BufferUsageFlags;
    size:             u64;
    mappedAtCreation: Bool;
}

Color :: struct {
    r: float64;
    g: float64;
    b: float64;
    a: float64;
}

CommandBufferDescriptor :: struct {
    nextInChain: *ChainedStruct;
    label:       *u8;
}

CommandEncoderDescriptor :: struct {
    nextInChain: *ChainedStruct;
    label:       *u8;
}

CompilationMessage :: struct {
    nextInChain:  *ChainedStruct;
    message:      *u8;
    type:         CompilationMessageType;
    lineNum:      u64;
    linePos:      u64;
    offset:       u64;
    length:       u64;
    utf16LinePos: u64;
    utf16Offset:  u64;
    utf16Length:  u64;
}

ComputePassTimestampWrites :: struct {
    querySet:                  QuerySet;
    beginningOfPassWriteIndex: u32;
    endOfPassWriteIndex:       u32;
}

ConstantEntry :: struct {
    nextInChain: *ChainedStruct;
    key:         *u8;
    value:       float64;
}

Extent3D :: struct {
    width:              u32;
    height:             u32;
    depthOrArrayLayers: u32;
}

InstanceDescriptor :: struct {
    nextInChain: *ChainedStruct;
}

Limits :: struct {
    maxTextureDimension1D:                     u32;
    maxTextureDimension2D:                     u32;
    maxTextureDimension3D:                     u32;
    maxTextureArrayLayers:                     u32;
    maxBindGroups:                             u32;
    maxBindGroupsPlusVertexBuffers:            u32;
    maxBindingsPerBindGroup:                   u32;
    maxDynamicUniformBuffersPerPipelineLayout: u32;
    maxDynamicStorageBuffersPerPipelineLayout: u32;
    maxSampledTexturesPerShaderStage:          u32;
    maxSamplersPerShaderStage:                 u32;
    maxStorageBuffersPerShaderStage:           u32;
    maxStorageTexturesPerShaderStage:          u32;
    maxUniformBuffersPerShaderStage:           u32;
    maxUniformBufferBindingSize:               u64;
    maxStorageBufferBindingSize:               u64;
    minUniformBufferOffsetAlignment:           u32;
    minStorageBufferOffsetAlignment:           u32;
    maxVertexBuffers:                          u32;
    maxBufferSize:                             u64;
    maxVertexAttributes:                       u32;
    maxVertexBufferArrayStride:                u32;
    maxInterStageShaderComponents:             u32;
    maxInterStageShaderVariables:              u32;
    maxColorAttachments:                       u32;
    maxColorAttachmentBytesPerSample:          u32;
    maxComputeWorkgroupStorageSize:            u32;
    maxComputeInvocationsPerWorkgroup:         u32;
    maxComputeWorkgroupSizeX:                  u32;
    maxComputeWorkgroupSizeY:                  u32;
    maxComputeWorkgroupSizeZ:                  u32;
    maxComputeWorkgroupsPerDimension:          u32;
}

MultisampleState :: struct {
    nextInChain:            *ChainedStruct;
    count:                  u32;
    mask:                   u32;
    alphaToCoverageEnabled: Bool;
}

Origin3D :: struct {
    x: u32;
    y: u32;
    z: u32;
}

PipelineLayoutDescriptor :: struct {
    nextInChain:          *ChainedStruct;
    label:                *u8;
    bindGroupLayoutCount: u64;
    bindGroupLayouts:     *BindGroupLayout;
}

PrimitiveDepthClipControl :: struct {
    chain:          ChainedStruct;
    unclippedDepth: Bool;
}

PrimitiveState :: struct {
    nextInChain:      *ChainedStruct;
    topology:         PrimitiveTopology;
    stripIndexFormat: IndexFormat;
    frontFace:        FrontFace;
    cullMode:         CullMode;
}

QuerySetDescriptor :: struct {
    nextInChain: *ChainedStruct;
    label:       *u8;
    type:        QueryType;
    count:       u32;
}

QueueDescriptor :: struct {
    nextInChain: *ChainedStruct;
    label:       *u8;
}

RenderBundleDescriptor :: struct {
    nextInChain: *ChainedStruct;
    label:       *u8;
}

RenderBundleEncoderDescriptor :: struct {
    nextInChain:        *ChainedStruct;
    label:              *u8;
    colorFormatCount:   u64;
    colorFormats:       *TextureFormat;
    depthStencilFormat: TextureFormat;
    sampleCount:        u32;
    depthReadOnly:      Bool;
    stencilReadOnly:    Bool;
}

RenderPassDepthStencilAttachment :: struct {
    view:              TextureView;
    depthLoadOp:       LoadOp;
    depthStoreOp:      StoreOp;
    depthClearValue:   float;
    depthReadOnly:     Bool;
    stencilLoadOp:     LoadOp;
    stencilStoreOp:    StoreOp;
    stencilClearValue: u32;
    stencilReadOnly:   Bool;
}

RenderPassDescriptorMaxDrawCount :: struct {
    chain:        ChainedStruct;
    maxDrawCount: u64;
}

RenderPassTimestampWrites :: struct {
    querySet:                  QuerySet;
    beginningOfPassWriteIndex: u32;
    endOfPassWriteIndex:       u32;
}

RequestAdapterOptions :: struct {
    nextInChain:          *ChainedStruct;
    compatibleSurface:    Surface;
    powerPreference:      PowerPreference;
    backendType:          BackendType;
    forceFallbackAdapter: Bool;
}

SamplerBindingLayout :: struct {
    nextInChain: *ChainedStruct;
    type:        SamplerBindingType;
}

SamplerDescriptor :: struct {
    nextInChain:   *ChainedStruct;
    label:         *u8;
    addressModeU:  AddressMode;
    addressModeV:  AddressMode;
    addressModeW:  AddressMode;
    magFilter:     FilterMode;
    minFilter:     FilterMode;
    mipmapFilter:  MipmapFilterMode;
    lodMinClamp:   float;
    lodMaxClamp:   float;
    compare:       CompareFunction;
    maxAnisotropy: u16;
}

ShaderModuleCompilationHint :: struct {
    nextInChain: *ChainedStruct;
    entryPoint:  *u8;
    layout:      PipelineLayout;
}

ShaderModuleSPIRVDescriptor :: struct {
    chain:    ChainedStruct;
    codeSize: u32;
    code:     *u32;
}

ShaderModuleWGSLDescriptor :: struct {
    chain: ChainedStruct;
    code:  *u8;
}

StencilFaceState :: struct {
    compare:     CompareFunction;
    failOp:      StencilOperation;
    depthFailOp: StencilOperation;
    passOp:      StencilOperation;
}

StorageTextureBindingLayout :: struct {
    nextInChain:   *ChainedStruct;
    access:        StorageTextureAccess;
    format:        TextureFormat;
    viewDimension: TextureViewDimension;
}

SurfaceCapabilities :: struct {
    nextInChain:      *ChainedStructOut;
    usages:           TextureUsageFlags;
    formatCount:      u64;
    formats:          *TextureFormat;
    presentModeCount: u64;
    presentModes:     *PresentMode;
    alphaModeCount:   u64;
    alphaModes:       *CompositeAlphaMode;
}

SurfaceConfiguration :: struct {
    nextInChain:     *ChainedStruct;
    device:          Device;
    format:          TextureFormat;
    usage:           TextureUsageFlags;
    viewFormatCount: u64;
    viewFormats:     *TextureFormat;
    alphaMode:       CompositeAlphaMode;
    width:           u32;
    height:          u32;
    presentMode:     PresentMode;
}

SurfaceDescriptor :: struct {
    nextInChain: *ChainedStruct;
    label:       *u8;
}

SurfaceDescriptorFromAndroidNativeWindow :: struct {
    chain:  ChainedStruct;
    window: *void;
}

SurfaceDescriptorFromCanvasHTMLSelector :: struct {
    chain:    ChainedStruct;
    selector: *u8;
}

SurfaceDescriptorFromMetalLayer :: struct {
    chain: ChainedStruct;
    layer: *void;
}

SurfaceDescriptorFromWaylandSurface :: struct {
    chain:   ChainedStruct;
    display: *void;
    surface: *void;
}

SurfaceDescriptorFromWindowsHWND :: struct {
    chain:     ChainedStruct;
    hinstance: *void;
    hwnd:      *void;
}

SurfaceDescriptorFromXcbWindow :: struct {
    chain:      ChainedStruct;
    connection: *void;
    window:     u32;
}

SurfaceDescriptorFromXlibWindow :: struct {
    chain:   ChainedStruct;
    display: *void;
    window:  u64;
}

SurfaceTexture :: struct {
    texture:    Texture;
    suboptimal: Bool;
    status:     SurfaceGetCurrentTextureStatus;
}

TextureBindingLayout :: struct {
    nextInChain:   *ChainedStruct;
    sampleType:    TextureSampleType;
    viewDimension: TextureViewDimension;
    multisampled:  Bool;
}

TextureDataLayout :: struct {
    nextInChain:  *ChainedStruct;
    offset:       u64;
    bytesPerRow:  u32;
    rowsPerImage: u32;
}

TextureViewDescriptor :: struct {
    nextInChain:     *ChainedStruct;
    label:           *u8;
    format:          TextureFormat;
    dimension:       TextureViewDimension;
    baseMipLevel:    u32;
    mipLevelCount:   u32;
    baseArrayLayer:  u32;
    arrayLayerCount: u32;
    aspect:          TextureAspect;
}

UncapturedErrorCallbackInfo :: struct {
    nextInChain: *ChainedStruct;
    callback:    ErrorCallback;
    userdata:    *void;
}

VertexAttribute :: struct {
    format:         VertexFormat;
    offset:         u64;
    shaderLocation: u32;
}

BindGroupDescriptor :: struct {
    nextInChain: *ChainedStruct;
    label:       *u8;
    layout:      BindGroupLayout;
    entryCount:  u64;
    entries:     *BindGroupEntry;
}

BindGroupLayoutEntry :: struct {
    nextInChain:    *ChainedStruct;
    binding:        u32;
    visibility:     ShaderStageFlags;
    buffer:         BufferBindingLayout;
    sampler:        SamplerBindingLayout;
    texture:        TextureBindingLayout;
    storageTexture: StorageTextureBindingLayout;
}

BlendState :: struct {
    color: BlendComponent;
    alpha: BlendComponent;
}

CompilationInfo :: struct {
    nextInChain:  *ChainedStruct;
    messageCount: u64;
    messages:     *CompilationMessage;
}

ComputePassDescriptor :: struct {
    nextInChain:     *ChainedStruct;
    label:           *u8;
    timestampWrites: *ComputePassTimestampWrites;
}

DepthStencilState :: struct {
    nextInChain:         *ChainedStruct;
    format:              TextureFormat;
    depthWriteEnabled:   Bool;
    depthCompare:        CompareFunction;
    stencilFront:        StencilFaceState;
    stencilBack:         StencilFaceState;
    stencilReadMask:     u32;
    stencilWriteMask:    u32;
    depthBias:           s32;
    depthBiasSlopeScale: float;
    depthBiasClamp:      float;
}

ImageCopyBuffer :: struct {
    nextInChain: *ChainedStruct;
    layout:      TextureDataLayout;
    buffer:      Buffer;
}

ImageCopyTexture :: struct {
    nextInChain: *ChainedStruct;
    texture:     Texture;
    mipLevel:    u32;
    origin:      Origin3D;
    aspect:      TextureAspect;
}

ProgrammableStageDescriptor :: struct {
    nextInChain:   *ChainedStruct;
    module:        ShaderModule;
    entryPoint:    *u8;
    constantCount: u64;
    constants:     *ConstantEntry;
}

RenderPassColorAttachment :: struct {
    nextInChain:   *ChainedStruct;
    view:          TextureView;
    depthSlice:    u32;
    resolveTarget: TextureView;
    loadOp:        LoadOp;
    storeOp:       StoreOp;
    clearValue:    Color;
}

RequiredLimits :: struct {
    nextInChain: *ChainedStruct;
    limits:      Limits;
}

ShaderModuleDescriptor :: struct {
    nextInChain: *ChainedStruct;
    label:       *u8;
    hintCount:   u64;
    hints:       *ShaderModuleCompilationHint;
}

SupportedLimits :: struct {
    nextInChain: *ChainedStructOut;
    limits:      Limits;
}

TextureDescriptor :: struct {
    nextInChain:     *ChainedStruct;
    label:           *u8;
    usage:           TextureUsageFlags;
    dimension:       TextureDimension;
    size:            Extent3D;
    format:          TextureFormat;
    mipLevelCount:   u32;
    sampleCount:     u32;
    viewFormatCount: u64;
    viewFormats:     *TextureFormat;
}

VertexBufferLayout :: struct {
    arrayStride:    u64;
    stepMode:       VertexStepMode;
    attributeCount: u64;
    attributes:     *VertexAttribute;
}

BindGroupLayoutDescriptor :: struct {
    nextInChain: *ChainedStruct;
    label:       *u8;
    entryCount:  u64;
    entries:     *BindGroupLayoutEntry;
}

ColorTargetState :: struct {
    nextInChain: *ChainedStruct;
    format:      TextureFormat;
    blend:       *BlendState;
    writeMask:   ColorWriteMaskFlags;
}

ComputePipelineDescriptor :: struct {
    nextInChain: *ChainedStruct;
    label:       *u8;
    layout:      PipelineLayout;
    compute:     ProgrammableStageDescriptor;
}

DeviceDescriptor :: struct {
    nextInChain:                 *ChainedStruct;
    label:                       *u8;
    requiredFeatureCount:        u64;
    requiredFeatures:            *FeatureName;
    requiredLimits:              *RequiredLimits;
    defaultQueue:                QueueDescriptor;
    deviceLostCallback:          DeviceLostCallback;
    deviceLostUserdata:          *void;
    uncapturedErrorCallbackInfo: UncapturedErrorCallbackInfo;
}

RenderPassDescriptor :: struct {
    nextInChain:            *ChainedStruct;
    label:                  *u8;
    colorAttachmentCount:   u64;
    colorAttachments:       *RenderPassColorAttachment;
    depthStencilAttachment: *RenderPassDepthStencilAttachment;
    occlusionQuerySet:      QuerySet;
    timestampWrites:        *RenderPassTimestampWrites;
}

VertexState :: struct {
    nextInChain:   *ChainedStruct;
    module:        ShaderModule;
    entryPoint:    *u8;
    constantCount: u64;
    constants:     *ConstantEntry;
    bufferCount:   u64;
    buffers:       *VertexBufferLayout;
}

FragmentState :: struct {
    nextInChain:   *ChainedStruct;
    module:        ShaderModule;
    entryPoint:    *u8;
    constantCount: u64;
    constants:     *ConstantEntry;
    targetCount:   u64;
    targets:       *ColorTargetState;
}

RenderPipelineDescriptor :: struct {
    nextInChain:  *ChainedStruct;
    label:        *u8;
    layout:       PipelineLayout;
    vertex:       VertexState;
    primitive:    PrimitiveState;
    depthStencil: *DepthStencilState;
    multisample:  MultisampleState;
    fragment:     *FragmentState;
}

ProcCreateInstance :: #type (descriptor: *InstanceDescriptor) -> Instance #c_call;
ProcGetProcAddress :: #type (device: Device, procName: *u8) -> Proc #c_call;

// Procs of Adapter
ProcAdapterEnumerateFeatures :: #type (adapter: Adapter, features: *FeatureName) -> u64 #c_call;
ProcAdapterGetInfo :: #type (adapter: Adapter, info: *AdapterInfo) -> void #c_call;
ProcAdapterGetLimits :: #type (adapter: Adapter, limits: *SupportedLimits) -> Bool #c_call;
ProcAdapterHasFeature :: #type (adapter: Adapter, feature: FeatureName) -> Bool #c_call;
ProcAdapterRequestDevice :: #type (adapter: Adapter, descriptor: *DeviceDescriptor, callback: AdapterRequestDeviceCallback, userdata: *void) -> void #c_call;
ProcAdapterReference :: #type (adapter: Adapter) -> void #c_call;
ProcAdapterRelease :: #type (adapter: Adapter) -> void #c_call;

// Procs of AdapterInfo
ProcAdapterInfoFreeMembers :: #type (adapterInfo: AdapterInfo) -> void #c_call;

// Procs of BindGroup
ProcBindGroupSetLabel :: #type (bindGroup: BindGroup, label: *u8) -> void #c_call;
ProcBindGroupReference :: #type (bindGroup: BindGroup) -> void #c_call;
ProcBindGroupRelease :: #type (bindGroup: BindGroup) -> void #c_call;

// Procs of BindGroupLayout
ProcBindGroupLayoutSetLabel :: #type (bindGroupLayout: BindGroupLayout, label: *u8) -> void #c_call;
ProcBindGroupLayoutReference :: #type (bindGroupLayout: BindGroupLayout) -> void #c_call;
ProcBindGroupLayoutRelease :: #type (bindGroupLayout: BindGroupLayout) -> void #c_call;

// Procs of Buffer
ProcBufferDestroy :: #type (buffer: Buffer) -> void #c_call;
ProcBufferGetConstMappedRange :: #type (buffer: Buffer, offset: u64, size: u64) -> *void #c_call;
ProcBufferGetMapState :: #type (buffer: Buffer) -> BufferMapState #c_call;
ProcBufferGetMappedRange :: #type (buffer: Buffer, offset: u64, size: u64) -> *void #c_call;
ProcBufferGetSize :: #type (buffer: Buffer) -> u64 #c_call;
ProcBufferGetUsage :: #type (buffer: Buffer) -> BufferUsageFlags #c_call;
ProcBufferMapAsync :: #type (buffer: Buffer, mode: MapModeFlags, offset: u64, size: u64, callback: BufferMapAsyncCallback, userdata: *void) -> void #c_call;
ProcBufferSetLabel :: #type (buffer: Buffer, label: *u8) -> void #c_call;
ProcBufferUnmap :: #type (buffer: Buffer) -> void #c_call;
ProcBufferReference :: #type (buffer: Buffer) -> void #c_call;
ProcBufferRelease :: #type (buffer: Buffer) -> void #c_call;

// Procs of CommandBuffer
ProcCommandBufferSetLabel :: #type (commandBuffer: CommandBuffer, label: *u8) -> void #c_call;
ProcCommandBufferReference :: #type (commandBuffer: CommandBuffer) -> void #c_call;
ProcCommandBufferRelease :: #type (commandBuffer: CommandBuffer) -> void #c_call;

// Procs of CommandEncoder
ProcCommandEncoderBeginComputePass :: #type (commandEncoder: CommandEncoder, descriptor: *ComputePassDescriptor) -> ComputePassEncoder #c_call;
ProcCommandEncoderBeginRenderPass :: #type (commandEncoder: CommandEncoder, descriptor: *RenderPassDescriptor) -> RenderPassEncoder #c_call;
ProcCommandEncoderClearBuffer :: #type (commandEncoder: CommandEncoder, buffer: Buffer, offset: u64, size: u64) -> void #c_call;
ProcCommandEncoderCopyBufferToBuffer :: #type (commandEncoder: CommandEncoder, source: Buffer, sourceOffset: u64, destination: Buffer, destinationOffset: u64, size: u64) -> void #c_call;
ProcCommandEncoderCopyBufferToTexture :: #type (commandEncoder: CommandEncoder, source: *ImageCopyBuffer, destination: *ImageCopyTexture, copySize: *Extent3D) -> void #c_call;
ProcCommandEncoderCopyTextureToBuffer :: #type (commandEncoder: CommandEncoder, source: *ImageCopyTexture, destination: *ImageCopyBuffer, copySize: *Extent3D) -> void #c_call;
ProcCommandEncoderCopyTextureToTexture :: #type (commandEncoder: CommandEncoder, source: *ImageCopyTexture, destination: *ImageCopyTexture, copySize: *Extent3D) -> void #c_call;
ProcCommandEncoderFinish :: #type (commandEncoder: CommandEncoder, descriptor: *CommandBufferDescriptor) -> CommandBuffer #c_call;
ProcCommandEncoderInsertDebugMarker :: #type (commandEncoder: CommandEncoder, markerLabel: *u8) -> void #c_call;
ProcCommandEncoderPopDebugGroup :: #type (commandEncoder: CommandEncoder) -> void #c_call;
ProcCommandEncoderPushDebugGroup :: #type (commandEncoder: CommandEncoder, groupLabel: *u8) -> void #c_call;
ProcCommandEncoderResolveQuerySet :: #type (commandEncoder: CommandEncoder, querySet: QuerySet, firstQuery: u32, queryCount: u32, destination: Buffer, destinationOffset: u64) -> void #c_call;
ProcCommandEncoderSetLabel :: #type (commandEncoder: CommandEncoder, label: *u8) -> void #c_call;
ProcCommandEncoderWriteTimestamp :: #type (commandEncoder: CommandEncoder, querySet: QuerySet, queryIndex: u32) -> void #c_call;
ProcCommandEncoderReference :: #type (commandEncoder: CommandEncoder) -> void #c_call;
ProcCommandEncoderRelease :: #type (commandEncoder: CommandEncoder) -> void #c_call;

// Procs of ComputePassEncoder
ProcComputePassEncoderDispatchWorkgroups :: #type (computePassEncoder: ComputePassEncoder, workgroupCountX: u32, workgroupCountY: u32, workgroupCountZ: u32) -> void #c_call;
ProcComputePassEncoderDispatchWorkgroupsIndirect :: #type (computePassEncoder: ComputePassEncoder, indirectBuffer: Buffer, indirectOffset: u64) -> void #c_call;
ProcComputePassEncoderEnd :: #type (computePassEncoder: ComputePassEncoder) -> void #c_call;
ProcComputePassEncoderInsertDebugMarker :: #type (computePassEncoder: ComputePassEncoder, markerLabel: *u8) -> void #c_call;
ProcComputePassEncoderPopDebugGroup :: #type (computePassEncoder: ComputePassEncoder) -> void #c_call;
ProcComputePassEncoderPushDebugGroup :: #type (computePassEncoder: ComputePassEncoder, groupLabel: *u8) -> void #c_call;
ProcComputePassEncoderSetBindGroup :: #type (computePassEncoder: ComputePassEncoder, groupIndex: u32, group: BindGroup, dynamicOffsetCount: u64, dynamicOffsets: *u32) -> void #c_call;
ProcComputePassEncoderSetLabel :: #type (computePassEncoder: ComputePassEncoder, label: *u8) -> void #c_call;
ProcComputePassEncoderSetPipeline :: #type (computePassEncoder: ComputePassEncoder, pipeline: ComputePipeline) -> void #c_call;
ProcComputePassEncoderReference :: #type (computePassEncoder: ComputePassEncoder) -> void #c_call;
ProcComputePassEncoderRelease :: #type (computePassEncoder: ComputePassEncoder) -> void #c_call;

// Procs of ComputePipeline
ProcComputePipelineGetBindGroupLayout :: #type (computePipeline: ComputePipeline, groupIndex: u32) -> BindGroupLayout #c_call;
ProcComputePipelineSetLabel :: #type (computePipeline: ComputePipeline, label: *u8) -> void #c_call;
ProcComputePipelineReference :: #type (computePipeline: ComputePipeline) -> void #c_call;
ProcComputePipelineRelease :: #type (computePipeline: ComputePipeline) -> void #c_call;

// Procs of Device
ProcDeviceCreateBindGroup :: #type (device: Device, descriptor: *BindGroupDescriptor) -> BindGroup #c_call;
ProcDeviceCreateBindGroupLayout :: #type (device: Device, descriptor: *BindGroupLayoutDescriptor) -> BindGroupLayout #c_call;
ProcDeviceCreateBuffer :: #type (device: Device, descriptor: *BufferDescriptor) -> Buffer #c_call;
ProcDeviceCreateCommandEncoder :: #type (device: Device, descriptor: *CommandEncoderDescriptor) -> CommandEncoder #c_call;
ProcDeviceCreateComputePipeline :: #type (device: Device, descriptor: *ComputePipelineDescriptor) -> ComputePipeline #c_call;
ProcDeviceCreateComputePipelineAsync :: #type (device: Device, descriptor: *ComputePipelineDescriptor, callback: DeviceCreateComputePipelineAsyncCallback, userdata: *void) -> void #c_call;
ProcDeviceCreatePipelineLayout :: #type (device: Device, descriptor: *PipelineLayoutDescriptor) -> PipelineLayout #c_call;
ProcDeviceCreateQuerySet :: #type (device: Device, descriptor: *QuerySetDescriptor) -> QuerySet #c_call;
ProcDeviceCreateRenderBundleEncoder :: #type (device: Device, descriptor: *RenderBundleEncoderDescriptor) -> RenderBundleEncoder #c_call;
ProcDeviceCreateRenderPipeline :: #type (device: Device, descriptor: *RenderPipelineDescriptor) -> RenderPipeline #c_call;
ProcDeviceCreateRenderPipelineAsync :: #type (device: Device, descriptor: *RenderPipelineDescriptor, callback: DeviceCreateRenderPipelineAsyncCallback, userdata: *void) -> void #c_call;
ProcDeviceCreateSampler :: #type (device: Device, descriptor: *SamplerDescriptor) -> Sampler #c_call;
ProcDeviceCreateShaderModule :: #type (device: Device, descriptor: *ShaderModuleDescriptor) -> ShaderModule #c_call;
ProcDeviceCreateTexture :: #type (device: Device, descriptor: *TextureDescriptor) -> Texture #c_call;
ProcDeviceDestroy :: #type (device: Device) -> void #c_call;
ProcDeviceEnumerateFeatures :: #type (device: Device, features: *FeatureName) -> u64 #c_call;
ProcDeviceGetLimits :: #type (device: Device, limits: *SupportedLimits) -> Bool #c_call;
ProcDeviceGetQueue :: #type (device: Device) -> Queue #c_call;
ProcDeviceHasFeature :: #type (device: Device, feature: FeatureName) -> Bool #c_call;
ProcDevicePopErrorScope :: #type (device: Device, callback: ErrorCallback, userdata: *void) -> void #c_call;
ProcDevicePushErrorScope :: #type (device: Device, filter: ErrorFilter) -> void #c_call;
ProcDeviceSetLabel :: #type (device: Device, label: *u8) -> void #c_call;
ProcDeviceReference :: #type (device: Device) -> void #c_call;
ProcDeviceRelease :: #type (device: Device) -> void #c_call;

// Procs of Instance
ProcInstanceCreateSurface :: #type (instance: Instance, descriptor: *SurfaceDescriptor) -> Surface #c_call;
ProcInstanceHasWGSLLanguageFeature :: #type (instance: Instance, feature: WGSLFeatureName) -> Bool #c_call;
ProcInstanceProcessEvents :: #type (instance: Instance) -> void #c_call;
ProcInstanceRequestAdapter :: #type (instance: Instance, options: *RequestAdapterOptions, callback: InstanceRequestAdapterCallback, userdata: *void) -> void #c_call;
ProcInstanceReference :: #type (instance: Instance) -> void #c_call;
ProcInstanceRelease :: #type (instance: Instance) -> void #c_call;

// Procs of PipelineLayout
ProcPipelineLayoutSetLabel :: #type (pipelineLayout: PipelineLayout, label: *u8) -> void #c_call;
ProcPipelineLayoutReference :: #type (pipelineLayout: PipelineLayout) -> void #c_call;
ProcPipelineLayoutRelease :: #type (pipelineLayout: PipelineLayout) -> void #c_call;

// Procs of QuerySet
ProcQuerySetDestroy :: #type (querySet: QuerySet) -> void #c_call;
ProcQuerySetGetCount :: #type (querySet: QuerySet) -> u32 #c_call;
ProcQuerySetGetType :: #type (querySet: QuerySet) -> QueryType #c_call;
ProcQuerySetSetLabel :: #type (querySet: QuerySet, label: *u8) -> void #c_call;
ProcQuerySetReference :: #type (querySet: QuerySet) -> void #c_call;
ProcQuerySetRelease :: #type (querySet: QuerySet) -> void #c_call;

// Procs of Queue
ProcQueueOnSubmittedWorkDone :: #type (queue: Queue, callback: QueueOnSubmittedWorkDoneCallback, userdata: *void) -> void #c_call;
ProcQueueSetLabel :: #type (queue: Queue, label: *u8) -> void #c_call;
ProcQueueSubmit :: #type (queue: Queue, commandCount: u64, commands: *CommandBuffer) -> void #c_call;
ProcQueueWriteBuffer :: #type (queue: Queue, buffer: Buffer, bufferOffset: u64, data: *void, size: u64) -> void #c_call;
ProcQueueWriteTexture :: #type (queue: Queue, destination: *ImageCopyTexture, data: *void, dataSize: u64, dataLayout: *TextureDataLayout, writeSize: *Extent3D) -> void #c_call;
ProcQueueReference :: #type (queue: Queue) -> void #c_call;
ProcQueueRelease :: #type (queue: Queue) -> void #c_call;

// Procs of RenderBundle
ProcRenderBundleSetLabel :: #type (renderBundle: RenderBundle, label: *u8) -> void #c_call;
ProcRenderBundleReference :: #type (renderBundle: RenderBundle) -> void #c_call;
ProcRenderBundleRelease :: #type (renderBundle: RenderBundle) -> void #c_call;

// Procs of RenderBundleEncoder
ProcRenderBundleEncoderDraw :: #type (renderBundleEncoder: RenderBundleEncoder, vertexCount: u32, instanceCount: u32, firstVertex: u32, firstInstance: u32) -> void #c_call;
ProcRenderBundleEncoderDrawIndexed :: #type (renderBundleEncoder: RenderBundleEncoder, indexCount: u32, instanceCount: u32, firstIndex: u32, baseVertex: s32, firstInstance: u32) -> void #c_call;
ProcRenderBundleEncoderDrawIndexedIndirect :: #type (renderBundleEncoder: RenderBundleEncoder, indirectBuffer: Buffer, indirectOffset: u64) -> void #c_call;
ProcRenderBundleEncoderDrawIndirect :: #type (renderBundleEncoder: RenderBundleEncoder, indirectBuffer: Buffer, indirectOffset: u64) -> void #c_call;
ProcRenderBundleEncoderFinish :: #type (renderBundleEncoder: RenderBundleEncoder, descriptor: *RenderBundleDescriptor) -> RenderBundle #c_call;
ProcRenderBundleEncoderInsertDebugMarker :: #type (renderBundleEncoder: RenderBundleEncoder, markerLabel: *u8) -> void #c_call;
ProcRenderBundleEncoderPopDebugGroup :: #type (renderBundleEncoder: RenderBundleEncoder) -> void #c_call;
ProcRenderBundleEncoderPushDebugGroup :: #type (renderBundleEncoder: RenderBundleEncoder, groupLabel: *u8) -> void #c_call;
ProcRenderBundleEncoderSetBindGroup :: #type (renderBundleEncoder: RenderBundleEncoder, groupIndex: u32, group: BindGroup, dynamicOffsetCount: u64, dynamicOffsets: *u32) -> void #c_call;
ProcRenderBundleEncoderSetIndexBuffer :: #type (renderBundleEncoder: RenderBundleEncoder, buffer: Buffer, format: IndexFormat, offset: u64, size: u64) -> void #c_call;
ProcRenderBundleEncoderSetLabel :: #type (renderBundleEncoder: RenderBundleEncoder, label: *u8) -> void #c_call;
ProcRenderBundleEncoderSetPipeline :: #type (renderBundleEncoder: RenderBundleEncoder, pipeline: RenderPipeline) -> void #c_call;
ProcRenderBundleEncoderSetVertexBuffer :: #type (renderBundleEncoder: RenderBundleEncoder, slot: u32, buffer: Buffer, offset: u64, size: u64) -> void #c_call;
ProcRenderBundleEncoderReference :: #type (renderBundleEncoder: RenderBundleEncoder) -> void #c_call;
ProcRenderBundleEncoderRelease :: #type (renderBundleEncoder: RenderBundleEncoder) -> void #c_call;

// Procs of RenderPassEncoder
ProcRenderPassEncoderBeginOcclusionQuery :: #type (renderPassEncoder: RenderPassEncoder, queryIndex: u32) -> void #c_call;
ProcRenderPassEncoderDraw :: #type (renderPassEncoder: RenderPassEncoder, vertexCount: u32, instanceCount: u32, firstVertex: u32, firstInstance: u32) -> void #c_call;
ProcRenderPassEncoderDrawIndexed :: #type (renderPassEncoder: RenderPassEncoder, indexCount: u32, instanceCount: u32, firstIndex: u32, baseVertex: s32, firstInstance: u32) -> void #c_call;
ProcRenderPassEncoderDrawIndexedIndirect :: #type (renderPassEncoder: RenderPassEncoder, indirectBuffer: Buffer, indirectOffset: u64) -> void #c_call;
ProcRenderPassEncoderDrawIndirect :: #type (renderPassEncoder: RenderPassEncoder, indirectBuffer: Buffer, indirectOffset: u64) -> void #c_call;
ProcRenderPassEncoderEnd :: #type (renderPassEncoder: RenderPassEncoder) -> void #c_call;
ProcRenderPassEncoderEndOcclusionQuery :: #type (renderPassEncoder: RenderPassEncoder) -> void #c_call;
ProcRenderPassEncoderExecuteBundles :: #type (renderPassEncoder: RenderPassEncoder, bundleCount: u64, bundles: *RenderBundle) -> void #c_call;
ProcRenderPassEncoderInsertDebugMarker :: #type (renderPassEncoder: RenderPassEncoder, markerLabel: *u8) -> void #c_call;
ProcRenderPassEncoderPopDebugGroup :: #type (renderPassEncoder: RenderPassEncoder) -> void #c_call;
ProcRenderPassEncoderPushDebugGroup :: #type (renderPassEncoder: RenderPassEncoder, groupLabel: *u8) -> void #c_call;
ProcRenderPassEncoderSetBindGroup :: #type (renderPassEncoder: RenderPassEncoder, groupIndex: u32, group: BindGroup, dynamicOffsetCount: u64, dynamicOffsets: *u32) -> void #c_call;
ProcRenderPassEncoderSetBlendConstant :: #type (renderPassEncoder: RenderPassEncoder, color: *Color) -> void #c_call;
ProcRenderPassEncoderSetIndexBuffer :: #type (renderPassEncoder: RenderPassEncoder, buffer: Buffer, format: IndexFormat, offset: u64, size: u64) -> void #c_call;
ProcRenderPassEncoderSetLabel :: #type (renderPassEncoder: RenderPassEncoder, label: *u8) -> void #c_call;
ProcRenderPassEncoderSetPipeline :: #type (renderPassEncoder: RenderPassEncoder, pipeline: RenderPipeline) -> void #c_call;
ProcRenderPassEncoderSetScissorRect :: #type (renderPassEncoder: RenderPassEncoder, x: u32, y: u32, width: u32, height: u32) -> void #c_call;
ProcRenderPassEncoderSetStencilReference :: #type (renderPassEncoder: RenderPassEncoder, reference: u32) -> void #c_call;
ProcRenderPassEncoderSetVertexBuffer :: #type (renderPassEncoder: RenderPassEncoder, slot: u32, buffer: Buffer, offset: u64, size: u64) -> void #c_call;
ProcRenderPassEncoderSetViewport :: #type (renderPassEncoder: RenderPassEncoder, x: float, y: float, width: float, height: float, minDepth: float, maxDepth: float) -> void #c_call;
ProcRenderPassEncoderReference :: #type (renderPassEncoder: RenderPassEncoder) -> void #c_call;
ProcRenderPassEncoderRelease :: #type (renderPassEncoder: RenderPassEncoder) -> void #c_call;

// Procs of RenderPipeline
ProcRenderPipelineGetBindGroupLayout :: #type (renderPipeline: RenderPipeline, groupIndex: u32) -> BindGroupLayout #c_call;
ProcRenderPipelineSetLabel :: #type (renderPipeline: RenderPipeline, label: *u8) -> void #c_call;
ProcRenderPipelineReference :: #type (renderPipeline: RenderPipeline) -> void #c_call;
ProcRenderPipelineRelease :: #type (renderPipeline: RenderPipeline) -> void #c_call;

// Procs of Sampler
ProcSamplerSetLabel :: #type (sampler: Sampler, label: *u8) -> void #c_call;
ProcSamplerReference :: #type (sampler: Sampler) -> void #c_call;
ProcSamplerRelease :: #type (sampler: Sampler) -> void #c_call;

// Procs of ShaderModule
ProcShaderModuleGetCompilationInfo :: #type (shaderModule: ShaderModule, callback: ShaderModuleGetCompilationInfoCallback, userdata: *void) -> void #c_call;
ProcShaderModuleSetLabel :: #type (shaderModule: ShaderModule, label: *u8) -> void #c_call;
ProcShaderModuleReference :: #type (shaderModule: ShaderModule) -> void #c_call;
ProcShaderModuleRelease :: #type (shaderModule: ShaderModule) -> void #c_call;

// Procs of Surface
ProcSurfaceConfigure :: #type (surface: Surface, config: *SurfaceConfiguration) -> void #c_call;
ProcSurfaceGetCapabilities :: #type (surface: Surface, adapter: Adapter, capabilities: *SurfaceCapabilities) -> void #c_call;
ProcSurfaceGetCurrentTexture :: #type (surface: Surface, surfaceTexture: *SurfaceTexture) -> void #c_call;
ProcSurfacePresent :: #type (surface: Surface) -> void #c_call;
ProcSurfaceSetLabel :: #type (surface: Surface, label: *u8) -> void #c_call;
ProcSurfaceUnconfigure :: #type (surface: Surface) -> void #c_call;
ProcSurfaceReference :: #type (surface: Surface) -> void #c_call;
ProcSurfaceRelease :: #type (surface: Surface) -> void #c_call;

// Procs of SurfaceCapabilities
ProcSurfaceCapabilitiesFreeMembers :: #type (surfaceCapabilities: SurfaceCapabilities) -> void #c_call;

// Procs of Texture
ProcTextureCreateView :: #type (texture: Texture, descriptor: *TextureViewDescriptor) -> TextureView #c_call;
ProcTextureDestroy :: #type (texture: Texture) -> void #c_call;
ProcTextureGetDepthOrArrayLayers :: #type (texture: Texture) -> u32 #c_call;
ProcTextureGetDimension :: #type (texture: Texture) -> TextureDimension #c_call;
ProcTextureGetFormat :: #type (texture: Texture) -> TextureFormat #c_call;
ProcTextureGetHeight :: #type (texture: Texture) -> u32 #c_call;
ProcTextureGetMipLevelCount :: #type (texture: Texture) -> u32 #c_call;
ProcTextureGetSampleCount :: #type (texture: Texture) -> u32 #c_call;
ProcTextureGetUsage :: #type (texture: Texture) -> TextureUsageFlags #c_call;
ProcTextureGetWidth :: #type (texture: Texture) -> u32 #c_call;
ProcTextureSetLabel :: #type (texture: Texture, label: *u8) -> void #c_call;
ProcTextureReference :: #type (texture: Texture) -> void #c_call;
ProcTextureRelease :: #type (texture: Texture) -> void #c_call;

// Procs of TextureView
ProcTextureViewSetLabel :: #type (textureView: TextureView, label: *u8) -> void #c_call;
ProcTextureViewReference :: #type (textureView: TextureView) -> void #c_call;
ProcTextureViewRelease :: #type (textureView: TextureView) -> void #c_call;

/**
* \defgroup GlobalFunctions Global Functions
* \brief Functions that are not specific to an object.
*
* @{
*/
CreateInstance :: (descriptor: *InstanceDescriptor) -> Instance #foreign libwgpu_native "wgpuCreateInstance";
GetProcAddress :: (device: Device, procName: *u8) -> Proc #foreign libwgpu_native "wgpuGetProcAddress";

/**
* \defgroup WGPUAdapterMethods WGPUAdapter methods
* \brief Functions whose first argument has type WGPUAdapter.
*
* @{
*/
AdapterEnumerateFeatures :: (adapter: Adapter, features: *FeatureName) -> u64 #foreign libwgpu_native "wgpuAdapterEnumerateFeatures";
AdapterGetInfo :: (adapter: Adapter, info: *AdapterInfo) -> void #foreign libwgpu_native "wgpuAdapterGetInfo";
AdapterGetLimits :: (adapter: Adapter, limits: *SupportedLimits) -> Bool #foreign libwgpu_native "wgpuAdapterGetLimits";
AdapterHasFeature :: (adapter: Adapter, feature: FeatureName) -> Bool #foreign libwgpu_native "wgpuAdapterHasFeature";
AdapterRequestDevice :: (adapter: Adapter, descriptor: *DeviceDescriptor, callback: AdapterRequestDeviceCallback, userdata: *void) -> void #foreign libwgpu_native "wgpuAdapterRequestDevice";
AdapterReference :: (adapter: Adapter) -> void #foreign libwgpu_native "wgpuAdapterReference";
AdapterRelease :: (adapter: Adapter) -> void #foreign libwgpu_native "wgpuAdapterRelease";

/**
* \defgroup WGPUAdapterInfoMethods WGPUAdapterInfo methods
* \brief Functions whose first argument has type WGPUAdapterInfo.
*
* @{
*/
AdapterInfoFreeMembers :: (adapterInfo: AdapterInfo) -> void #foreign libwgpu_native "wgpuAdapterInfoFreeMembers";

/**
* \defgroup WGPUBindGroupMethods WGPUBindGroup methods
* \brief Functions whose first argument has type WGPUBindGroup.
*
* @{
*/
BindGroupSetLabel :: (bindGroup: BindGroup, label: *u8) -> void #foreign libwgpu_native "wgpuBindGroupSetLabel";
BindGroupReference :: (bindGroup: BindGroup) -> void #foreign libwgpu_native "wgpuBindGroupReference";
BindGroupRelease :: (bindGroup: BindGroup) -> void #foreign libwgpu_native "wgpuBindGroupRelease";

/**
* \defgroup WGPUBindGroupLayoutMethods WGPUBindGroupLayout methods
* \brief Functions whose first argument has type WGPUBindGroupLayout.
*
* @{
*/
BindGroupLayoutSetLabel :: (bindGroupLayout: BindGroupLayout, label: *u8) -> void #foreign libwgpu_native "wgpuBindGroupLayoutSetLabel";
BindGroupLayoutReference :: (bindGroupLayout: BindGroupLayout) -> void #foreign libwgpu_native "wgpuBindGroupLayoutReference";
BindGroupLayoutRelease :: (bindGroupLayout: BindGroupLayout) -> void #foreign libwgpu_native "wgpuBindGroupLayoutRelease";

/**
* \defgroup WGPUBufferMethods WGPUBuffer methods
* \brief Functions whose first argument has type WGPUBuffer.
*
* @{
*/
BufferDestroy :: (buffer: Buffer) -> void #foreign libwgpu_native "wgpuBufferDestroy";
BufferGetConstMappedRange :: (buffer: Buffer, offset: u64, size: u64) -> *void #foreign libwgpu_native "wgpuBufferGetConstMappedRange";
BufferGetMapState :: (buffer: Buffer) -> BufferMapState #foreign libwgpu_native "wgpuBufferGetMapState";
BufferGetMappedRange :: (buffer: Buffer, offset: u64, size: u64) -> *void #foreign libwgpu_native "wgpuBufferGetMappedRange";
BufferGetSize :: (buffer: Buffer) -> u64 #foreign libwgpu_native "wgpuBufferGetSize";
BufferGetUsage :: (buffer: Buffer) -> BufferUsageFlags #foreign libwgpu_native "wgpuBufferGetUsage";
BufferMapAsync :: (buffer: Buffer, mode: MapModeFlags, offset: u64, size: u64, callback: BufferMapAsyncCallback, userdata: *void) -> void #foreign libwgpu_native "wgpuBufferMapAsync";
BufferSetLabel :: (buffer: Buffer, label: *u8) -> void #foreign libwgpu_native "wgpuBufferSetLabel";
BufferUnmap :: (buffer: Buffer) -> void #foreign libwgpu_native "wgpuBufferUnmap";
BufferReference :: (buffer: Buffer) -> void #foreign libwgpu_native "wgpuBufferReference";
BufferRelease :: (buffer: Buffer) -> void #foreign libwgpu_native "wgpuBufferRelease";

/**
* \defgroup WGPUCommandBufferMethods WGPUCommandBuffer methods
* \brief Functions whose first argument has type WGPUCommandBuffer.
*
* @{
*/
CommandBufferSetLabel :: (commandBuffer: CommandBuffer, label: *u8) -> void #foreign libwgpu_native "wgpuCommandBufferSetLabel";
CommandBufferReference :: (commandBuffer: CommandBuffer) -> void #foreign libwgpu_native "wgpuCommandBufferReference";
CommandBufferRelease :: (commandBuffer: CommandBuffer) -> void #foreign libwgpu_native "wgpuCommandBufferRelease";

/**
* \defgroup WGPUCommandEncoderMethods WGPUCommandEncoder methods
* \brief Functions whose first argument has type WGPUCommandEncoder.
*
* @{
*/
CommandEncoderBeginComputePass :: (commandEncoder: CommandEncoder, descriptor: *ComputePassDescriptor) -> ComputePassEncoder #foreign libwgpu_native "wgpuCommandEncoderBeginComputePass";
CommandEncoderBeginRenderPass :: (commandEncoder: CommandEncoder, descriptor: *RenderPassDescriptor) -> RenderPassEncoder #foreign libwgpu_native "wgpuCommandEncoderBeginRenderPass";
CommandEncoderClearBuffer :: (commandEncoder: CommandEncoder, buffer: Buffer, offset: u64, size: u64) -> void #foreign libwgpu_native "wgpuCommandEncoderClearBuffer";
CommandEncoderCopyBufferToBuffer :: (commandEncoder: CommandEncoder, source: Buffer, sourceOffset: u64, destination: Buffer, destinationOffset: u64, size: u64) -> void #foreign libwgpu_native "wgpuCommandEncoderCopyBufferToBuffer";
CommandEncoderCopyBufferToTexture :: (commandEncoder: CommandEncoder, source: *ImageCopyBuffer, destination: *ImageCopyTexture, copySize: *Extent3D) -> void #foreign libwgpu_native "wgpuCommandEncoderCopyBufferToTexture";
CommandEncoderCopyTextureToBuffer :: (commandEncoder: CommandEncoder, source: *ImageCopyTexture, destination: *ImageCopyBuffer, copySize: *Extent3D) -> void #foreign libwgpu_native "wgpuCommandEncoderCopyTextureToBuffer";
CommandEncoderCopyTextureToTexture :: (commandEncoder: CommandEncoder, source: *ImageCopyTexture, destination: *ImageCopyTexture, copySize: *Extent3D) -> void #foreign libwgpu_native "wgpuCommandEncoderCopyTextureToTexture";
CommandEncoderFinish :: (commandEncoder: CommandEncoder, descriptor: *CommandBufferDescriptor) -> CommandBuffer #foreign libwgpu_native "wgpuCommandEncoderFinish";
CommandEncoderInsertDebugMarker :: (commandEncoder: CommandEncoder, markerLabel: *u8) -> void #foreign libwgpu_native "wgpuCommandEncoderInsertDebugMarker";
CommandEncoderPopDebugGroup :: (commandEncoder: CommandEncoder) -> void #foreign libwgpu_native "wgpuCommandEncoderPopDebugGroup";
CommandEncoderPushDebugGroup :: (commandEncoder: CommandEncoder, groupLabel: *u8) -> void #foreign libwgpu_native "wgpuCommandEncoderPushDebugGroup";
CommandEncoderResolveQuerySet :: (commandEncoder: CommandEncoder, querySet: QuerySet, firstQuery: u32, queryCount: u32, destination: Buffer, destinationOffset: u64) -> void #foreign libwgpu_native "wgpuCommandEncoderResolveQuerySet";
CommandEncoderSetLabel :: (commandEncoder: CommandEncoder, label: *u8) -> void #foreign libwgpu_native "wgpuCommandEncoderSetLabel";
CommandEncoderWriteTimestamp :: (commandEncoder: CommandEncoder, querySet: QuerySet, queryIndex: u32) -> void #foreign libwgpu_native "wgpuCommandEncoderWriteTimestamp";
CommandEncoderReference :: (commandEncoder: CommandEncoder) -> void #foreign libwgpu_native "wgpuCommandEncoderReference";
CommandEncoderRelease :: (commandEncoder: CommandEncoder) -> void #foreign libwgpu_native "wgpuCommandEncoderRelease";

/**
* \defgroup WGPUComputePassEncoderMethods WGPUComputePassEncoder methods
* \brief Functions whose first argument has type WGPUComputePassEncoder.
*
* @{
*/
ComputePassEncoderDispatchWorkgroups :: (computePassEncoder: ComputePassEncoder, workgroupCountX: u32, workgroupCountY: u32, workgroupCountZ: u32) -> void #foreign libwgpu_native "wgpuComputePassEncoderDispatchWorkgroups";
ComputePassEncoderDispatchWorkgroupsIndirect :: (computePassEncoder: ComputePassEncoder, indirectBuffer: Buffer, indirectOffset: u64) -> void #foreign libwgpu_native "wgpuComputePassEncoderDispatchWorkgroupsIndirect";
ComputePassEncoderEnd :: (computePassEncoder: ComputePassEncoder) -> void #foreign libwgpu_native "wgpuComputePassEncoderEnd";
ComputePassEncoderInsertDebugMarker :: (computePassEncoder: ComputePassEncoder, markerLabel: *u8) -> void #foreign libwgpu_native "wgpuComputePassEncoderInsertDebugMarker";
ComputePassEncoderPopDebugGroup :: (computePassEncoder: ComputePassEncoder) -> void #foreign libwgpu_native "wgpuComputePassEncoderPopDebugGroup";
ComputePassEncoderPushDebugGroup :: (computePassEncoder: ComputePassEncoder, groupLabel: *u8) -> void #foreign libwgpu_native "wgpuComputePassEncoderPushDebugGroup";
ComputePassEncoderSetBindGroup :: (computePassEncoder: ComputePassEncoder, groupIndex: u32, group: BindGroup, dynamicOffsetCount: u64, dynamicOffsets: *u32) -> void #foreign libwgpu_native "wgpuComputePassEncoderSetBindGroup";
ComputePassEncoderSetLabel :: (computePassEncoder: ComputePassEncoder, label: *u8) -> void #foreign libwgpu_native "wgpuComputePassEncoderSetLabel";
ComputePassEncoderSetPipeline :: (computePassEncoder: ComputePassEncoder, pipeline: ComputePipeline) -> void #foreign libwgpu_native "wgpuComputePassEncoderSetPipeline";
ComputePassEncoderReference :: (computePassEncoder: ComputePassEncoder) -> void #foreign libwgpu_native "wgpuComputePassEncoderReference";
ComputePassEncoderRelease :: (computePassEncoder: ComputePassEncoder) -> void #foreign libwgpu_native "wgpuComputePassEncoderRelease";

/**
* \defgroup WGPUComputePipelineMethods WGPUComputePipeline methods
* \brief Functions whose first argument has type WGPUComputePipeline.
*
* @{
*/
ComputePipelineGetBindGroupLayout :: (computePipeline: ComputePipeline, groupIndex: u32) -> BindGroupLayout #foreign libwgpu_native "wgpuComputePipelineGetBindGroupLayout";
ComputePipelineSetLabel :: (computePipeline: ComputePipeline, label: *u8) -> void #foreign libwgpu_native "wgpuComputePipelineSetLabel";
ComputePipelineReference :: (computePipeline: ComputePipeline) -> void #foreign libwgpu_native "wgpuComputePipelineReference";
ComputePipelineRelease :: (computePipeline: ComputePipeline) -> void #foreign libwgpu_native "wgpuComputePipelineRelease";

/**
* \defgroup WGPUDeviceMethods WGPUDevice methods
* \brief Functions whose first argument has type WGPUDevice.
*
* @{
*/
DeviceCreateBindGroup :: (device: Device, descriptor: *BindGroupDescriptor) -> BindGroup #foreign libwgpu_native "wgpuDeviceCreateBindGroup";
DeviceCreateBindGroupLayout :: (device: Device, descriptor: *BindGroupLayoutDescriptor) -> BindGroupLayout #foreign libwgpu_native "wgpuDeviceCreateBindGroupLayout";
DeviceCreateBuffer :: (device: Device, descriptor: *BufferDescriptor) -> Buffer #foreign libwgpu_native "wgpuDeviceCreateBuffer";
DeviceCreateCommandEncoder :: (device: Device, descriptor: *CommandEncoderDescriptor) -> CommandEncoder #foreign libwgpu_native "wgpuDeviceCreateCommandEncoder";
DeviceCreateComputePipeline :: (device: Device, descriptor: *ComputePipelineDescriptor) -> ComputePipeline #foreign libwgpu_native "wgpuDeviceCreateComputePipeline";
DeviceCreateComputePipelineAsync :: (device: Device, descriptor: *ComputePipelineDescriptor, callback: DeviceCreateComputePipelineAsyncCallback, userdata: *void) -> void #foreign libwgpu_native "wgpuDeviceCreateComputePipelineAsync";
DeviceCreatePipelineLayout :: (device: Device, descriptor: *PipelineLayoutDescriptor) -> PipelineLayout #foreign libwgpu_native "wgpuDeviceCreatePipelineLayout";
DeviceCreateQuerySet :: (device: Device, descriptor: *QuerySetDescriptor) -> QuerySet #foreign libwgpu_native "wgpuDeviceCreateQuerySet";
DeviceCreateRenderBundleEncoder :: (device: Device, descriptor: *RenderBundleEncoderDescriptor) -> RenderBundleEncoder #foreign libwgpu_native "wgpuDeviceCreateRenderBundleEncoder";
DeviceCreateRenderPipeline :: (device: Device, descriptor: *RenderPipelineDescriptor) -> RenderPipeline #foreign libwgpu_native "wgpuDeviceCreateRenderPipeline";
DeviceCreateRenderPipelineAsync :: (device: Device, descriptor: *RenderPipelineDescriptor, callback: DeviceCreateRenderPipelineAsyncCallback, userdata: *void) -> void #foreign libwgpu_native "wgpuDeviceCreateRenderPipelineAsync";
DeviceCreateSampler :: (device: Device, descriptor: *SamplerDescriptor) -> Sampler #foreign libwgpu_native "wgpuDeviceCreateSampler";
DeviceCreateShaderModule :: (device: Device, descriptor: *ShaderModuleDescriptor) -> ShaderModule #foreign libwgpu_native "wgpuDeviceCreateShaderModule";
DeviceCreateTexture :: (device: Device, descriptor: *TextureDescriptor) -> Texture #foreign libwgpu_native "wgpuDeviceCreateTexture";
DeviceDestroy :: (device: Device) -> void #foreign libwgpu_native "wgpuDeviceDestroy";
DeviceEnumerateFeatures :: (device: Device, features: *FeatureName) -> u64 #foreign libwgpu_native "wgpuDeviceEnumerateFeatures";
DeviceGetLimits :: (device: Device, limits: *SupportedLimits) -> Bool #foreign libwgpu_native "wgpuDeviceGetLimits";
DeviceGetQueue :: (device: Device) -> Queue #foreign libwgpu_native "wgpuDeviceGetQueue";
DeviceHasFeature :: (device: Device, feature: FeatureName) -> Bool #foreign libwgpu_native "wgpuDeviceHasFeature";
DevicePopErrorScope :: (device: Device, callback: ErrorCallback, userdata: *void) -> void #foreign libwgpu_native "wgpuDevicePopErrorScope";
DevicePushErrorScope :: (device: Device, filter: ErrorFilter) -> void #foreign libwgpu_native "wgpuDevicePushErrorScope";
DeviceSetLabel :: (device: Device, label: *u8) -> void #foreign libwgpu_native "wgpuDeviceSetLabel";
DeviceReference :: (device: Device) -> void #foreign libwgpu_native "wgpuDeviceReference";
DeviceRelease :: (device: Device) -> void #foreign libwgpu_native "wgpuDeviceRelease";

/**
* \defgroup WGPUInstanceMethods WGPUInstance methods
* \brief Functions whose first argument has type WGPUInstance.
*
* @{
*/
InstanceCreateSurface :: (instance: Instance, descriptor: *SurfaceDescriptor) -> Surface #foreign libwgpu_native "wgpuInstanceCreateSurface";
InstanceHasWGSLLanguageFeature :: (instance: Instance, feature: WGSLFeatureName) -> Bool #foreign libwgpu_native "wgpuInstanceHasWGSLLanguageFeature";
InstanceProcessEvents :: (instance: Instance) -> void #foreign libwgpu_native "wgpuInstanceProcessEvents";
InstanceRequestAdapter :: (instance: Instance, options: *RequestAdapterOptions, callback: InstanceRequestAdapterCallback, userdata: *void) -> void #foreign libwgpu_native "wgpuInstanceRequestAdapter";
InstanceReference :: (instance: Instance) -> void #foreign libwgpu_native "wgpuInstanceReference";
InstanceRelease :: (instance: Instance) -> void #foreign libwgpu_native "wgpuInstanceRelease";

/**
* \defgroup WGPUPipelineLayoutMethods WGPUPipelineLayout methods
* \brief Functions whose first argument has type WGPUPipelineLayout.
*
* @{
*/
PipelineLayoutSetLabel :: (pipelineLayout: PipelineLayout, label: *u8) -> void #foreign libwgpu_native "wgpuPipelineLayoutSetLabel";
PipelineLayoutReference :: (pipelineLayout: PipelineLayout) -> void #foreign libwgpu_native "wgpuPipelineLayoutReference";
PipelineLayoutRelease :: (pipelineLayout: PipelineLayout) -> void #foreign libwgpu_native "wgpuPipelineLayoutRelease";

/**
* \defgroup WGPUQuerySetMethods WGPUQuerySet methods
* \brief Functions whose first argument has type WGPUQuerySet.
*
* @{
*/
QuerySetDestroy :: (querySet: QuerySet) -> void #foreign libwgpu_native "wgpuQuerySetDestroy";
QuerySetGetCount :: (querySet: QuerySet) -> u32 #foreign libwgpu_native "wgpuQuerySetGetCount";
QuerySetGetType :: (querySet: QuerySet) -> QueryType #foreign libwgpu_native "wgpuQuerySetGetType";
QuerySetSetLabel :: (querySet: QuerySet, label: *u8) -> void #foreign libwgpu_native "wgpuQuerySetSetLabel";
QuerySetReference :: (querySet: QuerySet) -> void #foreign libwgpu_native "wgpuQuerySetReference";
QuerySetRelease :: (querySet: QuerySet) -> void #foreign libwgpu_native "wgpuQuerySetRelease";

/**
* \defgroup WGPUQueueMethods WGPUQueue methods
* \brief Functions whose first argument has type WGPUQueue.
*
* @{
*/
QueueOnSubmittedWorkDone :: (queue: Queue, callback: QueueOnSubmittedWorkDoneCallback, userdata: *void) -> void #foreign libwgpu_native "wgpuQueueOnSubmittedWorkDone";
QueueSetLabel :: (queue: Queue, label: *u8) -> void #foreign libwgpu_native "wgpuQueueSetLabel";
QueueSubmit :: (queue: Queue, commandCount: u64, commands: *CommandBuffer) -> void #foreign libwgpu_native "wgpuQueueSubmit";
QueueWriteBuffer :: (queue: Queue, buffer: Buffer, bufferOffset: u64, data: *void, size: u64) -> void #foreign libwgpu_native "wgpuQueueWriteBuffer";
QueueWriteTexture :: (queue: Queue, destination: *ImageCopyTexture, data: *void, dataSize: u64, dataLayout: *TextureDataLayout, writeSize: *Extent3D) -> void #foreign libwgpu_native "wgpuQueueWriteTexture";
QueueReference :: (queue: Queue) -> void #foreign libwgpu_native "wgpuQueueReference";
QueueRelease :: (queue: Queue) -> void #foreign libwgpu_native "wgpuQueueRelease";

/**
* \defgroup WGPURenderBundleMethods WGPURenderBundle methods
* \brief Functions whose first argument has type WGPURenderBundle.
*
* @{
*/
RenderBundleSetLabel :: (renderBundle: RenderBundle, label: *u8) -> void #foreign libwgpu_native "wgpuRenderBundleSetLabel";
RenderBundleReference :: (renderBundle: RenderBundle) -> void #foreign libwgpu_native "wgpuRenderBundleReference";
RenderBundleRelease :: (renderBundle: RenderBundle) -> void #foreign libwgpu_native "wgpuRenderBundleRelease";

/**
* \defgroup WGPURenderBundleEncoderMethods WGPURenderBundleEncoder methods
* \brief Functions whose first argument has type WGPURenderBundleEncoder.
*
* @{
*/
RenderBundleEncoderDraw :: (renderBundleEncoder: RenderBundleEncoder, vertexCount: u32, instanceCount: u32, firstVertex: u32, firstInstance: u32) -> void #foreign libwgpu_native "wgpuRenderBundleEncoderDraw";
RenderBundleEncoderDrawIndexed :: (renderBundleEncoder: RenderBundleEncoder, indexCount: u32, instanceCount: u32, firstIndex: u32, baseVertex: s32, firstInstance: u32) -> void #foreign libwgpu_native "wgpuRenderBundleEncoderDrawIndexed";
RenderBundleEncoderDrawIndexedIndirect :: (renderBundleEncoder: RenderBundleEncoder, indirectBuffer: Buffer, indirectOffset: u64) -> void #foreign libwgpu_native "wgpuRenderBundleEncoderDrawIndexedIndirect";
RenderBundleEncoderDrawIndirect :: (renderBundleEncoder: RenderBundleEncoder, indirectBuffer: Buffer, indirectOffset: u64) -> void #foreign libwgpu_native "wgpuRenderBundleEncoderDrawIndirect";
RenderBundleEncoderFinish :: (renderBundleEncoder: RenderBundleEncoder, descriptor: *RenderBundleDescriptor) -> RenderBundle #foreign libwgpu_native "wgpuRenderBundleEncoderFinish";
RenderBundleEncoderInsertDebugMarker :: (renderBundleEncoder: RenderBundleEncoder, markerLabel: *u8) -> void #foreign libwgpu_native "wgpuRenderBundleEncoderInsertDebugMarker";
RenderBundleEncoderPopDebugGroup :: (renderBundleEncoder: RenderBundleEncoder) -> void #foreign libwgpu_native "wgpuRenderBundleEncoderPopDebugGroup";
RenderBundleEncoderPushDebugGroup :: (renderBundleEncoder: RenderBundleEncoder, groupLabel: *u8) -> void #foreign libwgpu_native "wgpuRenderBundleEncoderPushDebugGroup";
RenderBundleEncoderSetBindGroup :: (renderBundleEncoder: RenderBundleEncoder, groupIndex: u32, group: BindGroup, dynamicOffsetCount: u64, dynamicOffsets: *u32) -> void #foreign libwgpu_native "wgpuRenderBundleEncoderSetBindGroup";
RenderBundleEncoderSetIndexBuffer :: (renderBundleEncoder: RenderBundleEncoder, buffer: Buffer, format: IndexFormat, offset: u64, size: u64) -> void #foreign libwgpu_native "wgpuRenderBundleEncoderSetIndexBuffer";
RenderBundleEncoderSetLabel :: (renderBundleEncoder: RenderBundleEncoder, label: *u8) -> void #foreign libwgpu_native "wgpuRenderBundleEncoderSetLabel";
RenderBundleEncoderSetPipeline :: (renderBundleEncoder: RenderBundleEncoder, pipeline: RenderPipeline) -> void #foreign libwgpu_native "wgpuRenderBundleEncoderSetPipeline";
RenderBundleEncoderSetVertexBuffer :: (renderBundleEncoder: RenderBundleEncoder, slot: u32, buffer: Buffer, offset: u64, size: u64) -> void #foreign libwgpu_native "wgpuRenderBundleEncoderSetVertexBuffer";
RenderBundleEncoderReference :: (renderBundleEncoder: RenderBundleEncoder) -> void #foreign libwgpu_native "wgpuRenderBundleEncoderReference";
RenderBundleEncoderRelease :: (renderBundleEncoder: RenderBundleEncoder) -> void #foreign libwgpu_native "wgpuRenderBundleEncoderRelease";

/**
* \defgroup WGPURenderPassEncoderMethods WGPURenderPassEncoder methods
* \brief Functions whose first argument has type WGPURenderPassEncoder.
*
* @{
*/
RenderPassEncoderBeginOcclusionQuery :: (renderPassEncoder: RenderPassEncoder, queryIndex: u32) -> void #foreign libwgpu_native "wgpuRenderPassEncoderBeginOcclusionQuery";
RenderPassEncoderDraw :: (renderPassEncoder: RenderPassEncoder, vertexCount: u32, instanceCount: u32, firstVertex: u32, firstInstance: u32) -> void #foreign libwgpu_native "wgpuRenderPassEncoderDraw";
RenderPassEncoderDrawIndexed :: (renderPassEncoder: RenderPassEncoder, indexCount: u32, instanceCount: u32, firstIndex: u32, baseVertex: s32, firstInstance: u32) -> void #foreign libwgpu_native "wgpuRenderPassEncoderDrawIndexed";
RenderPassEncoderDrawIndexedIndirect :: (renderPassEncoder: RenderPassEncoder, indirectBuffer: Buffer, indirectOffset: u64) -> void #foreign libwgpu_native "wgpuRenderPassEncoderDrawIndexedIndirect";
RenderPassEncoderDrawIndirect :: (renderPassEncoder: RenderPassEncoder, indirectBuffer: Buffer, indirectOffset: u64) -> void #foreign libwgpu_native "wgpuRenderPassEncoderDrawIndirect";
RenderPassEncoderEnd :: (renderPassEncoder: RenderPassEncoder) -> void #foreign libwgpu_native "wgpuRenderPassEncoderEnd";
RenderPassEncoderEndOcclusionQuery :: (renderPassEncoder: RenderPassEncoder) -> void #foreign libwgpu_native "wgpuRenderPassEncoderEndOcclusionQuery";
RenderPassEncoderExecuteBundles :: (renderPassEncoder: RenderPassEncoder, bundleCount: u64, bundles: *RenderBundle) -> void #foreign libwgpu_native "wgpuRenderPassEncoderExecuteBundles";
RenderPassEncoderInsertDebugMarker :: (renderPassEncoder: RenderPassEncoder, markerLabel: *u8) -> void #foreign libwgpu_native "wgpuRenderPassEncoderInsertDebugMarker";
RenderPassEncoderPopDebugGroup :: (renderPassEncoder: RenderPassEncoder) -> void #foreign libwgpu_native "wgpuRenderPassEncoderPopDebugGroup";
RenderPassEncoderPushDebugGroup :: (renderPassEncoder: RenderPassEncoder, groupLabel: *u8) -> void #foreign libwgpu_native "wgpuRenderPassEncoderPushDebugGroup";
RenderPassEncoderSetBindGroup :: (renderPassEncoder: RenderPassEncoder, groupIndex: u32, group: BindGroup, dynamicOffsetCount: u64, dynamicOffsets: *u32) -> void #foreign libwgpu_native "wgpuRenderPassEncoderSetBindGroup";
RenderPassEncoderSetBlendConstant :: (renderPassEncoder: RenderPassEncoder, color: *Color) -> void #foreign libwgpu_native "wgpuRenderPassEncoderSetBlendConstant";
RenderPassEncoderSetIndexBuffer :: (renderPassEncoder: RenderPassEncoder, buffer: Buffer, format: IndexFormat, offset: u64, size: u64) -> void #foreign libwgpu_native "wgpuRenderPassEncoderSetIndexBuffer";
RenderPassEncoderSetLabel :: (renderPassEncoder: RenderPassEncoder, label: *u8) -> void #foreign libwgpu_native "wgpuRenderPassEncoderSetLabel";
RenderPassEncoderSetPipeline :: (renderPassEncoder: RenderPassEncoder, pipeline: RenderPipeline) -> void #foreign libwgpu_native "wgpuRenderPassEncoderSetPipeline";
RenderPassEncoderSetScissorRect :: (renderPassEncoder: RenderPassEncoder, x: u32, y: u32, width: u32, height: u32) -> void #foreign libwgpu_native "wgpuRenderPassEncoderSetScissorRect";
RenderPassEncoderSetStencilReference :: (renderPassEncoder: RenderPassEncoder, reference: u32) -> void #foreign libwgpu_native "wgpuRenderPassEncoderSetStencilReference";
RenderPassEncoderSetVertexBuffer :: (renderPassEncoder: RenderPassEncoder, slot: u32, buffer: Buffer, offset: u64, size: u64) -> void #foreign libwgpu_native "wgpuRenderPassEncoderSetVertexBuffer";
RenderPassEncoderSetViewport :: (renderPassEncoder: RenderPassEncoder, x: float, y: float, width: float, height: float, minDepth: float, maxDepth: float) -> void #foreign libwgpu_native "wgpuRenderPassEncoderSetViewport";
RenderPassEncoderReference :: (renderPassEncoder: RenderPassEncoder) -> void #foreign libwgpu_native "wgpuRenderPassEncoderReference";
RenderPassEncoderRelease :: (renderPassEncoder: RenderPassEncoder) -> void #foreign libwgpu_native "wgpuRenderPassEncoderRelease";

/**
* \defgroup WGPURenderPipelineMethods WGPURenderPipeline methods
* \brief Functions whose first argument has type WGPURenderPipeline.
*
* @{
*/
RenderPipelineGetBindGroupLayout :: (renderPipeline: RenderPipeline, groupIndex: u32) -> BindGroupLayout #foreign libwgpu_native "wgpuRenderPipelineGetBindGroupLayout";
RenderPipelineSetLabel :: (renderPipeline: RenderPipeline, label: *u8) -> void #foreign libwgpu_native "wgpuRenderPipelineSetLabel";
RenderPipelineReference :: (renderPipeline: RenderPipeline) -> void #foreign libwgpu_native "wgpuRenderPipelineReference";
RenderPipelineRelease :: (renderPipeline: RenderPipeline) -> void #foreign libwgpu_native "wgpuRenderPipelineRelease";

/**
* \defgroup WGPUSamplerMethods WGPUSampler methods
* \brief Functions whose first argument has type WGPUSampler.
*
* @{
*/
SamplerSetLabel :: (sampler: Sampler, label: *u8) -> void #foreign libwgpu_native "wgpuSamplerSetLabel";
SamplerReference :: (sampler: Sampler) -> void #foreign libwgpu_native "wgpuSamplerReference";
SamplerRelease :: (sampler: Sampler) -> void #foreign libwgpu_native "wgpuSamplerRelease";

/**
* \defgroup WGPUShaderModuleMethods WGPUShaderModule methods
* \brief Functions whose first argument has type WGPUShaderModule.
*
* @{
*/
ShaderModuleGetCompilationInfo :: (shaderModule: ShaderModule, callback: ShaderModuleGetCompilationInfoCallback, userdata: *void) -> void #foreign libwgpu_native "wgpuShaderModuleGetCompilationInfo";
ShaderModuleSetLabel :: (shaderModule: ShaderModule, label: *u8) -> void #foreign libwgpu_native "wgpuShaderModuleSetLabel";
ShaderModuleReference :: (shaderModule: ShaderModule) -> void #foreign libwgpu_native "wgpuShaderModuleReference";
ShaderModuleRelease :: (shaderModule: ShaderModule) -> void #foreign libwgpu_native "wgpuShaderModuleRelease";

/**
* \defgroup WGPUSurfaceMethods WGPUSurface methods
* \brief Functions whose first argument has type WGPUSurface.
*
* @{
*/
SurfaceConfigure :: (surface: Surface, config: *SurfaceConfiguration) -> void #foreign libwgpu_native "wgpuSurfaceConfigure";
SurfaceGetCapabilities :: (surface: Surface, adapter: Adapter, capabilities: *SurfaceCapabilities) -> void #foreign libwgpu_native "wgpuSurfaceGetCapabilities";
SurfaceGetCurrentTexture :: (surface: Surface, surfaceTexture: *SurfaceTexture) -> void #foreign libwgpu_native "wgpuSurfaceGetCurrentTexture";
SurfacePresent :: (surface: Surface) -> void #foreign libwgpu_native "wgpuSurfacePresent";
SurfaceSetLabel :: (surface: Surface, label: *u8) -> void #foreign libwgpu_native "wgpuSurfaceSetLabel";
SurfaceUnconfigure :: (surface: Surface) -> void #foreign libwgpu_native "wgpuSurfaceUnconfigure";
SurfaceReference :: (surface: Surface) -> void #foreign libwgpu_native "wgpuSurfaceReference";
SurfaceRelease :: (surface: Surface) -> void #foreign libwgpu_native "wgpuSurfaceRelease";

/**
* \defgroup WGPUSurfaceCapabilitiesMethods WGPUSurfaceCapabilities methods
* \brief Functions whose first argument has type WGPUSurfaceCapabilities.
*
* @{
*/
SurfaceCapabilitiesFreeMembers :: (surfaceCapabilities: SurfaceCapabilities) -> void #foreign libwgpu_native "wgpuSurfaceCapabilitiesFreeMembers";

/**
* \defgroup WGPUTextureMethods WGPUTexture methods
* \brief Functions whose first argument has type WGPUTexture.
*
* @{
*/
TextureCreateView :: (texture: Texture, descriptor: *TextureViewDescriptor) -> TextureView #foreign libwgpu_native "wgpuTextureCreateView";
TextureDestroy :: (texture: Texture) -> void #foreign libwgpu_native "wgpuTextureDestroy";
TextureGetDepthOrArrayLayers :: (texture: Texture) -> u32 #foreign libwgpu_native "wgpuTextureGetDepthOrArrayLayers";
TextureGetDimension :: (texture: Texture) -> TextureDimension #foreign libwgpu_native "wgpuTextureGetDimension";
TextureGetFormat :: (texture: Texture) -> TextureFormat #foreign libwgpu_native "wgpuTextureGetFormat";
TextureGetHeight :: (texture: Texture) -> u32 #foreign libwgpu_native "wgpuTextureGetHeight";
TextureGetMipLevelCount :: (texture: Texture) -> u32 #foreign libwgpu_native "wgpuTextureGetMipLevelCount";
TextureGetSampleCount :: (texture: Texture) -> u32 #foreign libwgpu_native "wgpuTextureGetSampleCount";
TextureGetUsage :: (texture: Texture) -> TextureUsageFlags #foreign libwgpu_native "wgpuTextureGetUsage";
TextureGetWidth :: (texture: Texture) -> u32 #foreign libwgpu_native "wgpuTextureGetWidth";
TextureSetLabel :: (texture: Texture, label: *u8) -> void #foreign libwgpu_native "wgpuTextureSetLabel";
TextureReference :: (texture: Texture) -> void #foreign libwgpu_native "wgpuTextureReference";
TextureRelease :: (texture: Texture) -> void #foreign libwgpu_native "wgpuTextureRelease";

/**
* \defgroup WGPUTextureViewMethods WGPUTextureView methods
* \brief Functions whose first argument has type WGPUTextureView.
*
* @{
*/
TextureViewSetLabel :: (textureView: TextureView, label: *u8) -> void #foreign libwgpu_native "wgpuTextureViewSetLabel";
TextureViewReference :: (textureView: TextureView) -> void #foreign libwgpu_native "wgpuTextureViewReference";
TextureViewRelease :: (textureView: TextureView) -> void #foreign libwgpu_native "wgpuTextureViewRelease";

NativeSType :: enum u32 {
    SType_DeviceExtras               :: 196609;
    SType_RequiredLimitsExtras       :: 196610;
    SType_PipelineLayoutExtras       :: 196611;
    SType_ShaderModuleGLSLDescriptor :: 196612;
    SType_SupportedLimitsExtras      :: 196613;
    SType_InstanceExtras             :: 196614;
    SType_BindGroupEntryExtras       :: 196615;
    SType_BindGroupLayoutEntryExtras :: 196616;
    SType_QuerySetDescriptorExtras   :: 196617;
    SType_SurfaceConfigurationExtras :: 196618;
    Force32                          :: 2147483647;
}

NativeFeature :: enum u32 {
    PushConstants                                         :: 196609;
    TextureAdapterSpecificFormatFeatures                  :: 196610;
    MultiDrawIndirect                                     :: 196611;
    MultiDrawIndirectCount                                :: 196612;
    VertexWritableStorage                                 :: 196613;
    TextureBindingArray                                   :: 196614;
    SampledTextureAndStorageBufferArrayNonUniformIndexing :: 196615;
    PipelineStatisticsQuery                               :: 196616;
    StorageResourceBindingArray                           :: 196617;
    PartiallyBoundBindingArray                            :: 196618;
    TextureFormat16bitNorm                                :: 196619;
    TextureCompressionAstcHdr                             :: 196620;

    MappablePrimaryBuffers                                :: 196622;
    BufferBindingArray                                    :: 196623;
    UniformBufferAndStorageTextureArrayNonUniformIndexing :: 196624;

    VertexAttribute64bit                                  :: 196633;
    ShaderUnusedVertexOutput                              :: 196634;
    TextureFormatNv12                                     :: 196635;
    RayTracingAccelerationStructure                       :: 196636;
    RayQuery                                              :: 196637;
    ShaderF64                                             :: 196638;
    ShaderI16                                             :: 196639;
    ShaderPrimitiveIndex                                  :: 196640;
    ShaderEarlyDepthTest                                  :: 196641;
    Force32                                               :: 2147483647;
}

LogLevel :: enum u32 {
    Off     :: 0;
    Error   :: 1;
    Warn    :: 2;
    Info    :: 3;
    Debug   :: 4;
    Trace   :: 5;
    Force32 :: 2147483647;
}

InstanceBackend :: enum u32 {
    All           :: 0;
    Vulkan        :: 1;
    GL            :: 2;
    Metal         :: 4;
    DX12          :: 8;
    DX11          :: 16;
    BrowserWebGPU :: 32;
    Primary       :: 45;

    Secondary     :: 18;
    Force32       :: 2147483647;
}

InstanceBackendFlags :: Flags;

InstanceFlag :: enum u32 {
    Default          :: 0;
    Debug            :: 1;
    Validation       :: 2;
    DiscardHalLabels :: 4;
    Force32          :: 2147483647;
}

InstanceFlags :: Flags;

Dx12Compiler :: enum u32 {
    Undefined :: 0;
    Fxc       :: 1;
    Dxc       :: 2;
    Force32   :: 2147483647;
}

Gles3MinorVersion :: enum u32 {
    Automatic :: 0;
    Version0  :: 1;
    Version1  :: 2;
    Version2  :: 3;
    Force32   :: 2147483647;
}

PipelineStatisticName :: enum u32 {
    VertexShaderInvocations   :: 0;
    ClipperInvocations        :: 1;
    ClipperPrimitivesOut      :: 2;
    FragmentShaderInvocations :: 3;
    ComputeShaderInvocations  :: 4;
    Force32                   :: 2147483647;
}

NativeQueryType :: enum u32 {
    PipelineStatistics :: 196608;
    Force32            :: 2147483647;
}

InstanceExtras :: struct {
    chain:              ChainedStruct;
    backends:           InstanceBackendFlags;
    flags:              InstanceFlags;
    dx12ShaderCompiler: Dx12Compiler;
    gles3MinorVersion:  Gles3MinorVersion;
    dxilPath:           *u8;
    dxcPath:            *u8;
}

DeviceExtras :: struct {
    chain:     ChainedStruct;
    tracePath: *u8;
}

NativeLimits :: struct {
    maxPushConstantSize:   u32;
    maxNonSamplerBindings: u32;
}

RequiredLimitsExtras :: struct {
    chain:  ChainedStruct;
    limits: NativeLimits;
}

SupportedLimitsExtras :: struct {
    chain:  ChainedStructOut;
    limits: NativeLimits;
}

PushConstantRange :: struct {
    stages: ShaderStageFlags;
    start:  u32;
    end:    u32;
}

PipelineLayoutExtras :: struct {
    chain:                  ChainedStruct;
    pushConstantRangeCount: u64;
    pushConstantRanges:     *PushConstantRange;
}

SubmissionIndex :: u64;

WrappedSubmissionIndex :: struct {
    queue:           Queue;
    submissionIndex: SubmissionIndex;
}

ShaderDefine :: struct {
    name:  *u8;
    value: *u8;
}

ShaderModuleGLSLDescriptor :: struct {
    chain:       ChainedStruct;
    stage:       ShaderStage;
    code:        *u8;
    defineCount: u32;
    defines:     *ShaderDefine;
}

RegistryReport :: struct {
    numAllocated:        u64;
    numKeptFromUser:     u64;
    numReleasedFromUser: u64;
    numError:            u64;
    elementSize:         u64;
}

HubReport :: struct {
    adapters:         RegistryReport;
    devices:          RegistryReport;
    queues:           RegistryReport;
    pipelineLayouts:  RegistryReport;
    shaderModules:    RegistryReport;
    bindGroupLayouts: RegistryReport;
    bindGroups:       RegistryReport;
    commandBuffers:   RegistryReport;
    renderBundles:    RegistryReport;
    renderPipelines:  RegistryReport;
    computePipelines: RegistryReport;
    querySets:        RegistryReport;
    buffers:          RegistryReport;
    textures:         RegistryReport;
    textureViews:     RegistryReport;
    samplers:         RegistryReport;
}

GlobalReport :: struct {
    surfaces:    RegistryReport;
    backendType: BackendType;
    vulkan:      HubReport;
    metal:       HubReport;
    dx12:        HubReport;
    gl:          HubReport;
}

InstanceEnumerateAdapterOptions :: struct {
    nextInChain: *ChainedStruct;
    backends:    InstanceBackendFlags;
}

BindGroupEntryExtras :: struct {
    chain:            ChainedStruct;
    buffers:          *Buffer;
    bufferCount:      u64;
    samplers:         *Sampler;
    samplerCount:     u64;
    textureViews:     *TextureView;
    textureViewCount: u64;
}

BindGroupLayoutEntryExtras :: struct {
    chain: ChainedStruct;
    count: u32;
}

QuerySetDescriptorExtras :: struct {
    chain:                  ChainedStruct;
    pipelineStatistics:     *PipelineStatisticName;
    pipelineStatisticCount: u64;
}

SurfaceConfigurationExtras :: struct {
    chain:                      ChainedStruct;
    desiredMaximumFrameLatency: Bool;
}

LogCallback :: #type (level: LogLevel, message: *u8, userdata: *void) -> void #c_call;

NativeTextureFormat :: enum u32 {
    R16Unorm    :: 196609;
    R16Snorm    :: 196610;
    Rg16Unorm   :: 196611;
    Rg16Snorm   :: 196612;
    Rgba16Unorm :: 196613;
    Rgba16Snorm :: 196614;

    NV12        :: 196615;
}

GenerateReport :: (instance: Instance, report: *GlobalReport) -> void #foreign libwgpu_native "wgpuGenerateReport";
InstanceEnumerateAdapters :: (instance: Instance, options: *InstanceEnumerateAdapterOptions, adapters: *Adapter) -> u64 #foreign libwgpu_native "wgpuInstanceEnumerateAdapters";

QueueSubmitForIndex :: (queue: Queue, commandCount: u64, commands: *CommandBuffer) -> SubmissionIndex #foreign libwgpu_native "wgpuQueueSubmitForIndex";

// Returns true if the queue is empty, or false if there are more queue submissions still in flight.
DevicePoll :: (device: Device, wait: Bool, wrappedSubmissionIndex: *WrappedSubmissionIndex) -> Bool #foreign libwgpu_native "wgpuDevicePoll";

SetLogCallback :: (callback: LogCallback, userdata: *void) -> void #foreign libwgpu_native "wgpuSetLogCallback";

SetLogLevel :: (level: LogLevel) -> void #foreign libwgpu_native "wgpuSetLogLevel";

GetVersion :: () -> u32 #foreign libwgpu_native "wgpuGetVersion";

RenderPassEncoderSetPushConstants :: (encoder: RenderPassEncoder, stages: ShaderStageFlags, offset: u32, sizeBytes: u32, data: *void) -> void #foreign libwgpu_native "wgpuRenderPassEncoderSetPushConstants";

RenderPassEncoderMultiDrawIndirect :: (encoder: RenderPassEncoder, buffer: Buffer, offset: u64, count: u32) -> void #foreign libwgpu_native "wgpuRenderPassEncoderMultiDrawIndirect";
RenderPassEncoderMultiDrawIndexedIndirect :: (encoder: RenderPassEncoder, buffer: Buffer, offset: u64, count: u32) -> void #foreign libwgpu_native "wgpuRenderPassEncoderMultiDrawIndexedIndirect";

RenderPassEncoderMultiDrawIndirectCount :: (encoder: RenderPassEncoder, buffer: Buffer, offset: u64, count_buffer: Buffer, count_buffer_offset: u64, max_count: u32) -> void #foreign libwgpu_native "wgpuRenderPassEncoderMultiDrawIndirectCount";
RenderPassEncoderMultiDrawIndexedIndirectCount :: (encoder: RenderPassEncoder, buffer: Buffer, offset: u64, count_buffer: Buffer, count_buffer_offset: u64, max_count: u32) -> void #foreign libwgpu_native "wgpuRenderPassEncoderMultiDrawIndexedIndirectCount";

ComputePassEncoderBeginPipelineStatisticsQuery :: (computePassEncoder: ComputePassEncoder, querySet: QuerySet, queryIndex: u32) -> void #foreign libwgpu_native "wgpuComputePassEncoderBeginPipelineStatisticsQuery";
ComputePassEncoderEndPipelineStatisticsQuery :: (computePassEncoder: ComputePassEncoder) -> void #foreign libwgpu_native "wgpuComputePassEncoderEndPipelineStatisticsQuery";
RenderPassEncoderBeginPipelineStatisticsQuery :: (renderPassEncoder: RenderPassEncoder, querySet: QuerySet, queryIndex: u32) -> void #foreign libwgpu_native "wgpuRenderPassEncoderBeginPipelineStatisticsQuery";
RenderPassEncoderEndPipelineStatisticsQuery :: (renderPassEncoder: RenderPassEncoder) -> void #foreign libwgpu_native "wgpuRenderPassEncoderEndPipelineStatisticsQuery";

#scope_file

