package ntdll;

use strict;

require Exporter;

use wine;
use vars qw(@ISA @EXPORT @EXPORT_OK);

@ISA = qw(Exporter);
@EXPORT = qw();
@EXPORT_OK = qw();

my $module_declarations = {
    "DbgBreakPoint" => ["void",  []],
    "DbgUserBreakPoint" => ["void",  []],
    "NtAcceptConnectPort" => ["long",  ["long", "long", "long", "long", "long", "long"]],
    "NtAccessCheck" => ["long",  ["ptr", "long", "long", "ptr", "ptr", "ptr", "ptr", "ptr"]],
    "NtAdjustPrivilegesToken" => ["long",  ["long", "long", "ptr", "long", "ptr", "ptr"]],
    "NtAllocateLocallyUniqueId" => ["long",  ["ptr"]],
    "NtAllocateUuids" => ["long",  ["ptr", "ptr", "ptr"]],
    "NtClearEvent" => ["long",  ["long"]],
    "NtClose" => ["long",  ["long"]],
    "NtCompleteConnectPort" => ["long",  ["long"]],
    "NtConnectPort" => ["long",  ["long", "ptr", "long", "long", "long", "long", "long", "long"]],
    "NtCreateDirectoryObject" => ["long",  ["ptr", "long", "ptr"]],
    "NtCreateEvent" => ["long",  ["ptr", "long", "ptr", "long", "long"]],
    "NtCreateFile" => ["long",  ["ptr", "long", "ptr", "ptr", "ptr", "long", "long", "long", "long", "ptr", "long"]],
    "NtCreateKey" => ["long",  ["ptr", "long", "ptr", "long", "ptr", "long", "ptr"]],
    "NtCreateMailslotFile" => ["long",  ["long", "long", "long", "long", "long", "long", "long", "long"]],
    "NtCreatePagingFile" => ["long",  ["ptr", "long", "long", "ptr"]],
    "NtCreatePort" => ["long",  ["long", "long", "long", "long", "long"]],
    "NtCreateSection" => ["long",  ["ptr", "long", "ptr", "ptr", "long", "long", "long"]],
    "NtCreateSemaphore" => ["long",  ["ptr", "long", "ptr", "long", "long"]],
    "NtCreateSymbolicLinkObject" => ["long",  ["ptr", "long", "ptr", "ptr"]],
    "NtCreateTimer" => ["long",  ["ptr", "long", "ptr", "long"]],
    "NtCurrentTeb" => ["ptr",  []],
    "NtDeleteKey" => ["long",  ["long"]],
    "NtDeleteValueKey" => ["long",  ["long", "ptr"]],
    "NtDeviceIoControlFile" => ["long",  ["long", "long", "ptr", "ptr", "ptr", "long", "ptr", "long", "ptr", "long"]],
    "NtDisplayString" => ["long",  ["ptr"]],
    "NtDuplicateObject" => ["long",  ["long", "ptr", "long", "ptr", "long", "long", "long"]],
    "NtDuplicateToken" => ["long",  ["long", "long", "ptr", "long", "long", "ptr"]],
    "NtEnumerateKey" => ["long",  ["long", "long", "long", "ptr", "long", "ptr"]],
    "NtEnumerateValueKey" => ["long",  ["long", "long", "long", "ptr", "long", "ptr"]],
    "NtFlushKey" => ["long",  ["long"]],
    "NtFsControlFile" => ["long",  ["long", "long", "ptr", "ptr", "ptr", "long", "ptr", "long", "ptr", "long"]],
    "NtListenPort" => ["long",  ["long", "long"]],
    "NtLoadKey" => ["long",  ["ptr", "ptr"]],
    "NtMapViewOfSection" => ["long",  ["long", "long", "ptr", "long", "long", "ptr", "ptr", "long", "long", "long"]],
    "NtNotifyChangeKey" => ["long",  ["long", "long", "ptr", "ptr", "ptr", "long", "long", "ptr", "long", "long"]],
    "NtOpenDirectoryObject" => ["long",  ["ptr", "long", "ptr"]],
    "NtOpenEvent" => ["long",  ["ptr", "long", "ptr"]],
    "NtOpenFile" => ["long",  ["ptr", "long", "ptr", "ptr", "long", "long"]],
    "NtOpenKey" => ["long",  ["ptr", "long", "ptr"]],
    "NtOpenProcessToken" => ["long",  ["long", "long", "ptr"]],
    "NtOpenSection" => ["long",  ["ptr", "long", "ptr"]],
    "NtOpenSemaphore" => ["long",  ["ptr", "long", "ptr"]],
    "NtOpenSymbolicLinkObject" => ["long",  ["ptr", "long", "ptr"]],
    "NtOpenThreadToken" => ["long",  ["long", "long", "long", "ptr"]],
    "NtPowerInformation" => ["long",  ["long", "long", "long", "long", "long"]],
    "NtPulseEvent" => ["long",  ["long", "ptr"]],
    "NtQueryDirectoryFile" => ["long",  ["long", "long", "ptr", "ptr", "ptr", "ptr", "long", "long", "long", "ptr", "long"]],
    "NtQueryDirectoryObject" => ["long",  ["long", "ptr", "long", "long", "long", "ptr", "ptr"]],
    "NtQueryEvent" => ["long",  ["long", "long", "ptr", "long", "ptr"]],
    "NtQueryInformationFile" => ["long",  ["long", "ptr", "ptr", "long", "long"]],
    "NtQueryInformationProcess" => ["long",  ["long", "long", "ptr", "long", "ptr"]],
    "NtQueryInformationThread" => ["long",  ["long", "long", "ptr", "long", "ptr"]],
    "NtQueryInformationToken" => ["long",  ["long", "long", "ptr", "long", "ptr"]],
    "NtQueryKey" => ["long",  ["long", "long", "ptr", "long", "ptr"]],
    "NtQueryObject" => ["long",  ["long", "long", "ptr", "long", "ptr"]],
    "NtQueryPerformanceCounter" => ["long",  ["ptr", "ptr"]],
    "NtQuerySection" => ["long",  ["long", "ptr", "ptr", "long", "ptr"]],
    "NtQuerySecurityObject" => ["long",  ["long", "long", "ptr", "long", "ptr"]],
    "NtQuerySemaphore" => ["long",  ["long", "ptr", "ptr", "long", "ptr"]],
    "NtQuerySymbolicLinkObject" => ["long",  ["long", "ptr", "ptr"]],
    "NtQuerySystemInformation" => ["long",  ["long", "ptr", "long", "ptr"]],
    "NtQuerySystemTime" => ["void",  ["ptr"]],
    "NtQueryTimerResolution" => ["long",  ["long", "long", "long"]],
    "NtQueryValueKey" => ["long",  ["long", "ptr", "long", "ptr", "long", "ptr"]],
    "NtQueryVolumeInformationFile" => ["long",  ["long", "ptr", "ptr", "long", "long"]],
    "NtRaiseException" => ["void",  ["ptr", "ptr", "long", "ptr"]],
    "NtReadFile" => ["long",  ["long", "long", "ptr", "ptr", "ptr", "ptr", "long", "ptr", "ptr"]],
    "NtRegisterThreadTerminatePort" => ["long",  ["long"]],
    "NtReleaseSemaphore" => ["long",  ["long", "long", "ptr"]],
    "NtReplaceKey" => ["long",  ["ptr", "long", "ptr"]],
    "NtReplyWaitReceivePort" => ["long",  ["long", "long", "long", "long"]],
    "NtRequestWaitReplyPort" => ["long",  ["long", "long", "long"]],
    "NtResetEvent" => ["long",  ["long", "ptr"]],
    "NtRestoreKey" => ["long",  ["long", "long", "long"]],
    "NtResumeThread" => ["long",  ["long", "ptr"]],
    "NtSaveKey" => ["long",  ["long", "long"]],
    "NtSetEvent" => ["long",  ["long", "ptr"]],
    "NtSetInformationFile" => ["long",  ["long", "ptr", "ptr", "long", "long"]],
    "NtSetInformationKey" => ["long",  ["long", "long", "ptr", "long"]],
    "NtSetInformationProcess" => ["long",  ["long", "long", "ptr", "long"]],
    "NtSetInformationThread" => ["long",  ["long", "long", "ptr", "long"]],
    "NtSetIntervalProfile" => ["long",  ["long", "long"]],
    "NtSetSecurityObject" => ["long",  ["long", "long", "ptr"]],
    "NtSetTimer" => ["long",  ["long", "ptr", "ptr", "ptr", "long", "long", "ptr"]],
    "NtSetValueKey" => ["long",  ["long", "ptr", "long", "long", "ptr", "long"]],
    "NtSetVolumeInformationFile" => ["long",  ["long", "ptr", "ptr", "long", "long"]],
    "NtTerminateProcess" => ["long",  ["long", "long"]],
    "NtTerminateThread" => ["long",  ["long", "long"]],
    "NtUnloadKey" => ["long",  ["long"]],
    "NtWaitForSingleObject" => ["long",  ["ptr", "long", "ptr"]],
    "RtlAcquirePebLock" => ["void",  []],
    "RtlAcquireResourceExclusive" => ["long",  ["ptr", "long"]],
    "RtlAcquireResourceShared" => ["long",  ["ptr", "long"]],
    "RtlAddAccessAllowedAce" => ["long",  ["ptr", "long", "long", "ptr"]],
    "RtlAddAce" => ["long",  ["ptr", "long", "long", "ptr", "long"]],
    "RtlAdjustPrivilege" => ["long",  ["long", "long", "long", "long"]],
    "RtlAllocateAndInitializeSid" => ["long",  ["ptr", "long", "long", "long", "long", "long", "long", "long", "long", "long", "ptr"]],
    "RtlAllocateHeap" => ["ptr",  ["long", "long", "long"]],
    "RtlAnsiStringToUnicodeSize" => ["long",  ["ptr"]],
    "RtlAnsiStringToUnicodeString" => ["long",  ["ptr", "ptr", "long"]],
    "RtlAppendAsciizToString" => ["long",  ["ptr", "str"]],
    "RtlAppendStringToString" => ["long",  ["ptr", "ptr"]],
    "RtlAppendUnicodeStringToString" => ["long",  ["ptr", "ptr"]],
    "RtlAppendUnicodeToString" => ["long",  ["ptr", "wstr"]],
    "RtlAssert" => ["void",  ["ptr", "ptr", "long", "long"]],
    "RtlClearBits" => ["long",  ["long", "long", "long"]],
    "RtlCompactHeap" => ["long",  ["long", "long"]],
    "RtlCompareMemory" => ["long",  ["ptr", "ptr", "long"]],
    "RtlCompareString" => ["long",  ["ptr", "ptr", "long"]],
    "RtlCompareUnicodeString" => ["long",  ["ptr", "ptr", "long"]],
    "RtlConvertLongToLargeInteger" => ["longlong",  ["long"]],
    "RtlConvertSidToUnicodeString" => ["long",  ["ptr", "ptr"]],
    "RtlConvertUlongToLargeInteger" => ["longlong",  ["long"]],
    "RtlCopySid" => ["long",  ["long", "ptr", "ptr"]],
    "RtlCopyString" => ["void",  ["ptr", "ptr"]],
    "RtlCopyUnicodeString" => ["void",  ["ptr", "ptr"]],
    "RtlCreateAcl" => ["long",  ["ptr", "long", "long"]],
    "RtlCreateEnvironment" => ["long",  ["long", "long"]],
    "RtlCreateHeap" => ["long",  ["long", "ptr", "long", "long", "ptr", "ptr"]],
    "RtlCreateSecurityDescriptor" => ["long",  ["ptr", "long"]],
    "RtlCreateUnicodeString" => ["long",  ["ptr", "wstr"]],
    "RtlCreateUnicodeStringFromAsciiz" => ["long",  ["ptr", "str"]],
    "RtlDeleteCriticalSection" => ["long",  ["ptr"]],
    "RtlDeleteResource" => ["void",  ["ptr"]],
    "RtlDeleteSecurityObject" => ["long",  ["long"]],
    "RtlDestroyEnvironment" => ["long",  ["long"]],
    "RtlDestroyHeap" => ["long",  ["long"]],
    "RtlDosPathNameToNtPathName_U" => ["long",  ["wstr", "ptr", "long", "long"]],
    "RtlDumpResource" => ["void",  ["ptr"]],
    "RtlEnlargedIntegerMultiply" => ["longlong",  ["long", "long"]],
    "RtlEnlargedUnsignedDivide" => ["long",  ["long", "long", "long", "ptr"]],
    "RtlEnlargedUnsignedMultiply" => ["longlong",  ["long", "long"]],
    "RtlEnterCriticalSection" => ["long",  ["ptr"]],
    "RtlEqualPrefixSid" => ["long",  ["ptr", "ptr"]],
    "RtlEqualSid" => ["long",  ["ptr", "ptr"]],
    "RtlEqualString" => ["long",  ["ptr", "ptr", "long"]],
    "RtlEqualUnicodeString" => ["long",  ["ptr", "ptr", "long"]],
    "RtlEraseUnicodeString" => ["void",  ["ptr"]],
    "RtlExtendedIntegerMultiply" => ["longlong",  ["long", "long", "long"]],
    "RtlExtendedLargeIntegerDivide" => ["longlong",  ["long", "long", "long", "ptr"]],
    "RtlFillMemory" => ["void",  ["ptr", "long", "long"]],
    "RtlFindClearBits" => ["long",  ["long", "long", "long"]],
    "RtlFirstFreeAce" => ["long",  ["ptr", "ptr"]],
    "RtlFormatCurrentUserKeyPath" => ["long",  ["ptr"]],
    "RtlFreeAnsiString" => ["void",  ["ptr"]],
    "RtlFreeHeap" => ["long",  ["long", "long", "ptr"]],
    "RtlFreeOemString" => ["void",  ["ptr"]],
    "RtlFreeSid" => ["long",  ["ptr"]],
    "RtlFreeUnicodeString" => ["void",  ["ptr"]],
    "RtlGetAce" => ["long",  ["ptr", "long", "ptr"]],
    "RtlGetControlSecurityDescriptor" => ["long",  ["ptr", "ptr", "ptr"]],
    "RtlGetDaclSecurityDescriptor" => ["long",  ["ptr", "ptr", "ptr", "ptr"]],
    "RtlGetGroupSecurityDescriptor" => ["long",  ["ptr", "ptr", "ptr"]],
    "RtlGetNtProductType" => ["long",  ["ptr"]],
    "RtlGetOwnerSecurityDescriptor" => ["long",  ["ptr", "ptr", "ptr"]],
    "RtlGetProcessHeaps" => ["long",  ["long", "ptr"]],
    "RtlGetSaclSecurityDescriptor" => ["long",  ["ptr", "ptr", "ptr", "ptr"]],
    "RtlIdentifierAuthoritySid" => ["ptr",  ["ptr"]],
    "RtlImageNtHeader" => ["ptr",  ["long"]],
    "RtlImpersonateSelf" => ["long",  ["long"]],
    "RtlInitAnsiString" => ["void",  ["ptr", "str"]],
    "RtlInitString" => ["void",  ["ptr", "str"]],
    "RtlInitUnicodeString" => ["void",  ["ptr", "wstr"]],
    "RtlInitializeBitMap" => ["long",  ["long", "long", "long"]],
    "RtlInitializeCriticalSection" => ["long",  ["ptr"]],
    "RtlInitializeCriticalSectionAndSpinCount" => ["long",  ["ptr", "long"]],
    "RtlInitializeGenericTable" => ["long",  []],
    "RtlInitializeResource" => ["void",  ["ptr"]],
    "RtlInitializeSid" => ["long",  ["ptr", "ptr", "long"]],
    "RtlIntegerToChar" => ["long",  ["long", "long", "long", "long"]],
    "RtlIsTextUnicode" => ["long",  ["ptr", "long", "ptr"]],
    "RtlLargeIntegerAdd" => ["longlong",  ["long", "long", "long", "long"]],
    "RtlLargeIntegerArithmeticShift" => ["longlong",  ["long", "long", "long"]],
    "RtlLargeIntegerDivide" => ["longlong",  ["long", "long", "long", "long", "ptr"]],
    "RtlLargeIntegerNegate" => ["longlong",  ["long", "long"]],
    "RtlLargeIntegerShiftLeft" => ["longlong",  ["long", "long", "long"]],
    "RtlLargeIntegerShiftRight" => ["longlong",  ["long", "long", "long"]],
    "RtlLargeIntegerSubtract" => ["longlong",  ["long", "long", "long", "long"]],
    "RtlLeaveCriticalSection" => ["long",  ["ptr"]],
    "RtlLengthRequiredSid" => ["long",  ["long"]],
    "RtlLengthSecurityDescriptor" => ["long",  ["ptr"]],
    "RtlLengthSid" => ["long",  ["ptr"]],
    "RtlLockHeap" => ["long",  ["long"]],
    "RtlMakeSelfRelativeSD" => ["long",  ["ptr", "ptr", "ptr"]],
    "RtlMoveMemory" => ["void",  ["ptr", "ptr", "long"]],
    "RtlMultiByteToUnicodeN" => ["long",  ["wstr", "long", "ptr", "str", "long"]],
    "RtlMultiByteToUnicodeSize" => ["long",  ["ptr", "str", "long"]],
    "RtlNewSecurityObject" => ["long",  ["long", "long", "long", "long", "long", "long"]],
    "RtlNormalizeProcessParams" => ["ptr",  ["ptr"]],
    "RtlNtStatusToDosError" => ["long",  ["long"]],
    "RtlOemStringToUnicodeSize" => ["long",  ["ptr"]],
    "RtlOemStringToUnicodeString" => ["long",  ["ptr", "ptr", "long"]],
    "RtlOemToUnicodeN" => ["long",  ["wstr", "long", "ptr", "str", "long"]],
    "RtlOpenCurrentUser" => ["long",  ["long", "ptr"]],
    "RtlPrefixString" => ["long",  ["ptr", "ptr", "long"]],
    "RtlPrefixUnicodeString" => ["long",  ["ptr", "ptr", "long"]],
    "RtlQueryEnvironmentVariable_U" => ["long",  ["long", "ptr", "ptr"]],
    "RtlRaiseException" => ["void",  ["ptr", "ptr"]],
    "RtlRaiseStatus" => ["void",  ["long"]],
    "RtlReAllocateHeap" => ["ptr",  ["long", "long", "ptr", "long"]],
    "RtlReleasePebLock" => ["void",  []],
    "RtlReleaseResource" => ["void",  ["ptr"]],
    "RtlSecondsSince1970ToTime" => ["void",  ["long", "ptr"]],
    "RtlSecondsSince1980ToTime" => ["void",  ["long", "ptr"]],
    "RtlSetBits" => ["long",  ["long", "long", "long"]],
    "RtlSetDaclSecurityDescriptor" => ["long",  ["ptr", "long", "ptr", "long"]],
    "RtlSetEnvironmentVariable" => ["long",  ["long", "ptr", "ptr"]],
    "RtlSetGroupSecurityDescriptor" => ["long",  ["ptr", "ptr", "long"]],
    "RtlSetOwnerSecurityDescriptor" => ["long",  ["ptr", "ptr", "long"]],
    "RtlSetSaclSecurityDescriptor" => ["long",  ["ptr", "long", "ptr", "long"]],
    "RtlSizeHeap" => ["long",  ["long", "long", "ptr"]],
    "RtlSubAuthorityCountSid" => ["ptr",  ["ptr"]],
    "RtlSubAuthoritySid" => ["ptr",  ["ptr", "long"]],
    "RtlSystemTimeToLocalTime" => ["void",  ["ptr", "ptr"]],
    "RtlTimeFieldsToTime" => ["long",  ["ptr", "ptr"]],
    "RtlTimeToElapsedTimeFields" => ["void",  ["ptr", "ptr"]],
    "RtlTimeToSecondsSince1970" => ["long",  ["ptr", "ptr"]],
    "RtlTimeToSecondsSince1980" => ["long",  ["ptr", "ptr"]],
    "RtlTimeToTimeFields" => ["void",  ["ptr", "ptr"]],
    "RtlTryEnterCriticalSection" => ["long",  ["ptr"]],
    "RtlUnicodeStringToAnsiSize" => ["long",  ["ptr"]],
    "RtlUnicodeStringToAnsiString" => ["long",  ["ptr", "ptr", "long"]],
    "RtlUnicodeStringToOemSize" => ["long",  ["ptr"]],
    "RtlUnicodeStringToOemString" => ["long",  ["ptr", "ptr", "long"]],
    "RtlUnicodeToMultiByteN" => ["long",  ["str", "long", "ptr", "wstr", "long"]],
    "RtlUnicodeToMultiByteSize" => ["long",  ["ptr", "wstr", "long"]],
    "RtlUnicodeToOemN" => ["long",  ["str", "long", "ptr", "wstr", "long"]],
    "RtlUnlockHeap" => ["long",  ["long"]],
    "RtlUnwind" => ["void",  ["ptr", "ptr", "ptr", "long", "ptr"]],
    "RtlUpcaseUnicodeString" => ["long",  ["ptr", "ptr", "long"]],
    "RtlUpcaseUnicodeStringToAnsiString" => ["long",  ["ptr", "ptr", "long"]],
    "RtlUpcaseUnicodeStringToOemString" => ["long",  ["ptr", "ptr", "long"]],
    "RtlUpcaseUnicodeToMultiByteN" => ["long",  ["str", "long", "ptr", "wstr", "long"]],
    "RtlUpcaseUnicodeToOemN" => ["long",  ["str", "long", "ptr", "wstr", "long"]],
    "RtlUpperString" => ["void",  ["ptr", "ptr"]],
    "RtlValidSecurityDescriptor" => ["long",  ["ptr"]],
    "RtlValidSid" => ["long",  ["ptr"]],
    "RtlValidateHeap" => ["long",  ["long", "long", "ptr"]],
    "RtlWalkHeap" => ["long",  ["long", "ptr"]],
    "RtlZeroMemory" => ["void",  ["ptr", "long"]],
    "RtlpUnWaitCriticalSection" => ["long",  ["ptr"]],
    "RtlpWaitForCriticalSection" => ["long",  ["ptr"]],
    "RtlxAnsiStringToUnicodeSize" => ["long",  ["ptr"]],
    "RtlxOemStringToUnicodeSize" => ["long",  ["ptr"]],
    "RtlxUnicodeStringToAnsiSize" => ["long",  ["ptr"]],
    "RtlxUnicodeStringToOemSize" => ["long",  ["ptr"]],
    "ZwAcceptConnectPort" => ["long",  ["long", "long", "long", "long", "long", "long"]],
    "ZwAdjustGroupsToken" => ["long",  ["long", "long", "ptr", "long", "ptr", "ptr"]],
    "ZwCompleteConnectPort" => ["long",  ["long"]],
    "ZwConnectPort" => ["long",  ["long", "ptr", "long", "long", "long", "long", "long", "long"]],
    "ZwCreateDirectoryObject" => ["long",  ["ptr", "long", "ptr"]],
    "ZwCreateEvent" => ["long",  ["ptr", "long", "ptr", "long", "long"]],
    "ZwCreateFile" => ["long",  ["ptr", "long", "ptr", "ptr", "ptr", "long", "long", "long", "long", "ptr", "long"]],
    "ZwCreateKey" => ["long",  ["ptr", "long", "ptr", "long", "ptr", "long", "ptr"]],
    "ZwCreateMailslotFile" => ["long",  ["long", "long", "long", "long", "long", "long", "long", "long"]],
    "ZwCreatePagingFile" => ["long",  ["ptr", "long", "long", "ptr"]],
    "ZwCreatePort" => ["long",  ["long", "long", "long", "long", "long"]],
    "ZwCreateSection" => ["long",  ["ptr", "long", "ptr", "ptr", "long", "long", "long"]],
    "ZwCreateTimer" => ["long",  ["ptr", "long", "ptr", "long"]],
    "ZwDeleteKey" => ["long",  ["long"]],
    "ZwDeleteValueKey" => ["long",  ["long", "ptr"]],
    "ZwDeviceIoControlFile" => ["long",  ["long", "long", "ptr", "ptr", "ptr", "long", "ptr", "long", "ptr", "long"]],
    "ZwDuplicateObject" => ["long",  ["long", "ptr", "long", "ptr", "long", "long", "long"]],
    "ZwDuplicateToken" => ["long",  ["long", "long", "ptr", "long", "long", "ptr"]],
    "ZwEnumerateKey" => ["long",  ["long", "long", "long", "ptr", "long", "ptr"]],
    "ZwEnumerateValueKey" => ["long",  ["long", "long", "long", "ptr", "long", "ptr"]],
    "ZwFlushKey" => ["long",  ["long"]],
    "ZwFsControlFile" => ["long",  ["long", "long", "ptr", "ptr", "ptr", "long", "ptr", "long", "ptr", "long"]],
    "ZwListenPort" => ["long",  ["long", "long"]],
    "ZwLoadKey" => ["long",  ["ptr", "ptr"]],
    "ZwMapViewOfSection" => ["long",  ["long", "long", "ptr", "long", "long", "ptr", "ptr", "long", "long", "long"]],
    "ZwNotifyChangeKey" => ["long",  ["long", "long", "ptr", "ptr", "ptr", "long", "long", "ptr", "long", "long"]],
    "ZwOpenDirectoryObject" => ["long",  ["ptr", "long", "ptr"]],
    "ZwOpenEvent" => ["long",  ["ptr", "long", "ptr"]],
    "ZwOpenFile" => ["long",  ["ptr", "long", "ptr", "ptr", "long", "long"]],
    "ZwOpenKey" => ["long",  ["ptr", "long", "ptr"]],
    "ZwOpenProcessToken" => ["long",  ["long", "long", "ptr"]],
    "ZwOpenSection" => ["long",  ["ptr", "long", "ptr"]],
    "ZwOpenThreadToken" => ["long",  ["long", "long", "long", "ptr"]],
    "ZwQueryDirectoryFile" => ["long",  ["long", "long", "ptr", "ptr", "ptr", "ptr", "long", "long", "long", "ptr", "long"]],
    "ZwQueryDirectoryObject" => ["long",  ["long", "ptr", "long", "long", "long", "ptr", "ptr"]],
    "ZwQueryInformationFile" => ["long",  ["long", "ptr", "ptr", "long", "long"]],
    "ZwQueryInformationProcess" => ["long",  ["long", "long", "ptr", "long", "ptr"]],
    "ZwQueryInformationThread" => ["long",  ["long", "long", "ptr", "long", "ptr"]],
    "ZwQueryInformationToken" => ["long",  ["long", "long", "ptr", "long", "ptr"]],
    "ZwQueryKey" => ["long",  ["long", "long", "ptr", "long", "ptr"]],
    "ZwQueryObject" => ["long",  ["long", "long", "ptr", "long", "ptr"]],
    "ZwQuerySystemInformation" => ["long",  ["long", "ptr", "long", "ptr"]],
    "ZwQuerySystemTime" => ["void",  ["ptr"]],
    "ZwQueryValueKey" => ["long",  ["long", "ptr", "long", "ptr", "long", "ptr"]],
    "ZwQueryVolumeInformationFile" => ["long",  ["long", "ptr", "ptr", "long", "long"]],
    "ZwReadFile" => ["long",  ["long", "long", "ptr", "ptr", "ptr", "ptr", "long", "ptr", "ptr"]],
    "ZwRegisterThreadTerminatePort" => ["long",  ["long"]],
    "ZwReplaceKey" => ["long",  ["ptr", "long", "ptr"]],
    "ZwReplyWaitReceivePort" => ["long",  ["long", "long", "long", "long"]],
    "ZwRequestWaitReplyPort" => ["long",  ["long", "long", "long"]],
    "ZwRestoreKey" => ["long",  ["long", "long", "long"]],
    "ZwResumeThread" => ["long",  ["long", "ptr"]],
    "ZwSaveKey" => ["long",  ["long", "long"]],
    "ZwSetEvent" => ["long",  ["long", "ptr"]],
    "ZwSetInformationFile" => ["long",  ["long", "ptr", "ptr", "long", "long"]],
    "ZwSetInformationKey" => ["long",  ["long", "long", "ptr", "long"]],
    "ZwSetInformationProcess" => ["long",  ["long", "long", "ptr", "long"]],
    "ZwSetInformationThread" => ["long",  ["long", "long", "ptr", "long"]],
    "ZwSetIntervalProfile" => ["long",  ["long", "long"]],
    "ZwSetTimer" => ["long",  ["long", "ptr", "ptr", "ptr", "long", "long", "ptr"]],
    "ZwSetValueKey" => ["long",  ["long", "ptr", "long", "long", "ptr", "long"]],
    "ZwSetVolumeInformationFile" => ["long",  ["long", "ptr", "ptr", "long", "long"]],
    "ZwTerminateThread" => ["long",  ["long", "long"]],
    "ZwUnloadKey" => ["long",  ["long"]],
    "ZwWaitForSingleObject" => ["long",  ["ptr", "long", "ptr"]],
    "_alldiv" => ["longlong",  ["long", "long", "long", "long"]],
    "_allmul" => ["longlong",  ["long", "long", "long", "long"]],
    "_alloca_probe" => ["void",  ["ptr"]],
    "_allrem" => ["longlong",  ["long", "long", "long", "long"]],
    "_aulldiv" => ["longlong",  ["long", "long", "long", "long"]],
    "_aullrem" => ["longlong",  ["long", "long", "long", "long"]],
    "_chkstk" => ["void",  ["ptr"]]
};

&wine::declare("ntdll",%$module_declarations);
push @EXPORT, map { "&" . $_; } sort(keys(%$module_declarations));
1;