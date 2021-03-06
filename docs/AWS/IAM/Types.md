## Module AWS.IAM.Types

#### `options`

``` purescript
options :: Options
```

#### `AccessKey`

``` purescript
newtype AccessKey
  = AccessKey { "UserName" :: UserNameType', "AccessKeyId" :: AccessKeyIdType', "Status" :: StatusType', "SecretAccessKey" :: AccessKeySecretType', "CreateDate" :: Maybe (DateType') }
```

<p>Contains information about an AWS access key.</p> <p> This data type is used as a response element in the <a>CreateAccessKey</a> and <a>ListAccessKeys</a> actions. </p> <note> <p>The <code>SecretAccessKey</code> value is returned only in response to <a>CreateAccessKey</a>. You can get a secret access key only when you first create an access key; you cannot recover the secret access key later. If you lose a secret access key, you must create a new access key.</p> </note>

##### Instances
``` purescript
Newtype AccessKey _
Generic AccessKey _
Show AccessKey
Decode AccessKey
Encode AccessKey
```

#### `newAccessKey`

``` purescript
newAccessKey :: AccessKeyIdType' -> AccessKeySecretType' -> StatusType' -> UserNameType' -> AccessKey
```

Constructs AccessKey from required parameters

#### `newAccessKey'`

``` purescript
newAccessKey' :: AccessKeyIdType' -> AccessKeySecretType' -> StatusType' -> UserNameType' -> ({ "UserName" :: UserNameType', "AccessKeyId" :: AccessKeyIdType', "Status" :: StatusType', "SecretAccessKey" :: AccessKeySecretType', "CreateDate" :: Maybe (DateType') } -> { "UserName" :: UserNameType', "AccessKeyId" :: AccessKeyIdType', "Status" :: StatusType', "SecretAccessKey" :: AccessKeySecretType', "CreateDate" :: Maybe (DateType') }) -> AccessKey
```

Constructs AccessKey's fields from required parameters

#### `AccessKeyLastUsed`

``` purescript
newtype AccessKeyLastUsed
  = AccessKeyLastUsed { "LastUsedDate" :: DateType', "ServiceName" :: StringType', "Region" :: StringType' }
```

<p>Contains information about the last time an AWS access key was used.</p> <p>This data type is used as a response element in the <a>GetAccessKeyLastUsed</a> action.</p>

##### Instances
``` purescript
Newtype AccessKeyLastUsed _
Generic AccessKeyLastUsed _
Show AccessKeyLastUsed
Decode AccessKeyLastUsed
Encode AccessKeyLastUsed
```

#### `newAccessKeyLastUsed`

``` purescript
newAccessKeyLastUsed :: DateType' -> StringType' -> StringType' -> AccessKeyLastUsed
```

Constructs AccessKeyLastUsed from required parameters

#### `newAccessKeyLastUsed'`

``` purescript
newAccessKeyLastUsed' :: DateType' -> StringType' -> StringType' -> ({ "LastUsedDate" :: DateType', "ServiceName" :: StringType', "Region" :: StringType' } -> { "LastUsedDate" :: DateType', "ServiceName" :: StringType', "Region" :: StringType' }) -> AccessKeyLastUsed
```

Constructs AccessKeyLastUsed's fields from required parameters

#### `AccessKeyMetadata`

``` purescript
newtype AccessKeyMetadata
  = AccessKeyMetadata { "UserName" :: Maybe (UserNameType'), "AccessKeyId" :: Maybe (AccessKeyIdType'), "Status" :: Maybe (StatusType'), "CreateDate" :: Maybe (DateType') }
```

<p>Contains information about an AWS access key, without its secret key.</p> <p>This data type is used as a response element in the <a>ListAccessKeys</a> action.</p>

##### Instances
``` purescript
Newtype AccessKeyMetadata _
Generic AccessKeyMetadata _
Show AccessKeyMetadata
Decode AccessKeyMetadata
Encode AccessKeyMetadata
```

#### `newAccessKeyMetadata`

``` purescript
newAccessKeyMetadata :: AccessKeyMetadata
```

Constructs AccessKeyMetadata from required parameters

#### `newAccessKeyMetadata'`

``` purescript
newAccessKeyMetadata' :: ({ "UserName" :: Maybe (UserNameType'), "AccessKeyId" :: Maybe (AccessKeyIdType'), "Status" :: Maybe (StatusType'), "CreateDate" :: Maybe (DateType') } -> { "UserName" :: Maybe (UserNameType'), "AccessKeyId" :: Maybe (AccessKeyIdType'), "Status" :: Maybe (StatusType'), "CreateDate" :: Maybe (DateType') }) -> AccessKeyMetadata
```

Constructs AccessKeyMetadata's fields from required parameters

#### `ActionNameListType`

``` purescript
newtype ActionNameListType
  = ActionNameListType (Array ActionNameType)
```

##### Instances
``` purescript
Newtype ActionNameListType _
Generic ActionNameListType _
Show ActionNameListType
Decode ActionNameListType
Encode ActionNameListType
```

#### `ActionNameType`

``` purescript
newtype ActionNameType
  = ActionNameType String
```

##### Instances
``` purescript
Newtype ActionNameType _
Generic ActionNameType _
Show ActionNameType
Decode ActionNameType
Encode ActionNameType
```

#### `AddClientIDToOpenIDConnectProviderRequest`

``` purescript
newtype AddClientIDToOpenIDConnectProviderRequest
  = AddClientIDToOpenIDConnectProviderRequest { "OpenIDConnectProviderArn" :: ArnType', "ClientID" :: ClientIDType' }
```

##### Instances
``` purescript
Newtype AddClientIDToOpenIDConnectProviderRequest _
Generic AddClientIDToOpenIDConnectProviderRequest _
Show AddClientIDToOpenIDConnectProviderRequest
Decode AddClientIDToOpenIDConnectProviderRequest
Encode AddClientIDToOpenIDConnectProviderRequest
```

#### `newAddClientIDToOpenIDConnectProviderRequest`

``` purescript
newAddClientIDToOpenIDConnectProviderRequest :: ClientIDType' -> ArnType' -> AddClientIDToOpenIDConnectProviderRequest
```

Constructs AddClientIDToOpenIDConnectProviderRequest from required parameters

#### `newAddClientIDToOpenIDConnectProviderRequest'`

``` purescript
newAddClientIDToOpenIDConnectProviderRequest' :: ClientIDType' -> ArnType' -> ({ "OpenIDConnectProviderArn" :: ArnType', "ClientID" :: ClientIDType' } -> { "OpenIDConnectProviderArn" :: ArnType', "ClientID" :: ClientIDType' }) -> AddClientIDToOpenIDConnectProviderRequest
```

Constructs AddClientIDToOpenIDConnectProviderRequest's fields from required parameters

#### `AddRoleToInstanceProfileRequest`

``` purescript
newtype AddRoleToInstanceProfileRequest
  = AddRoleToInstanceProfileRequest { "InstanceProfileName" :: InstanceProfileNameType', "RoleName" :: RoleNameType' }
```

##### Instances
``` purescript
Newtype AddRoleToInstanceProfileRequest _
Generic AddRoleToInstanceProfileRequest _
Show AddRoleToInstanceProfileRequest
Decode AddRoleToInstanceProfileRequest
Encode AddRoleToInstanceProfileRequest
```

#### `newAddRoleToInstanceProfileRequest`

``` purescript
newAddRoleToInstanceProfileRequest :: InstanceProfileNameType' -> RoleNameType' -> AddRoleToInstanceProfileRequest
```

Constructs AddRoleToInstanceProfileRequest from required parameters

#### `newAddRoleToInstanceProfileRequest'`

``` purescript
newAddRoleToInstanceProfileRequest' :: InstanceProfileNameType' -> RoleNameType' -> ({ "InstanceProfileName" :: InstanceProfileNameType', "RoleName" :: RoleNameType' } -> { "InstanceProfileName" :: InstanceProfileNameType', "RoleName" :: RoleNameType' }) -> AddRoleToInstanceProfileRequest
```

Constructs AddRoleToInstanceProfileRequest's fields from required parameters

#### `AddUserToGroupRequest`

``` purescript
newtype AddUserToGroupRequest
  = AddUserToGroupRequest { "GroupName" :: GroupNameType', "UserName" :: ExistingUserNameType' }
```

##### Instances
``` purescript
Newtype AddUserToGroupRequest _
Generic AddUserToGroupRequest _
Show AddUserToGroupRequest
Decode AddUserToGroupRequest
Encode AddUserToGroupRequest
```

#### `newAddUserToGroupRequest`

``` purescript
newAddUserToGroupRequest :: GroupNameType' -> ExistingUserNameType' -> AddUserToGroupRequest
```

Constructs AddUserToGroupRequest from required parameters

#### `newAddUserToGroupRequest'`

``` purescript
newAddUserToGroupRequest' :: GroupNameType' -> ExistingUserNameType' -> ({ "GroupName" :: GroupNameType', "UserName" :: ExistingUserNameType' } -> { "GroupName" :: GroupNameType', "UserName" :: ExistingUserNameType' }) -> AddUserToGroupRequest
```

Constructs AddUserToGroupRequest's fields from required parameters

#### `ArnListType`

``` purescript
newtype ArnListType
  = ArnListType (Array ArnType')
```

##### Instances
``` purescript
Newtype ArnListType _
Generic ArnListType _
Show ArnListType
Decode ArnListType
Encode ArnListType
```

#### `AttachGroupPolicyRequest`

``` purescript
newtype AttachGroupPolicyRequest
  = AttachGroupPolicyRequest { "GroupName" :: GroupNameType', "PolicyArn" :: ArnType' }
```

##### Instances
``` purescript
Newtype AttachGroupPolicyRequest _
Generic AttachGroupPolicyRequest _
Show AttachGroupPolicyRequest
Decode AttachGroupPolicyRequest
Encode AttachGroupPolicyRequest
```

#### `newAttachGroupPolicyRequest`

``` purescript
newAttachGroupPolicyRequest :: GroupNameType' -> ArnType' -> AttachGroupPolicyRequest
```

Constructs AttachGroupPolicyRequest from required parameters

#### `newAttachGroupPolicyRequest'`

``` purescript
newAttachGroupPolicyRequest' :: GroupNameType' -> ArnType' -> ({ "GroupName" :: GroupNameType', "PolicyArn" :: ArnType' } -> { "GroupName" :: GroupNameType', "PolicyArn" :: ArnType' }) -> AttachGroupPolicyRequest
```

Constructs AttachGroupPolicyRequest's fields from required parameters

#### `AttachRolePolicyRequest`

``` purescript
newtype AttachRolePolicyRequest
  = AttachRolePolicyRequest { "RoleName" :: RoleNameType', "PolicyArn" :: ArnType' }
```

##### Instances
``` purescript
Newtype AttachRolePolicyRequest _
Generic AttachRolePolicyRequest _
Show AttachRolePolicyRequest
Decode AttachRolePolicyRequest
Encode AttachRolePolicyRequest
```

#### `newAttachRolePolicyRequest`

``` purescript
newAttachRolePolicyRequest :: ArnType' -> RoleNameType' -> AttachRolePolicyRequest
```

Constructs AttachRolePolicyRequest from required parameters

#### `newAttachRolePolicyRequest'`

``` purescript
newAttachRolePolicyRequest' :: ArnType' -> RoleNameType' -> ({ "RoleName" :: RoleNameType', "PolicyArn" :: ArnType' } -> { "RoleName" :: RoleNameType', "PolicyArn" :: ArnType' }) -> AttachRolePolicyRequest
```

Constructs AttachRolePolicyRequest's fields from required parameters

#### `AttachUserPolicyRequest`

``` purescript
newtype AttachUserPolicyRequest
  = AttachUserPolicyRequest { "UserName" :: UserNameType', "PolicyArn" :: ArnType' }
```

##### Instances
``` purescript
Newtype AttachUserPolicyRequest _
Generic AttachUserPolicyRequest _
Show AttachUserPolicyRequest
Decode AttachUserPolicyRequest
Encode AttachUserPolicyRequest
```

#### `newAttachUserPolicyRequest`

``` purescript
newAttachUserPolicyRequest :: ArnType' -> UserNameType' -> AttachUserPolicyRequest
```

Constructs AttachUserPolicyRequest from required parameters

#### `newAttachUserPolicyRequest'`

``` purescript
newAttachUserPolicyRequest' :: ArnType' -> UserNameType' -> ({ "UserName" :: UserNameType', "PolicyArn" :: ArnType' } -> { "UserName" :: UserNameType', "PolicyArn" :: ArnType' }) -> AttachUserPolicyRequest
```

Constructs AttachUserPolicyRequest's fields from required parameters

#### `AttachedPolicy`

``` purescript
newtype AttachedPolicy
  = AttachedPolicy { "PolicyName" :: Maybe (PolicyNameType'), "PolicyArn" :: Maybe (ArnType') }
```

<p>Contains information about an attached policy.</p> <p>An attached policy is a managed policy that has been attached to a user, group, or role. This data type is used as a response element in the <a>ListAttachedGroupPolicies</a>, <a>ListAttachedRolePolicies</a>, <a>ListAttachedUserPolicies</a>, and <a>GetAccountAuthorizationDetails</a> actions. </p> <p>For more information about managed policies, refer to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>Using IAM</i> guide. </p>

##### Instances
``` purescript
Newtype AttachedPolicy _
Generic AttachedPolicy _
Show AttachedPolicy
Decode AttachedPolicy
Encode AttachedPolicy
```

#### `newAttachedPolicy`

``` purescript
newAttachedPolicy :: AttachedPolicy
```

Constructs AttachedPolicy from required parameters

#### `newAttachedPolicy'`

``` purescript
newAttachedPolicy' :: ({ "PolicyName" :: Maybe (PolicyNameType'), "PolicyArn" :: Maybe (ArnType') } -> { "PolicyName" :: Maybe (PolicyNameType'), "PolicyArn" :: Maybe (ArnType') }) -> AttachedPolicy
```

Constructs AttachedPolicy's fields from required parameters

#### `BootstrapDatum`

``` purescript
newtype BootstrapDatum
  = BootstrapDatum String
```

##### Instances
``` purescript
Newtype BootstrapDatum _
Generic BootstrapDatum _
Show BootstrapDatum
Decode BootstrapDatum
Encode BootstrapDatum
```

#### `ChangePasswordRequest`

``` purescript
newtype ChangePasswordRequest
  = ChangePasswordRequest { "OldPassword" :: PasswordType', "NewPassword" :: PasswordType' }
```

##### Instances
``` purescript
Newtype ChangePasswordRequest _
Generic ChangePasswordRequest _
Show ChangePasswordRequest
Decode ChangePasswordRequest
Encode ChangePasswordRequest
```

#### `newChangePasswordRequest`

``` purescript
newChangePasswordRequest :: PasswordType' -> PasswordType' -> ChangePasswordRequest
```

Constructs ChangePasswordRequest from required parameters

#### `newChangePasswordRequest'`

``` purescript
newChangePasswordRequest' :: PasswordType' -> PasswordType' -> ({ "OldPassword" :: PasswordType', "NewPassword" :: PasswordType' } -> { "OldPassword" :: PasswordType', "NewPassword" :: PasswordType' }) -> ChangePasswordRequest
```

Constructs ChangePasswordRequest's fields from required parameters

#### `ColumnNumber`

``` purescript
newtype ColumnNumber
  = ColumnNumber Int
```

##### Instances
``` purescript
Newtype ColumnNumber _
Generic ColumnNumber _
Show ColumnNumber
Decode ColumnNumber
Encode ColumnNumber
```

#### `ContextEntry`

``` purescript
newtype ContextEntry
  = ContextEntry { "ContextKeyName" :: Maybe (ContextKeyNameType), "ContextKeyValues" :: Maybe (ContextKeyValueListType), "ContextKeyType" :: Maybe (ContextKeyTypeEnum) }
```

<p>Contains information about a condition context key. It includes the name of the key and specifies the value (or values, if the context key supports multiple values) to use in the simulation. This information is used when evaluating the <code>Condition</code> elements of the input policies.</p> <p>This data type is used as an input parameter to <code> <a>SimulateCustomPolicy</a> </code> and <code> <a>SimulateCustomPolicy</a> </code>.</p>

##### Instances
``` purescript
Newtype ContextEntry _
Generic ContextEntry _
Show ContextEntry
Decode ContextEntry
Encode ContextEntry
```

#### `newContextEntry`

``` purescript
newContextEntry :: ContextEntry
```

Constructs ContextEntry from required parameters

#### `newContextEntry'`

``` purescript
newContextEntry' :: ({ "ContextKeyName" :: Maybe (ContextKeyNameType), "ContextKeyValues" :: Maybe (ContextKeyValueListType), "ContextKeyType" :: Maybe (ContextKeyTypeEnum) } -> { "ContextKeyName" :: Maybe (ContextKeyNameType), "ContextKeyValues" :: Maybe (ContextKeyValueListType), "ContextKeyType" :: Maybe (ContextKeyTypeEnum) }) -> ContextEntry
```

Constructs ContextEntry's fields from required parameters

#### `ContextEntryListType`

``` purescript
newtype ContextEntryListType
  = ContextEntryListType (Array ContextEntry)
```

##### Instances
``` purescript
Newtype ContextEntryListType _
Generic ContextEntryListType _
Show ContextEntryListType
Decode ContextEntryListType
Encode ContextEntryListType
```

#### `ContextKeyNameType`

``` purescript
newtype ContextKeyNameType
  = ContextKeyNameType String
```

##### Instances
``` purescript
Newtype ContextKeyNameType _
Generic ContextKeyNameType _
Show ContextKeyNameType
Decode ContextKeyNameType
Encode ContextKeyNameType
```

#### `ContextKeyNamesResultListType`

``` purescript
newtype ContextKeyNamesResultListType
  = ContextKeyNamesResultListType (Array ContextKeyNameType)
```

##### Instances
``` purescript
Newtype ContextKeyNamesResultListType _
Generic ContextKeyNamesResultListType _
Show ContextKeyNamesResultListType
Decode ContextKeyNamesResultListType
Encode ContextKeyNamesResultListType
```

#### `ContextKeyTypeEnum`

``` purescript
newtype ContextKeyTypeEnum
  = ContextKeyTypeEnum String
```

##### Instances
``` purescript
Newtype ContextKeyTypeEnum _
Generic ContextKeyTypeEnum _
Show ContextKeyTypeEnum
Decode ContextKeyTypeEnum
Encode ContextKeyTypeEnum
```

#### `ContextKeyValueListType`

``` purescript
newtype ContextKeyValueListType
  = ContextKeyValueListType (Array ContextKeyValueType)
```

##### Instances
``` purescript
Newtype ContextKeyValueListType _
Generic ContextKeyValueListType _
Show ContextKeyValueListType
Decode ContextKeyValueListType
Encode ContextKeyValueListType
```

#### `ContextKeyValueType`

``` purescript
newtype ContextKeyValueType
  = ContextKeyValueType String
```

##### Instances
``` purescript
Newtype ContextKeyValueType _
Generic ContextKeyValueType _
Show ContextKeyValueType
Decode ContextKeyValueType
Encode ContextKeyValueType
```

#### `CreateAccessKeyRequest`

``` purescript
newtype CreateAccessKeyRequest
  = CreateAccessKeyRequest { "UserName" :: Maybe (ExistingUserNameType') }
```

##### Instances
``` purescript
Newtype CreateAccessKeyRequest _
Generic CreateAccessKeyRequest _
Show CreateAccessKeyRequest
Decode CreateAccessKeyRequest
Encode CreateAccessKeyRequest
```

#### `newCreateAccessKeyRequest`

``` purescript
newCreateAccessKeyRequest :: CreateAccessKeyRequest
```

Constructs CreateAccessKeyRequest from required parameters

#### `newCreateAccessKeyRequest'`

``` purescript
newCreateAccessKeyRequest' :: ({ "UserName" :: Maybe (ExistingUserNameType') } -> { "UserName" :: Maybe (ExistingUserNameType') }) -> CreateAccessKeyRequest
```

Constructs CreateAccessKeyRequest's fields from required parameters

#### `CreateAccessKeyResponse`

``` purescript
newtype CreateAccessKeyResponse
  = CreateAccessKeyResponse { "AccessKey" :: AccessKey }
```

<p>Contains the response to a successful <a>CreateAccessKey</a> request. </p>

##### Instances
``` purescript
Newtype CreateAccessKeyResponse _
Generic CreateAccessKeyResponse _
Show CreateAccessKeyResponse
Decode CreateAccessKeyResponse
Encode CreateAccessKeyResponse
```

#### `newCreateAccessKeyResponse`

``` purescript
newCreateAccessKeyResponse :: AccessKey -> CreateAccessKeyResponse
```

Constructs CreateAccessKeyResponse from required parameters

#### `newCreateAccessKeyResponse'`

``` purescript
newCreateAccessKeyResponse' :: AccessKey -> ({ "AccessKey" :: AccessKey } -> { "AccessKey" :: AccessKey }) -> CreateAccessKeyResponse
```

Constructs CreateAccessKeyResponse's fields from required parameters

#### `CreateAccountAliasRequest`

``` purescript
newtype CreateAccountAliasRequest
  = CreateAccountAliasRequest { "AccountAlias" :: AccountAliasType' }
```

##### Instances
``` purescript
Newtype CreateAccountAliasRequest _
Generic CreateAccountAliasRequest _
Show CreateAccountAliasRequest
Decode CreateAccountAliasRequest
Encode CreateAccountAliasRequest
```

#### `newCreateAccountAliasRequest`

``` purescript
newCreateAccountAliasRequest :: AccountAliasType' -> CreateAccountAliasRequest
```

Constructs CreateAccountAliasRequest from required parameters

#### `newCreateAccountAliasRequest'`

``` purescript
newCreateAccountAliasRequest' :: AccountAliasType' -> ({ "AccountAlias" :: AccountAliasType' } -> { "AccountAlias" :: AccountAliasType' }) -> CreateAccountAliasRequest
```

Constructs CreateAccountAliasRequest's fields from required parameters

#### `CreateGroupRequest`

``` purescript
newtype CreateGroupRequest
  = CreateGroupRequest { "Path" :: Maybe (PathType'), "GroupName" :: GroupNameType' }
```

##### Instances
``` purescript
Newtype CreateGroupRequest _
Generic CreateGroupRequest _
Show CreateGroupRequest
Decode CreateGroupRequest
Encode CreateGroupRequest
```

#### `newCreateGroupRequest`

``` purescript
newCreateGroupRequest :: GroupNameType' -> CreateGroupRequest
```

Constructs CreateGroupRequest from required parameters

#### `newCreateGroupRequest'`

``` purescript
newCreateGroupRequest' :: GroupNameType' -> ({ "Path" :: Maybe (PathType'), "GroupName" :: GroupNameType' } -> { "Path" :: Maybe (PathType'), "GroupName" :: GroupNameType' }) -> CreateGroupRequest
```

Constructs CreateGroupRequest's fields from required parameters

#### `CreateGroupResponse`

``` purescript
newtype CreateGroupResponse
  = CreateGroupResponse { "Group" :: Group }
```

<p>Contains the response to a successful <a>CreateGroup</a> request. </p>

##### Instances
``` purescript
Newtype CreateGroupResponse _
Generic CreateGroupResponse _
Show CreateGroupResponse
Decode CreateGroupResponse
Encode CreateGroupResponse
```

#### `newCreateGroupResponse`

``` purescript
newCreateGroupResponse :: Group -> CreateGroupResponse
```

Constructs CreateGroupResponse from required parameters

#### `newCreateGroupResponse'`

``` purescript
newCreateGroupResponse' :: Group -> ({ "Group" :: Group } -> { "Group" :: Group }) -> CreateGroupResponse
```

Constructs CreateGroupResponse's fields from required parameters

#### `CreateInstanceProfileRequest`

``` purescript
newtype CreateInstanceProfileRequest
  = CreateInstanceProfileRequest { "InstanceProfileName" :: InstanceProfileNameType', "Path" :: Maybe (PathType') }
```

##### Instances
``` purescript
Newtype CreateInstanceProfileRequest _
Generic CreateInstanceProfileRequest _
Show CreateInstanceProfileRequest
Decode CreateInstanceProfileRequest
Encode CreateInstanceProfileRequest
```

#### `newCreateInstanceProfileRequest`

``` purescript
newCreateInstanceProfileRequest :: InstanceProfileNameType' -> CreateInstanceProfileRequest
```

Constructs CreateInstanceProfileRequest from required parameters

#### `newCreateInstanceProfileRequest'`

``` purescript
newCreateInstanceProfileRequest' :: InstanceProfileNameType' -> ({ "InstanceProfileName" :: InstanceProfileNameType', "Path" :: Maybe (PathType') } -> { "InstanceProfileName" :: InstanceProfileNameType', "Path" :: Maybe (PathType') }) -> CreateInstanceProfileRequest
```

Constructs CreateInstanceProfileRequest's fields from required parameters

#### `CreateInstanceProfileResponse`

``` purescript
newtype CreateInstanceProfileResponse
  = CreateInstanceProfileResponse { "InstanceProfile" :: InstanceProfile }
```

<p>Contains the response to a successful <a>CreateInstanceProfile</a> request. </p>

##### Instances
``` purescript
Newtype CreateInstanceProfileResponse _
Generic CreateInstanceProfileResponse _
Show CreateInstanceProfileResponse
Decode CreateInstanceProfileResponse
Encode CreateInstanceProfileResponse
```

#### `newCreateInstanceProfileResponse`

``` purescript
newCreateInstanceProfileResponse :: InstanceProfile -> CreateInstanceProfileResponse
```

Constructs CreateInstanceProfileResponse from required parameters

#### `newCreateInstanceProfileResponse'`

``` purescript
newCreateInstanceProfileResponse' :: InstanceProfile -> ({ "InstanceProfile" :: InstanceProfile } -> { "InstanceProfile" :: InstanceProfile }) -> CreateInstanceProfileResponse
```

Constructs CreateInstanceProfileResponse's fields from required parameters

#### `CreateLoginProfileRequest`

``` purescript
newtype CreateLoginProfileRequest
  = CreateLoginProfileRequest { "UserName" :: UserNameType', "Password" :: PasswordType', "PasswordResetRequired" :: Maybe (BooleanType') }
```

##### Instances
``` purescript
Newtype CreateLoginProfileRequest _
Generic CreateLoginProfileRequest _
Show CreateLoginProfileRequest
Decode CreateLoginProfileRequest
Encode CreateLoginProfileRequest
```

#### `newCreateLoginProfileRequest`

``` purescript
newCreateLoginProfileRequest :: PasswordType' -> UserNameType' -> CreateLoginProfileRequest
```

Constructs CreateLoginProfileRequest from required parameters

#### `newCreateLoginProfileRequest'`

``` purescript
newCreateLoginProfileRequest' :: PasswordType' -> UserNameType' -> ({ "UserName" :: UserNameType', "Password" :: PasswordType', "PasswordResetRequired" :: Maybe (BooleanType') } -> { "UserName" :: UserNameType', "Password" :: PasswordType', "PasswordResetRequired" :: Maybe (BooleanType') }) -> CreateLoginProfileRequest
```

Constructs CreateLoginProfileRequest's fields from required parameters

#### `CreateLoginProfileResponse`

``` purescript
newtype CreateLoginProfileResponse
  = CreateLoginProfileResponse { "LoginProfile" :: LoginProfile }
```

<p>Contains the response to a successful <a>CreateLoginProfile</a> request. </p>

##### Instances
``` purescript
Newtype CreateLoginProfileResponse _
Generic CreateLoginProfileResponse _
Show CreateLoginProfileResponse
Decode CreateLoginProfileResponse
Encode CreateLoginProfileResponse
```

#### `newCreateLoginProfileResponse`

``` purescript
newCreateLoginProfileResponse :: LoginProfile -> CreateLoginProfileResponse
```

Constructs CreateLoginProfileResponse from required parameters

#### `newCreateLoginProfileResponse'`

``` purescript
newCreateLoginProfileResponse' :: LoginProfile -> ({ "LoginProfile" :: LoginProfile } -> { "LoginProfile" :: LoginProfile }) -> CreateLoginProfileResponse
```

Constructs CreateLoginProfileResponse's fields from required parameters

#### `CreateOpenIDConnectProviderRequest`

``` purescript
newtype CreateOpenIDConnectProviderRequest
  = CreateOpenIDConnectProviderRequest { "Url" :: OpenIDConnectProviderUrlType, "ClientIDList" :: Maybe (ClientIDListType'), "ThumbprintList" :: ThumbprintListType' }
```

##### Instances
``` purescript
Newtype CreateOpenIDConnectProviderRequest _
Generic CreateOpenIDConnectProviderRequest _
Show CreateOpenIDConnectProviderRequest
Decode CreateOpenIDConnectProviderRequest
Encode CreateOpenIDConnectProviderRequest
```

#### `newCreateOpenIDConnectProviderRequest`

``` purescript
newCreateOpenIDConnectProviderRequest :: ThumbprintListType' -> OpenIDConnectProviderUrlType -> CreateOpenIDConnectProviderRequest
```

Constructs CreateOpenIDConnectProviderRequest from required parameters

#### `newCreateOpenIDConnectProviderRequest'`

``` purescript
newCreateOpenIDConnectProviderRequest' :: ThumbprintListType' -> OpenIDConnectProviderUrlType -> ({ "Url" :: OpenIDConnectProviderUrlType, "ClientIDList" :: Maybe (ClientIDListType'), "ThumbprintList" :: ThumbprintListType' } -> { "Url" :: OpenIDConnectProviderUrlType, "ClientIDList" :: Maybe (ClientIDListType'), "ThumbprintList" :: ThumbprintListType' }) -> CreateOpenIDConnectProviderRequest
```

Constructs CreateOpenIDConnectProviderRequest's fields from required parameters

#### `CreateOpenIDConnectProviderResponse`

``` purescript
newtype CreateOpenIDConnectProviderResponse
  = CreateOpenIDConnectProviderResponse { "OpenIDConnectProviderArn" :: Maybe (ArnType') }
```

<p>Contains the response to a successful <a>CreateOpenIDConnectProvider</a> request. </p>

##### Instances
``` purescript
Newtype CreateOpenIDConnectProviderResponse _
Generic CreateOpenIDConnectProviderResponse _
Show CreateOpenIDConnectProviderResponse
Decode CreateOpenIDConnectProviderResponse
Encode CreateOpenIDConnectProviderResponse
```

#### `newCreateOpenIDConnectProviderResponse`

``` purescript
newCreateOpenIDConnectProviderResponse :: CreateOpenIDConnectProviderResponse
```

Constructs CreateOpenIDConnectProviderResponse from required parameters

#### `newCreateOpenIDConnectProviderResponse'`

``` purescript
newCreateOpenIDConnectProviderResponse' :: ({ "OpenIDConnectProviderArn" :: Maybe (ArnType') } -> { "OpenIDConnectProviderArn" :: Maybe (ArnType') }) -> CreateOpenIDConnectProviderResponse
```

Constructs CreateOpenIDConnectProviderResponse's fields from required parameters

#### `CreatePolicyRequest`

``` purescript
newtype CreatePolicyRequest
  = CreatePolicyRequest { "PolicyName" :: PolicyNameType', "Path" :: Maybe (PolicyPathType'), "PolicyDocument" :: PolicyDocumentType', "Description" :: Maybe (PolicyDescriptionType') }
```

##### Instances
``` purescript
Newtype CreatePolicyRequest _
Generic CreatePolicyRequest _
Show CreatePolicyRequest
Decode CreatePolicyRequest
Encode CreatePolicyRequest
```

#### `newCreatePolicyRequest`

``` purescript
newCreatePolicyRequest :: PolicyDocumentType' -> PolicyNameType' -> CreatePolicyRequest
```

Constructs CreatePolicyRequest from required parameters

#### `newCreatePolicyRequest'`

``` purescript
newCreatePolicyRequest' :: PolicyDocumentType' -> PolicyNameType' -> ({ "PolicyName" :: PolicyNameType', "Path" :: Maybe (PolicyPathType'), "PolicyDocument" :: PolicyDocumentType', "Description" :: Maybe (PolicyDescriptionType') } -> { "PolicyName" :: PolicyNameType', "Path" :: Maybe (PolicyPathType'), "PolicyDocument" :: PolicyDocumentType', "Description" :: Maybe (PolicyDescriptionType') }) -> CreatePolicyRequest
```

Constructs CreatePolicyRequest's fields from required parameters

#### `CreatePolicyResponse`

``` purescript
newtype CreatePolicyResponse
  = CreatePolicyResponse { "Policy" :: Maybe (Policy) }
```

<p>Contains the response to a successful <a>CreatePolicy</a> request. </p>

##### Instances
``` purescript
Newtype CreatePolicyResponse _
Generic CreatePolicyResponse _
Show CreatePolicyResponse
Decode CreatePolicyResponse
Encode CreatePolicyResponse
```

#### `newCreatePolicyResponse`

``` purescript
newCreatePolicyResponse :: CreatePolicyResponse
```

Constructs CreatePolicyResponse from required parameters

#### `newCreatePolicyResponse'`

``` purescript
newCreatePolicyResponse' :: ({ "Policy" :: Maybe (Policy) } -> { "Policy" :: Maybe (Policy) }) -> CreatePolicyResponse
```

Constructs CreatePolicyResponse's fields from required parameters

#### `CreatePolicyVersionRequest`

``` purescript
newtype CreatePolicyVersionRequest
  = CreatePolicyVersionRequest { "PolicyArn" :: ArnType', "PolicyDocument" :: PolicyDocumentType', "SetAsDefault" :: Maybe (BooleanType') }
```

##### Instances
``` purescript
Newtype CreatePolicyVersionRequest _
Generic CreatePolicyVersionRequest _
Show CreatePolicyVersionRequest
Decode CreatePolicyVersionRequest
Encode CreatePolicyVersionRequest
```

#### `newCreatePolicyVersionRequest`

``` purescript
newCreatePolicyVersionRequest :: ArnType' -> PolicyDocumentType' -> CreatePolicyVersionRequest
```

Constructs CreatePolicyVersionRequest from required parameters

#### `newCreatePolicyVersionRequest'`

``` purescript
newCreatePolicyVersionRequest' :: ArnType' -> PolicyDocumentType' -> ({ "PolicyArn" :: ArnType', "PolicyDocument" :: PolicyDocumentType', "SetAsDefault" :: Maybe (BooleanType') } -> { "PolicyArn" :: ArnType', "PolicyDocument" :: PolicyDocumentType', "SetAsDefault" :: Maybe (BooleanType') }) -> CreatePolicyVersionRequest
```

Constructs CreatePolicyVersionRequest's fields from required parameters

#### `CreatePolicyVersionResponse`

``` purescript
newtype CreatePolicyVersionResponse
  = CreatePolicyVersionResponse { "PolicyVersion" :: Maybe (PolicyVersion) }
```

<p>Contains the response to a successful <a>CreatePolicyVersion</a> request. </p>

##### Instances
``` purescript
Newtype CreatePolicyVersionResponse _
Generic CreatePolicyVersionResponse _
Show CreatePolicyVersionResponse
Decode CreatePolicyVersionResponse
Encode CreatePolicyVersionResponse
```

#### `newCreatePolicyVersionResponse`

``` purescript
newCreatePolicyVersionResponse :: CreatePolicyVersionResponse
```

Constructs CreatePolicyVersionResponse from required parameters

#### `newCreatePolicyVersionResponse'`

``` purescript
newCreatePolicyVersionResponse' :: ({ "PolicyVersion" :: Maybe (PolicyVersion) } -> { "PolicyVersion" :: Maybe (PolicyVersion) }) -> CreatePolicyVersionResponse
```

Constructs CreatePolicyVersionResponse's fields from required parameters

#### `CreateRoleRequest`

``` purescript
newtype CreateRoleRequest
  = CreateRoleRequest { "Path" :: Maybe (PathType'), "RoleName" :: RoleNameType', "AssumeRolePolicyDocument" :: PolicyDocumentType', "Description" :: Maybe (RoleDescriptionType') }
```

##### Instances
``` purescript
Newtype CreateRoleRequest _
Generic CreateRoleRequest _
Show CreateRoleRequest
Decode CreateRoleRequest
Encode CreateRoleRequest
```

#### `newCreateRoleRequest`

``` purescript
newCreateRoleRequest :: PolicyDocumentType' -> RoleNameType' -> CreateRoleRequest
```

Constructs CreateRoleRequest from required parameters

#### `newCreateRoleRequest'`

``` purescript
newCreateRoleRequest' :: PolicyDocumentType' -> RoleNameType' -> ({ "Path" :: Maybe (PathType'), "RoleName" :: RoleNameType', "AssumeRolePolicyDocument" :: PolicyDocumentType', "Description" :: Maybe (RoleDescriptionType') } -> { "Path" :: Maybe (PathType'), "RoleName" :: RoleNameType', "AssumeRolePolicyDocument" :: PolicyDocumentType', "Description" :: Maybe (RoleDescriptionType') }) -> CreateRoleRequest
```

Constructs CreateRoleRequest's fields from required parameters

#### `CreateRoleResponse`

``` purescript
newtype CreateRoleResponse
  = CreateRoleResponse { "Role" :: Role }
```

<p>Contains the response to a successful <a>CreateRole</a> request. </p>

##### Instances
``` purescript
Newtype CreateRoleResponse _
Generic CreateRoleResponse _
Show CreateRoleResponse
Decode CreateRoleResponse
Encode CreateRoleResponse
```

#### `newCreateRoleResponse`

``` purescript
newCreateRoleResponse :: Role -> CreateRoleResponse
```

Constructs CreateRoleResponse from required parameters

#### `newCreateRoleResponse'`

``` purescript
newCreateRoleResponse' :: Role -> ({ "Role" :: Role } -> { "Role" :: Role }) -> CreateRoleResponse
```

Constructs CreateRoleResponse's fields from required parameters

#### `CreateSAMLProviderRequest`

``` purescript
newtype CreateSAMLProviderRequest
  = CreateSAMLProviderRequest { "SAMLMetadataDocument" :: SAMLMetadataDocumentType, "Name" :: SAMLProviderNameType }
```

##### Instances
``` purescript
Newtype CreateSAMLProviderRequest _
Generic CreateSAMLProviderRequest _
Show CreateSAMLProviderRequest
Decode CreateSAMLProviderRequest
Encode CreateSAMLProviderRequest
```

#### `newCreateSAMLProviderRequest`

``` purescript
newCreateSAMLProviderRequest :: SAMLProviderNameType -> SAMLMetadataDocumentType -> CreateSAMLProviderRequest
```

Constructs CreateSAMLProviderRequest from required parameters

#### `newCreateSAMLProviderRequest'`

``` purescript
newCreateSAMLProviderRequest' :: SAMLProviderNameType -> SAMLMetadataDocumentType -> ({ "SAMLMetadataDocument" :: SAMLMetadataDocumentType, "Name" :: SAMLProviderNameType } -> { "SAMLMetadataDocument" :: SAMLMetadataDocumentType, "Name" :: SAMLProviderNameType }) -> CreateSAMLProviderRequest
```

Constructs CreateSAMLProviderRequest's fields from required parameters

#### `CreateSAMLProviderResponse`

``` purescript
newtype CreateSAMLProviderResponse
  = CreateSAMLProviderResponse { "SAMLProviderArn" :: Maybe (ArnType') }
```

<p>Contains the response to a successful <a>CreateSAMLProvider</a> request. </p>

##### Instances
``` purescript
Newtype CreateSAMLProviderResponse _
Generic CreateSAMLProviderResponse _
Show CreateSAMLProviderResponse
Decode CreateSAMLProviderResponse
Encode CreateSAMLProviderResponse
```

#### `newCreateSAMLProviderResponse`

``` purescript
newCreateSAMLProviderResponse :: CreateSAMLProviderResponse
```

Constructs CreateSAMLProviderResponse from required parameters

#### `newCreateSAMLProviderResponse'`

``` purescript
newCreateSAMLProviderResponse' :: ({ "SAMLProviderArn" :: Maybe (ArnType') } -> { "SAMLProviderArn" :: Maybe (ArnType') }) -> CreateSAMLProviderResponse
```

Constructs CreateSAMLProviderResponse's fields from required parameters

#### `CreateServiceLinkedRoleRequest`

``` purescript
newtype CreateServiceLinkedRoleRequest
  = CreateServiceLinkedRoleRequest { "AWSServiceName" :: GroupNameType', "Description" :: Maybe (RoleDescriptionType'), "CustomSuffix" :: Maybe (CustomSuffixType') }
```

##### Instances
``` purescript
Newtype CreateServiceLinkedRoleRequest _
Generic CreateServiceLinkedRoleRequest _
Show CreateServiceLinkedRoleRequest
Decode CreateServiceLinkedRoleRequest
Encode CreateServiceLinkedRoleRequest
```

#### `newCreateServiceLinkedRoleRequest`

``` purescript
newCreateServiceLinkedRoleRequest :: GroupNameType' -> CreateServiceLinkedRoleRequest
```

Constructs CreateServiceLinkedRoleRequest from required parameters

#### `newCreateServiceLinkedRoleRequest'`

``` purescript
newCreateServiceLinkedRoleRequest' :: GroupNameType' -> ({ "AWSServiceName" :: GroupNameType', "Description" :: Maybe (RoleDescriptionType'), "CustomSuffix" :: Maybe (CustomSuffixType') } -> { "AWSServiceName" :: GroupNameType', "Description" :: Maybe (RoleDescriptionType'), "CustomSuffix" :: Maybe (CustomSuffixType') }) -> CreateServiceLinkedRoleRequest
```

Constructs CreateServiceLinkedRoleRequest's fields from required parameters

#### `CreateServiceLinkedRoleResponse`

``` purescript
newtype CreateServiceLinkedRoleResponse
  = CreateServiceLinkedRoleResponse { "Role" :: Maybe (Role) }
```

##### Instances
``` purescript
Newtype CreateServiceLinkedRoleResponse _
Generic CreateServiceLinkedRoleResponse _
Show CreateServiceLinkedRoleResponse
Decode CreateServiceLinkedRoleResponse
Encode CreateServiceLinkedRoleResponse
```

#### `newCreateServiceLinkedRoleResponse`

``` purescript
newCreateServiceLinkedRoleResponse :: CreateServiceLinkedRoleResponse
```

Constructs CreateServiceLinkedRoleResponse from required parameters

#### `newCreateServiceLinkedRoleResponse'`

``` purescript
newCreateServiceLinkedRoleResponse' :: ({ "Role" :: Maybe (Role) } -> { "Role" :: Maybe (Role) }) -> CreateServiceLinkedRoleResponse
```

Constructs CreateServiceLinkedRoleResponse's fields from required parameters

#### `CreateServiceSpecificCredentialRequest`

``` purescript
newtype CreateServiceSpecificCredentialRequest
  = CreateServiceSpecificCredentialRequest { "UserName" :: UserNameType', "ServiceName" :: ServiceName' }
```

##### Instances
``` purescript
Newtype CreateServiceSpecificCredentialRequest _
Generic CreateServiceSpecificCredentialRequest _
Show CreateServiceSpecificCredentialRequest
Decode CreateServiceSpecificCredentialRequest
Encode CreateServiceSpecificCredentialRequest
```

#### `newCreateServiceSpecificCredentialRequest`

``` purescript
newCreateServiceSpecificCredentialRequest :: ServiceName' -> UserNameType' -> CreateServiceSpecificCredentialRequest
```

Constructs CreateServiceSpecificCredentialRequest from required parameters

#### `newCreateServiceSpecificCredentialRequest'`

``` purescript
newCreateServiceSpecificCredentialRequest' :: ServiceName' -> UserNameType' -> ({ "UserName" :: UserNameType', "ServiceName" :: ServiceName' } -> { "UserName" :: UserNameType', "ServiceName" :: ServiceName' }) -> CreateServiceSpecificCredentialRequest
```

Constructs CreateServiceSpecificCredentialRequest's fields from required parameters

#### `CreateServiceSpecificCredentialResponse`

``` purescript
newtype CreateServiceSpecificCredentialResponse
  = CreateServiceSpecificCredentialResponse { "ServiceSpecificCredential" :: Maybe (ServiceSpecificCredential) }
```

##### Instances
``` purescript
Newtype CreateServiceSpecificCredentialResponse _
Generic CreateServiceSpecificCredentialResponse _
Show CreateServiceSpecificCredentialResponse
Decode CreateServiceSpecificCredentialResponse
Encode CreateServiceSpecificCredentialResponse
```

#### `newCreateServiceSpecificCredentialResponse`

``` purescript
newCreateServiceSpecificCredentialResponse :: CreateServiceSpecificCredentialResponse
```

Constructs CreateServiceSpecificCredentialResponse from required parameters

#### `newCreateServiceSpecificCredentialResponse'`

``` purescript
newCreateServiceSpecificCredentialResponse' :: ({ "ServiceSpecificCredential" :: Maybe (ServiceSpecificCredential) } -> { "ServiceSpecificCredential" :: Maybe (ServiceSpecificCredential) }) -> CreateServiceSpecificCredentialResponse
```

Constructs CreateServiceSpecificCredentialResponse's fields from required parameters

#### `CreateUserRequest`

``` purescript
newtype CreateUserRequest
  = CreateUserRequest { "Path" :: Maybe (PathType'), "UserName" :: UserNameType' }
```

##### Instances
``` purescript
Newtype CreateUserRequest _
Generic CreateUserRequest _
Show CreateUserRequest
Decode CreateUserRequest
Encode CreateUserRequest
```

#### `newCreateUserRequest`

``` purescript
newCreateUserRequest :: UserNameType' -> CreateUserRequest
```

Constructs CreateUserRequest from required parameters

#### `newCreateUserRequest'`

``` purescript
newCreateUserRequest' :: UserNameType' -> ({ "Path" :: Maybe (PathType'), "UserName" :: UserNameType' } -> { "Path" :: Maybe (PathType'), "UserName" :: UserNameType' }) -> CreateUserRequest
```

Constructs CreateUserRequest's fields from required parameters

#### `CreateUserResponse`

``` purescript
newtype CreateUserResponse
  = CreateUserResponse { "User" :: Maybe (User) }
```

<p>Contains the response to a successful <a>CreateUser</a> request. </p>

##### Instances
``` purescript
Newtype CreateUserResponse _
Generic CreateUserResponse _
Show CreateUserResponse
Decode CreateUserResponse
Encode CreateUserResponse
```

#### `newCreateUserResponse`

``` purescript
newCreateUserResponse :: CreateUserResponse
```

Constructs CreateUserResponse from required parameters

#### `newCreateUserResponse'`

``` purescript
newCreateUserResponse' :: ({ "User" :: Maybe (User) } -> { "User" :: Maybe (User) }) -> CreateUserResponse
```

Constructs CreateUserResponse's fields from required parameters

#### `CreateVirtualMFADeviceRequest`

``` purescript
newtype CreateVirtualMFADeviceRequest
  = CreateVirtualMFADeviceRequest { "Path" :: Maybe (PathType'), "VirtualMFADeviceName" :: VirtualMFADeviceName' }
```

##### Instances
``` purescript
Newtype CreateVirtualMFADeviceRequest _
Generic CreateVirtualMFADeviceRequest _
Show CreateVirtualMFADeviceRequest
Decode CreateVirtualMFADeviceRequest
Encode CreateVirtualMFADeviceRequest
```

#### `newCreateVirtualMFADeviceRequest`

``` purescript
newCreateVirtualMFADeviceRequest :: VirtualMFADeviceName' -> CreateVirtualMFADeviceRequest
```

Constructs CreateVirtualMFADeviceRequest from required parameters

#### `newCreateVirtualMFADeviceRequest'`

``` purescript
newCreateVirtualMFADeviceRequest' :: VirtualMFADeviceName' -> ({ "Path" :: Maybe (PathType'), "VirtualMFADeviceName" :: VirtualMFADeviceName' } -> { "Path" :: Maybe (PathType'), "VirtualMFADeviceName" :: VirtualMFADeviceName' }) -> CreateVirtualMFADeviceRequest
```

Constructs CreateVirtualMFADeviceRequest's fields from required parameters

#### `CreateVirtualMFADeviceResponse`

``` purescript
newtype CreateVirtualMFADeviceResponse
  = CreateVirtualMFADeviceResponse { "VirtualMFADevice" :: VirtualMFADevice }
```

<p>Contains the response to a successful <a>CreateVirtualMFADevice</a> request. </p>

##### Instances
``` purescript
Newtype CreateVirtualMFADeviceResponse _
Generic CreateVirtualMFADeviceResponse _
Show CreateVirtualMFADeviceResponse
Decode CreateVirtualMFADeviceResponse
Encode CreateVirtualMFADeviceResponse
```

#### `newCreateVirtualMFADeviceResponse`

``` purescript
newCreateVirtualMFADeviceResponse :: VirtualMFADevice -> CreateVirtualMFADeviceResponse
```

Constructs CreateVirtualMFADeviceResponse from required parameters

#### `newCreateVirtualMFADeviceResponse'`

``` purescript
newCreateVirtualMFADeviceResponse' :: VirtualMFADevice -> ({ "VirtualMFADevice" :: VirtualMFADevice } -> { "VirtualMFADevice" :: VirtualMFADevice }) -> CreateVirtualMFADeviceResponse
```

Constructs CreateVirtualMFADeviceResponse's fields from required parameters

#### `CredentialReportExpiredException`

``` purescript
newtype CredentialReportExpiredException
  = CredentialReportExpiredException { message :: Maybe (CredentialReportExpiredExceptionMessage') }
```

<p>The request was rejected because the most recent credential report has expired. To generate a new credential report, use <a>GenerateCredentialReport</a>. For more information about credential report expiration, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html">Getting Credential Reports</a> in the <i>IAM User Guide</i>.</p>

##### Instances
``` purescript
Newtype CredentialReportExpiredException _
Generic CredentialReportExpiredException _
Show CredentialReportExpiredException
Decode CredentialReportExpiredException
Encode CredentialReportExpiredException
```

#### `newCredentialReportExpiredException`

``` purescript
newCredentialReportExpiredException :: CredentialReportExpiredException
```

Constructs CredentialReportExpiredException from required parameters

#### `newCredentialReportExpiredException'`

``` purescript
newCredentialReportExpiredException' :: ({ message :: Maybe (CredentialReportExpiredExceptionMessage') } -> { message :: Maybe (CredentialReportExpiredExceptionMessage') }) -> CredentialReportExpiredException
```

Constructs CredentialReportExpiredException's fields from required parameters

#### `CredentialReportNotPresentException`

``` purescript
newtype CredentialReportNotPresentException
  = CredentialReportNotPresentException { message :: Maybe (CredentialReportNotPresentExceptionMessage') }
```

<p>The request was rejected because the credential report does not exist. To generate a credential report, use <a>GenerateCredentialReport</a>.</p>

##### Instances
``` purescript
Newtype CredentialReportNotPresentException _
Generic CredentialReportNotPresentException _
Show CredentialReportNotPresentException
Decode CredentialReportNotPresentException
Encode CredentialReportNotPresentException
```

#### `newCredentialReportNotPresentException`

``` purescript
newCredentialReportNotPresentException :: CredentialReportNotPresentException
```

Constructs CredentialReportNotPresentException from required parameters

#### `newCredentialReportNotPresentException'`

``` purescript
newCredentialReportNotPresentException' :: ({ message :: Maybe (CredentialReportNotPresentExceptionMessage') } -> { message :: Maybe (CredentialReportNotPresentExceptionMessage') }) -> CredentialReportNotPresentException
```

Constructs CredentialReportNotPresentException's fields from required parameters

#### `CredentialReportNotReadyException`

``` purescript
newtype CredentialReportNotReadyException
  = CredentialReportNotReadyException { message :: Maybe (CredentialReportNotReadyExceptionMessage') }
```

<p>The request was rejected because the credential report is still being generated.</p>

##### Instances
``` purescript
Newtype CredentialReportNotReadyException _
Generic CredentialReportNotReadyException _
Show CredentialReportNotReadyException
Decode CredentialReportNotReadyException
Encode CredentialReportNotReadyException
```

#### `newCredentialReportNotReadyException`

``` purescript
newCredentialReportNotReadyException :: CredentialReportNotReadyException
```

Constructs CredentialReportNotReadyException from required parameters

#### `newCredentialReportNotReadyException'`

``` purescript
newCredentialReportNotReadyException' :: ({ message :: Maybe (CredentialReportNotReadyExceptionMessage') } -> { message :: Maybe (CredentialReportNotReadyExceptionMessage') }) -> CredentialReportNotReadyException
```

Constructs CredentialReportNotReadyException's fields from required parameters

#### `DeactivateMFADeviceRequest`

``` purescript
newtype DeactivateMFADeviceRequest
  = DeactivateMFADeviceRequest { "UserName" :: ExistingUserNameType', "SerialNumber" :: SerialNumberType' }
```

##### Instances
``` purescript
Newtype DeactivateMFADeviceRequest _
Generic DeactivateMFADeviceRequest _
Show DeactivateMFADeviceRequest
Decode DeactivateMFADeviceRequest
Encode DeactivateMFADeviceRequest
```

#### `newDeactivateMFADeviceRequest`

``` purescript
newDeactivateMFADeviceRequest :: SerialNumberType' -> ExistingUserNameType' -> DeactivateMFADeviceRequest
```

Constructs DeactivateMFADeviceRequest from required parameters

#### `newDeactivateMFADeviceRequest'`

``` purescript
newDeactivateMFADeviceRequest' :: SerialNumberType' -> ExistingUserNameType' -> ({ "UserName" :: ExistingUserNameType', "SerialNumber" :: SerialNumberType' } -> { "UserName" :: ExistingUserNameType', "SerialNumber" :: SerialNumberType' }) -> DeactivateMFADeviceRequest
```

Constructs DeactivateMFADeviceRequest's fields from required parameters

#### `DeleteAccessKeyRequest`

``` purescript
newtype DeleteAccessKeyRequest
  = DeleteAccessKeyRequest { "UserName" :: Maybe (ExistingUserNameType'), "AccessKeyId" :: AccessKeyIdType' }
```

##### Instances
``` purescript
Newtype DeleteAccessKeyRequest _
Generic DeleteAccessKeyRequest _
Show DeleteAccessKeyRequest
Decode DeleteAccessKeyRequest
Encode DeleteAccessKeyRequest
```

#### `newDeleteAccessKeyRequest`

``` purescript
newDeleteAccessKeyRequest :: AccessKeyIdType' -> DeleteAccessKeyRequest
```

Constructs DeleteAccessKeyRequest from required parameters

#### `newDeleteAccessKeyRequest'`

``` purescript
newDeleteAccessKeyRequest' :: AccessKeyIdType' -> ({ "UserName" :: Maybe (ExistingUserNameType'), "AccessKeyId" :: AccessKeyIdType' } -> { "UserName" :: Maybe (ExistingUserNameType'), "AccessKeyId" :: AccessKeyIdType' }) -> DeleteAccessKeyRequest
```

Constructs DeleteAccessKeyRequest's fields from required parameters

#### `DeleteAccountAliasRequest`

``` purescript
newtype DeleteAccountAliasRequest
  = DeleteAccountAliasRequest { "AccountAlias" :: AccountAliasType' }
```

##### Instances
``` purescript
Newtype DeleteAccountAliasRequest _
Generic DeleteAccountAliasRequest _
Show DeleteAccountAliasRequest
Decode DeleteAccountAliasRequest
Encode DeleteAccountAliasRequest
```

#### `newDeleteAccountAliasRequest`

``` purescript
newDeleteAccountAliasRequest :: AccountAliasType' -> DeleteAccountAliasRequest
```

Constructs DeleteAccountAliasRequest from required parameters

#### `newDeleteAccountAliasRequest'`

``` purescript
newDeleteAccountAliasRequest' :: AccountAliasType' -> ({ "AccountAlias" :: AccountAliasType' } -> { "AccountAlias" :: AccountAliasType' }) -> DeleteAccountAliasRequest
```

Constructs DeleteAccountAliasRequest's fields from required parameters

#### `DeleteConflictException`

``` purescript
newtype DeleteConflictException
  = DeleteConflictException { message :: Maybe (DeleteConflictMessage') }
```

<p>The request was rejected because it attempted to delete a resource that has attached subordinate entities. The error message describes these entities.</p>

##### Instances
``` purescript
Newtype DeleteConflictException _
Generic DeleteConflictException _
Show DeleteConflictException
Decode DeleteConflictException
Encode DeleteConflictException
```

#### `newDeleteConflictException`

``` purescript
newDeleteConflictException :: DeleteConflictException
```

Constructs DeleteConflictException from required parameters

#### `newDeleteConflictException'`

``` purescript
newDeleteConflictException' :: ({ message :: Maybe (DeleteConflictMessage') } -> { message :: Maybe (DeleteConflictMessage') }) -> DeleteConflictException
```

Constructs DeleteConflictException's fields from required parameters

#### `DeleteGroupPolicyRequest`

``` purescript
newtype DeleteGroupPolicyRequest
  = DeleteGroupPolicyRequest { "GroupName" :: GroupNameType', "PolicyName" :: PolicyNameType' }
```

##### Instances
``` purescript
Newtype DeleteGroupPolicyRequest _
Generic DeleteGroupPolicyRequest _
Show DeleteGroupPolicyRequest
Decode DeleteGroupPolicyRequest
Encode DeleteGroupPolicyRequest
```

#### `newDeleteGroupPolicyRequest`

``` purescript
newDeleteGroupPolicyRequest :: GroupNameType' -> PolicyNameType' -> DeleteGroupPolicyRequest
```

Constructs DeleteGroupPolicyRequest from required parameters

#### `newDeleteGroupPolicyRequest'`

``` purescript
newDeleteGroupPolicyRequest' :: GroupNameType' -> PolicyNameType' -> ({ "GroupName" :: GroupNameType', "PolicyName" :: PolicyNameType' } -> { "GroupName" :: GroupNameType', "PolicyName" :: PolicyNameType' }) -> DeleteGroupPolicyRequest
```

Constructs DeleteGroupPolicyRequest's fields from required parameters

#### `DeleteGroupRequest`

``` purescript
newtype DeleteGroupRequest
  = DeleteGroupRequest { "GroupName" :: GroupNameType' }
```

##### Instances
``` purescript
Newtype DeleteGroupRequest _
Generic DeleteGroupRequest _
Show DeleteGroupRequest
Decode DeleteGroupRequest
Encode DeleteGroupRequest
```

#### `newDeleteGroupRequest`

``` purescript
newDeleteGroupRequest :: GroupNameType' -> DeleteGroupRequest
```

Constructs DeleteGroupRequest from required parameters

#### `newDeleteGroupRequest'`

``` purescript
newDeleteGroupRequest' :: GroupNameType' -> ({ "GroupName" :: GroupNameType' } -> { "GroupName" :: GroupNameType' }) -> DeleteGroupRequest
```

Constructs DeleteGroupRequest's fields from required parameters

#### `DeleteInstanceProfileRequest`

``` purescript
newtype DeleteInstanceProfileRequest
  = DeleteInstanceProfileRequest { "InstanceProfileName" :: InstanceProfileNameType' }
```

##### Instances
``` purescript
Newtype DeleteInstanceProfileRequest _
Generic DeleteInstanceProfileRequest _
Show DeleteInstanceProfileRequest
Decode DeleteInstanceProfileRequest
Encode DeleteInstanceProfileRequest
```

#### `newDeleteInstanceProfileRequest`

``` purescript
newDeleteInstanceProfileRequest :: InstanceProfileNameType' -> DeleteInstanceProfileRequest
```

Constructs DeleteInstanceProfileRequest from required parameters

#### `newDeleteInstanceProfileRequest'`

``` purescript
newDeleteInstanceProfileRequest' :: InstanceProfileNameType' -> ({ "InstanceProfileName" :: InstanceProfileNameType' } -> { "InstanceProfileName" :: InstanceProfileNameType' }) -> DeleteInstanceProfileRequest
```

Constructs DeleteInstanceProfileRequest's fields from required parameters

#### `DeleteLoginProfileRequest`

``` purescript
newtype DeleteLoginProfileRequest
  = DeleteLoginProfileRequest { "UserName" :: UserNameType' }
```

##### Instances
``` purescript
Newtype DeleteLoginProfileRequest _
Generic DeleteLoginProfileRequest _
Show DeleteLoginProfileRequest
Decode DeleteLoginProfileRequest
Encode DeleteLoginProfileRequest
```

#### `newDeleteLoginProfileRequest`

``` purescript
newDeleteLoginProfileRequest :: UserNameType' -> DeleteLoginProfileRequest
```

Constructs DeleteLoginProfileRequest from required parameters

#### `newDeleteLoginProfileRequest'`

``` purescript
newDeleteLoginProfileRequest' :: UserNameType' -> ({ "UserName" :: UserNameType' } -> { "UserName" :: UserNameType' }) -> DeleteLoginProfileRequest
```

Constructs DeleteLoginProfileRequest's fields from required parameters

#### `DeleteOpenIDConnectProviderRequest`

``` purescript
newtype DeleteOpenIDConnectProviderRequest
  = DeleteOpenIDConnectProviderRequest { "OpenIDConnectProviderArn" :: ArnType' }
```

##### Instances
``` purescript
Newtype DeleteOpenIDConnectProviderRequest _
Generic DeleteOpenIDConnectProviderRequest _
Show DeleteOpenIDConnectProviderRequest
Decode DeleteOpenIDConnectProviderRequest
Encode DeleteOpenIDConnectProviderRequest
```

#### `newDeleteOpenIDConnectProviderRequest`

``` purescript
newDeleteOpenIDConnectProviderRequest :: ArnType' -> DeleteOpenIDConnectProviderRequest
```

Constructs DeleteOpenIDConnectProviderRequest from required parameters

#### `newDeleteOpenIDConnectProviderRequest'`

``` purescript
newDeleteOpenIDConnectProviderRequest' :: ArnType' -> ({ "OpenIDConnectProviderArn" :: ArnType' } -> { "OpenIDConnectProviderArn" :: ArnType' }) -> DeleteOpenIDConnectProviderRequest
```

Constructs DeleteOpenIDConnectProviderRequest's fields from required parameters

#### `DeletePolicyRequest`

``` purescript
newtype DeletePolicyRequest
  = DeletePolicyRequest { "PolicyArn" :: ArnType' }
```

##### Instances
``` purescript
Newtype DeletePolicyRequest _
Generic DeletePolicyRequest _
Show DeletePolicyRequest
Decode DeletePolicyRequest
Encode DeletePolicyRequest
```

#### `newDeletePolicyRequest`

``` purescript
newDeletePolicyRequest :: ArnType' -> DeletePolicyRequest
```

Constructs DeletePolicyRequest from required parameters

#### `newDeletePolicyRequest'`

``` purescript
newDeletePolicyRequest' :: ArnType' -> ({ "PolicyArn" :: ArnType' } -> { "PolicyArn" :: ArnType' }) -> DeletePolicyRequest
```

Constructs DeletePolicyRequest's fields from required parameters

#### `DeletePolicyVersionRequest`

``` purescript
newtype DeletePolicyVersionRequest
  = DeletePolicyVersionRequest { "PolicyArn" :: ArnType', "VersionId" :: PolicyVersionIdType' }
```

##### Instances
``` purescript
Newtype DeletePolicyVersionRequest _
Generic DeletePolicyVersionRequest _
Show DeletePolicyVersionRequest
Decode DeletePolicyVersionRequest
Encode DeletePolicyVersionRequest
```

#### `newDeletePolicyVersionRequest`

``` purescript
newDeletePolicyVersionRequest :: ArnType' -> PolicyVersionIdType' -> DeletePolicyVersionRequest
```

Constructs DeletePolicyVersionRequest from required parameters

#### `newDeletePolicyVersionRequest'`

``` purescript
newDeletePolicyVersionRequest' :: ArnType' -> PolicyVersionIdType' -> ({ "PolicyArn" :: ArnType', "VersionId" :: PolicyVersionIdType' } -> { "PolicyArn" :: ArnType', "VersionId" :: PolicyVersionIdType' }) -> DeletePolicyVersionRequest
```

Constructs DeletePolicyVersionRequest's fields from required parameters

#### `DeleteRolePolicyRequest`

``` purescript
newtype DeleteRolePolicyRequest
  = DeleteRolePolicyRequest { "RoleName" :: RoleNameType', "PolicyName" :: PolicyNameType' }
```

##### Instances
``` purescript
Newtype DeleteRolePolicyRequest _
Generic DeleteRolePolicyRequest _
Show DeleteRolePolicyRequest
Decode DeleteRolePolicyRequest
Encode DeleteRolePolicyRequest
```

#### `newDeleteRolePolicyRequest`

``` purescript
newDeleteRolePolicyRequest :: PolicyNameType' -> RoleNameType' -> DeleteRolePolicyRequest
```

Constructs DeleteRolePolicyRequest from required parameters

#### `newDeleteRolePolicyRequest'`

``` purescript
newDeleteRolePolicyRequest' :: PolicyNameType' -> RoleNameType' -> ({ "RoleName" :: RoleNameType', "PolicyName" :: PolicyNameType' } -> { "RoleName" :: RoleNameType', "PolicyName" :: PolicyNameType' }) -> DeleteRolePolicyRequest
```

Constructs DeleteRolePolicyRequest's fields from required parameters

#### `DeleteRoleRequest`

``` purescript
newtype DeleteRoleRequest
  = DeleteRoleRequest { "RoleName" :: RoleNameType' }
```

##### Instances
``` purescript
Newtype DeleteRoleRequest _
Generic DeleteRoleRequest _
Show DeleteRoleRequest
Decode DeleteRoleRequest
Encode DeleteRoleRequest
```

#### `newDeleteRoleRequest`

``` purescript
newDeleteRoleRequest :: RoleNameType' -> DeleteRoleRequest
```

Constructs DeleteRoleRequest from required parameters

#### `newDeleteRoleRequest'`

``` purescript
newDeleteRoleRequest' :: RoleNameType' -> ({ "RoleName" :: RoleNameType' } -> { "RoleName" :: RoleNameType' }) -> DeleteRoleRequest
```

Constructs DeleteRoleRequest's fields from required parameters

#### `DeleteSAMLProviderRequest`

``` purescript
newtype DeleteSAMLProviderRequest
  = DeleteSAMLProviderRequest { "SAMLProviderArn" :: ArnType' }
```

##### Instances
``` purescript
Newtype DeleteSAMLProviderRequest _
Generic DeleteSAMLProviderRequest _
Show DeleteSAMLProviderRequest
Decode DeleteSAMLProviderRequest
Encode DeleteSAMLProviderRequest
```

#### `newDeleteSAMLProviderRequest`

``` purescript
newDeleteSAMLProviderRequest :: ArnType' -> DeleteSAMLProviderRequest
```

Constructs DeleteSAMLProviderRequest from required parameters

#### `newDeleteSAMLProviderRequest'`

``` purescript
newDeleteSAMLProviderRequest' :: ArnType' -> ({ "SAMLProviderArn" :: ArnType' } -> { "SAMLProviderArn" :: ArnType' }) -> DeleteSAMLProviderRequest
```

Constructs DeleteSAMLProviderRequest's fields from required parameters

#### `DeleteSSHPublicKeyRequest`

``` purescript
newtype DeleteSSHPublicKeyRequest
  = DeleteSSHPublicKeyRequest { "UserName" :: UserNameType', "SSHPublicKeyId" :: PublicKeyIdType' }
```

##### Instances
``` purescript
Newtype DeleteSSHPublicKeyRequest _
Generic DeleteSSHPublicKeyRequest _
Show DeleteSSHPublicKeyRequest
Decode DeleteSSHPublicKeyRequest
Encode DeleteSSHPublicKeyRequest
```

#### `newDeleteSSHPublicKeyRequest`

``` purescript
newDeleteSSHPublicKeyRequest :: PublicKeyIdType' -> UserNameType' -> DeleteSSHPublicKeyRequest
```

Constructs DeleteSSHPublicKeyRequest from required parameters

#### `newDeleteSSHPublicKeyRequest'`

``` purescript
newDeleteSSHPublicKeyRequest' :: PublicKeyIdType' -> UserNameType' -> ({ "UserName" :: UserNameType', "SSHPublicKeyId" :: PublicKeyIdType' } -> { "UserName" :: UserNameType', "SSHPublicKeyId" :: PublicKeyIdType' }) -> DeleteSSHPublicKeyRequest
```

Constructs DeleteSSHPublicKeyRequest's fields from required parameters

#### `DeleteServerCertificateRequest`

``` purescript
newtype DeleteServerCertificateRequest
  = DeleteServerCertificateRequest { "ServerCertificateName" :: ServerCertificateNameType' }
```

##### Instances
``` purescript
Newtype DeleteServerCertificateRequest _
Generic DeleteServerCertificateRequest _
Show DeleteServerCertificateRequest
Decode DeleteServerCertificateRequest
Encode DeleteServerCertificateRequest
```

#### `newDeleteServerCertificateRequest`

``` purescript
newDeleteServerCertificateRequest :: ServerCertificateNameType' -> DeleteServerCertificateRequest
```

Constructs DeleteServerCertificateRequest from required parameters

#### `newDeleteServerCertificateRequest'`

``` purescript
newDeleteServerCertificateRequest' :: ServerCertificateNameType' -> ({ "ServerCertificateName" :: ServerCertificateNameType' } -> { "ServerCertificateName" :: ServerCertificateNameType' }) -> DeleteServerCertificateRequest
```

Constructs DeleteServerCertificateRequest's fields from required parameters

#### `DeleteServiceLinkedRoleRequest`

``` purescript
newtype DeleteServiceLinkedRoleRequest
  = DeleteServiceLinkedRoleRequest { "RoleName" :: RoleNameType' }
```

##### Instances
``` purescript
Newtype DeleteServiceLinkedRoleRequest _
Generic DeleteServiceLinkedRoleRequest _
Show DeleteServiceLinkedRoleRequest
Decode DeleteServiceLinkedRoleRequest
Encode DeleteServiceLinkedRoleRequest
```

#### `newDeleteServiceLinkedRoleRequest`

``` purescript
newDeleteServiceLinkedRoleRequest :: RoleNameType' -> DeleteServiceLinkedRoleRequest
```

Constructs DeleteServiceLinkedRoleRequest from required parameters

#### `newDeleteServiceLinkedRoleRequest'`

``` purescript
newDeleteServiceLinkedRoleRequest' :: RoleNameType' -> ({ "RoleName" :: RoleNameType' } -> { "RoleName" :: RoleNameType' }) -> DeleteServiceLinkedRoleRequest
```

Constructs DeleteServiceLinkedRoleRequest's fields from required parameters

#### `DeleteServiceLinkedRoleResponse`

``` purescript
newtype DeleteServiceLinkedRoleResponse
  = DeleteServiceLinkedRoleResponse { "DeletionTaskId" :: DeletionTaskIdType }
```

##### Instances
``` purescript
Newtype DeleteServiceLinkedRoleResponse _
Generic DeleteServiceLinkedRoleResponse _
Show DeleteServiceLinkedRoleResponse
Decode DeleteServiceLinkedRoleResponse
Encode DeleteServiceLinkedRoleResponse
```

#### `newDeleteServiceLinkedRoleResponse`

``` purescript
newDeleteServiceLinkedRoleResponse :: DeletionTaskIdType -> DeleteServiceLinkedRoleResponse
```

Constructs DeleteServiceLinkedRoleResponse from required parameters

#### `newDeleteServiceLinkedRoleResponse'`

``` purescript
newDeleteServiceLinkedRoleResponse' :: DeletionTaskIdType -> ({ "DeletionTaskId" :: DeletionTaskIdType } -> { "DeletionTaskId" :: DeletionTaskIdType }) -> DeleteServiceLinkedRoleResponse
```

Constructs DeleteServiceLinkedRoleResponse's fields from required parameters

#### `DeleteServiceSpecificCredentialRequest`

``` purescript
newtype DeleteServiceSpecificCredentialRequest
  = DeleteServiceSpecificCredentialRequest { "UserName" :: Maybe (UserNameType'), "ServiceSpecificCredentialId" :: ServiceSpecificCredentialId' }
```

##### Instances
``` purescript
Newtype DeleteServiceSpecificCredentialRequest _
Generic DeleteServiceSpecificCredentialRequest _
Show DeleteServiceSpecificCredentialRequest
Decode DeleteServiceSpecificCredentialRequest
Encode DeleteServiceSpecificCredentialRequest
```

#### `newDeleteServiceSpecificCredentialRequest`

``` purescript
newDeleteServiceSpecificCredentialRequest :: ServiceSpecificCredentialId' -> DeleteServiceSpecificCredentialRequest
```

Constructs DeleteServiceSpecificCredentialRequest from required parameters

#### `newDeleteServiceSpecificCredentialRequest'`

``` purescript
newDeleteServiceSpecificCredentialRequest' :: ServiceSpecificCredentialId' -> ({ "UserName" :: Maybe (UserNameType'), "ServiceSpecificCredentialId" :: ServiceSpecificCredentialId' } -> { "UserName" :: Maybe (UserNameType'), "ServiceSpecificCredentialId" :: ServiceSpecificCredentialId' }) -> DeleteServiceSpecificCredentialRequest
```

Constructs DeleteServiceSpecificCredentialRequest's fields from required parameters

#### `DeleteSigningCertificateRequest`

``` purescript
newtype DeleteSigningCertificateRequest
  = DeleteSigningCertificateRequest { "UserName" :: Maybe (ExistingUserNameType'), "CertificateId" :: CertificateIdType' }
```

##### Instances
``` purescript
Newtype DeleteSigningCertificateRequest _
Generic DeleteSigningCertificateRequest _
Show DeleteSigningCertificateRequest
Decode DeleteSigningCertificateRequest
Encode DeleteSigningCertificateRequest
```

#### `newDeleteSigningCertificateRequest`

``` purescript
newDeleteSigningCertificateRequest :: CertificateIdType' -> DeleteSigningCertificateRequest
```

Constructs DeleteSigningCertificateRequest from required parameters

#### `newDeleteSigningCertificateRequest'`

``` purescript
newDeleteSigningCertificateRequest' :: CertificateIdType' -> ({ "UserName" :: Maybe (ExistingUserNameType'), "CertificateId" :: CertificateIdType' } -> { "UserName" :: Maybe (ExistingUserNameType'), "CertificateId" :: CertificateIdType' }) -> DeleteSigningCertificateRequest
```

Constructs DeleteSigningCertificateRequest's fields from required parameters

#### `DeleteUserPolicyRequest`

``` purescript
newtype DeleteUserPolicyRequest
  = DeleteUserPolicyRequest { "UserName" :: ExistingUserNameType', "PolicyName" :: PolicyNameType' }
```

##### Instances
``` purescript
Newtype DeleteUserPolicyRequest _
Generic DeleteUserPolicyRequest _
Show DeleteUserPolicyRequest
Decode DeleteUserPolicyRequest
Encode DeleteUserPolicyRequest
```

#### `newDeleteUserPolicyRequest`

``` purescript
newDeleteUserPolicyRequest :: PolicyNameType' -> ExistingUserNameType' -> DeleteUserPolicyRequest
```

Constructs DeleteUserPolicyRequest from required parameters

#### `newDeleteUserPolicyRequest'`

``` purescript
newDeleteUserPolicyRequest' :: PolicyNameType' -> ExistingUserNameType' -> ({ "UserName" :: ExistingUserNameType', "PolicyName" :: PolicyNameType' } -> { "UserName" :: ExistingUserNameType', "PolicyName" :: PolicyNameType' }) -> DeleteUserPolicyRequest
```

Constructs DeleteUserPolicyRequest's fields from required parameters

#### `DeleteUserRequest`

``` purescript
newtype DeleteUserRequest
  = DeleteUserRequest { "UserName" :: ExistingUserNameType' }
```

##### Instances
``` purescript
Newtype DeleteUserRequest _
Generic DeleteUserRequest _
Show DeleteUserRequest
Decode DeleteUserRequest
Encode DeleteUserRequest
```

#### `newDeleteUserRequest`

``` purescript
newDeleteUserRequest :: ExistingUserNameType' -> DeleteUserRequest
```

Constructs DeleteUserRequest from required parameters

#### `newDeleteUserRequest'`

``` purescript
newDeleteUserRequest' :: ExistingUserNameType' -> ({ "UserName" :: ExistingUserNameType' } -> { "UserName" :: ExistingUserNameType' }) -> DeleteUserRequest
```

Constructs DeleteUserRequest's fields from required parameters

#### `DeleteVirtualMFADeviceRequest`

``` purescript
newtype DeleteVirtualMFADeviceRequest
  = DeleteVirtualMFADeviceRequest { "SerialNumber" :: SerialNumberType' }
```

##### Instances
``` purescript
Newtype DeleteVirtualMFADeviceRequest _
Generic DeleteVirtualMFADeviceRequest _
Show DeleteVirtualMFADeviceRequest
Decode DeleteVirtualMFADeviceRequest
Encode DeleteVirtualMFADeviceRequest
```

#### `newDeleteVirtualMFADeviceRequest`

``` purescript
newDeleteVirtualMFADeviceRequest :: SerialNumberType' -> DeleteVirtualMFADeviceRequest
```

Constructs DeleteVirtualMFADeviceRequest from required parameters

#### `newDeleteVirtualMFADeviceRequest'`

``` purescript
newDeleteVirtualMFADeviceRequest' :: SerialNumberType' -> ({ "SerialNumber" :: SerialNumberType' } -> { "SerialNumber" :: SerialNumberType' }) -> DeleteVirtualMFADeviceRequest
```

Constructs DeleteVirtualMFADeviceRequest's fields from required parameters

#### `DeletionTaskFailureReasonType`

``` purescript
newtype DeletionTaskFailureReasonType
  = DeletionTaskFailureReasonType { "Reason" :: Maybe (ReasonType), "RoleUsageList" :: Maybe (RoleUsageListType) }
```

<p>The reason that the service-linked role deletion failed.</p> <p>This data type is used as a response element in the <a>GetServiceLinkedRoleDeletionStatus</a> operation.</p>

##### Instances
``` purescript
Newtype DeletionTaskFailureReasonType _
Generic DeletionTaskFailureReasonType _
Show DeletionTaskFailureReasonType
Decode DeletionTaskFailureReasonType
Encode DeletionTaskFailureReasonType
```

#### `newDeletionTaskFailureReasonType`

``` purescript
newDeletionTaskFailureReasonType :: DeletionTaskFailureReasonType
```

Constructs DeletionTaskFailureReasonType from required parameters

#### `newDeletionTaskFailureReasonType'`

``` purescript
newDeletionTaskFailureReasonType' :: ({ "Reason" :: Maybe (ReasonType), "RoleUsageList" :: Maybe (RoleUsageListType) } -> { "Reason" :: Maybe (ReasonType), "RoleUsageList" :: Maybe (RoleUsageListType) }) -> DeletionTaskFailureReasonType
```

Constructs DeletionTaskFailureReasonType's fields from required parameters

#### `DeletionTaskIdType`

``` purescript
newtype DeletionTaskIdType
  = DeletionTaskIdType String
```

##### Instances
``` purescript
Newtype DeletionTaskIdType _
Generic DeletionTaskIdType _
Show DeletionTaskIdType
Decode DeletionTaskIdType
Encode DeletionTaskIdType
```

#### `DeletionTaskStatusType`

``` purescript
newtype DeletionTaskStatusType
  = DeletionTaskStatusType String
```

##### Instances
``` purescript
Newtype DeletionTaskStatusType _
Generic DeletionTaskStatusType _
Show DeletionTaskStatusType
Decode DeletionTaskStatusType
Encode DeletionTaskStatusType
```

#### `DetachGroupPolicyRequest`

``` purescript
newtype DetachGroupPolicyRequest
  = DetachGroupPolicyRequest { "GroupName" :: GroupNameType', "PolicyArn" :: ArnType' }
```

##### Instances
``` purescript
Newtype DetachGroupPolicyRequest _
Generic DetachGroupPolicyRequest _
Show DetachGroupPolicyRequest
Decode DetachGroupPolicyRequest
Encode DetachGroupPolicyRequest
```

#### `newDetachGroupPolicyRequest`

``` purescript
newDetachGroupPolicyRequest :: GroupNameType' -> ArnType' -> DetachGroupPolicyRequest
```

Constructs DetachGroupPolicyRequest from required parameters

#### `newDetachGroupPolicyRequest'`

``` purescript
newDetachGroupPolicyRequest' :: GroupNameType' -> ArnType' -> ({ "GroupName" :: GroupNameType', "PolicyArn" :: ArnType' } -> { "GroupName" :: GroupNameType', "PolicyArn" :: ArnType' }) -> DetachGroupPolicyRequest
```

Constructs DetachGroupPolicyRequest's fields from required parameters

#### `DetachRolePolicyRequest`

``` purescript
newtype DetachRolePolicyRequest
  = DetachRolePolicyRequest { "RoleName" :: RoleNameType', "PolicyArn" :: ArnType' }
```

##### Instances
``` purescript
Newtype DetachRolePolicyRequest _
Generic DetachRolePolicyRequest _
Show DetachRolePolicyRequest
Decode DetachRolePolicyRequest
Encode DetachRolePolicyRequest
```

#### `newDetachRolePolicyRequest`

``` purescript
newDetachRolePolicyRequest :: ArnType' -> RoleNameType' -> DetachRolePolicyRequest
```

Constructs DetachRolePolicyRequest from required parameters

#### `newDetachRolePolicyRequest'`

``` purescript
newDetachRolePolicyRequest' :: ArnType' -> RoleNameType' -> ({ "RoleName" :: RoleNameType', "PolicyArn" :: ArnType' } -> { "RoleName" :: RoleNameType', "PolicyArn" :: ArnType' }) -> DetachRolePolicyRequest
```

Constructs DetachRolePolicyRequest's fields from required parameters

#### `DetachUserPolicyRequest`

``` purescript
newtype DetachUserPolicyRequest
  = DetachUserPolicyRequest { "UserName" :: UserNameType', "PolicyArn" :: ArnType' }
```

##### Instances
``` purescript
Newtype DetachUserPolicyRequest _
Generic DetachUserPolicyRequest _
Show DetachUserPolicyRequest
Decode DetachUserPolicyRequest
Encode DetachUserPolicyRequest
```

#### `newDetachUserPolicyRequest`

``` purescript
newDetachUserPolicyRequest :: ArnType' -> UserNameType' -> DetachUserPolicyRequest
```

Constructs DetachUserPolicyRequest from required parameters

#### `newDetachUserPolicyRequest'`

``` purescript
newDetachUserPolicyRequest' :: ArnType' -> UserNameType' -> ({ "UserName" :: UserNameType', "PolicyArn" :: ArnType' } -> { "UserName" :: UserNameType', "PolicyArn" :: ArnType' }) -> DetachUserPolicyRequest
```

Constructs DetachUserPolicyRequest's fields from required parameters

#### `DuplicateCertificateException`

``` purescript
newtype DuplicateCertificateException
  = DuplicateCertificateException { message :: Maybe (DuplicateCertificateMessage') }
```

<p>The request was rejected because the same certificate is associated with an IAM user in the account.</p>

##### Instances
``` purescript
Newtype DuplicateCertificateException _
Generic DuplicateCertificateException _
Show DuplicateCertificateException
Decode DuplicateCertificateException
Encode DuplicateCertificateException
```

#### `newDuplicateCertificateException`

``` purescript
newDuplicateCertificateException :: DuplicateCertificateException
```

Constructs DuplicateCertificateException from required parameters

#### `newDuplicateCertificateException'`

``` purescript
newDuplicateCertificateException' :: ({ message :: Maybe (DuplicateCertificateMessage') } -> { message :: Maybe (DuplicateCertificateMessage') }) -> DuplicateCertificateException
```

Constructs DuplicateCertificateException's fields from required parameters

#### `DuplicateSSHPublicKeyException`

``` purescript
newtype DuplicateSSHPublicKeyException
  = DuplicateSSHPublicKeyException { message :: Maybe (DuplicateSSHPublicKeyMessage') }
```

<p>The request was rejected because the SSH public key is already associated with the specified IAM user.</p>

##### Instances
``` purescript
Newtype DuplicateSSHPublicKeyException _
Generic DuplicateSSHPublicKeyException _
Show DuplicateSSHPublicKeyException
Decode DuplicateSSHPublicKeyException
Encode DuplicateSSHPublicKeyException
```

#### `newDuplicateSSHPublicKeyException`

``` purescript
newDuplicateSSHPublicKeyException :: DuplicateSSHPublicKeyException
```

Constructs DuplicateSSHPublicKeyException from required parameters

#### `newDuplicateSSHPublicKeyException'`

``` purescript
newDuplicateSSHPublicKeyException' :: ({ message :: Maybe (DuplicateSSHPublicKeyMessage') } -> { message :: Maybe (DuplicateSSHPublicKeyMessage') }) -> DuplicateSSHPublicKeyException
```

Constructs DuplicateSSHPublicKeyException's fields from required parameters

#### `EnableMFADeviceRequest`

``` purescript
newtype EnableMFADeviceRequest
  = EnableMFADeviceRequest { "UserName" :: ExistingUserNameType', "SerialNumber" :: SerialNumberType', "AuthenticationCode1" :: AuthenticationCodeType', "AuthenticationCode2" :: AuthenticationCodeType' }
```

##### Instances
``` purescript
Newtype EnableMFADeviceRequest _
Generic EnableMFADeviceRequest _
Show EnableMFADeviceRequest
Decode EnableMFADeviceRequest
Encode EnableMFADeviceRequest
```

#### `newEnableMFADeviceRequest`

``` purescript
newEnableMFADeviceRequest :: AuthenticationCodeType' -> AuthenticationCodeType' -> SerialNumberType' -> ExistingUserNameType' -> EnableMFADeviceRequest
```

Constructs EnableMFADeviceRequest from required parameters

#### `newEnableMFADeviceRequest'`

``` purescript
newEnableMFADeviceRequest' :: AuthenticationCodeType' -> AuthenticationCodeType' -> SerialNumberType' -> ExistingUserNameType' -> ({ "UserName" :: ExistingUserNameType', "SerialNumber" :: SerialNumberType', "AuthenticationCode1" :: AuthenticationCodeType', "AuthenticationCode2" :: AuthenticationCodeType' } -> { "UserName" :: ExistingUserNameType', "SerialNumber" :: SerialNumberType', "AuthenticationCode1" :: AuthenticationCodeType', "AuthenticationCode2" :: AuthenticationCodeType' }) -> EnableMFADeviceRequest
```

Constructs EnableMFADeviceRequest's fields from required parameters

#### `EntityAlreadyExistsException`

``` purescript
newtype EntityAlreadyExistsException
  = EntityAlreadyExistsException { message :: Maybe (EntityAlreadyExistsMessage') }
```

<p>The request was rejected because it attempted to create a resource that already exists.</p>

##### Instances
``` purescript
Newtype EntityAlreadyExistsException _
Generic EntityAlreadyExistsException _
Show EntityAlreadyExistsException
Decode EntityAlreadyExistsException
Encode EntityAlreadyExistsException
```

#### `newEntityAlreadyExistsException`

``` purescript
newEntityAlreadyExistsException :: EntityAlreadyExistsException
```

Constructs EntityAlreadyExistsException from required parameters

#### `newEntityAlreadyExistsException'`

``` purescript
newEntityAlreadyExistsException' :: ({ message :: Maybe (EntityAlreadyExistsMessage') } -> { message :: Maybe (EntityAlreadyExistsMessage') }) -> EntityAlreadyExistsException
```

Constructs EntityAlreadyExistsException's fields from required parameters

#### `EntityTemporarilyUnmodifiableException`

``` purescript
newtype EntityTemporarilyUnmodifiableException
  = EntityTemporarilyUnmodifiableException { message :: Maybe (EntityTemporarilyUnmodifiableMessage') }
```

<p>The request was rejected because it referenced an entity that is temporarily unmodifiable, such as a user name that was deleted and then recreated. The error indicates that the request is likely to succeed if you try again after waiting several minutes. The error message describes the entity.</p>

##### Instances
``` purescript
Newtype EntityTemporarilyUnmodifiableException _
Generic EntityTemporarilyUnmodifiableException _
Show EntityTemporarilyUnmodifiableException
Decode EntityTemporarilyUnmodifiableException
Encode EntityTemporarilyUnmodifiableException
```

#### `newEntityTemporarilyUnmodifiableException`

``` purescript
newEntityTemporarilyUnmodifiableException :: EntityTemporarilyUnmodifiableException
```

Constructs EntityTemporarilyUnmodifiableException from required parameters

#### `newEntityTemporarilyUnmodifiableException'`

``` purescript
newEntityTemporarilyUnmodifiableException' :: ({ message :: Maybe (EntityTemporarilyUnmodifiableMessage') } -> { message :: Maybe (EntityTemporarilyUnmodifiableMessage') }) -> EntityTemporarilyUnmodifiableException
```

Constructs EntityTemporarilyUnmodifiableException's fields from required parameters

#### `EntityType`

``` purescript
newtype EntityType
  = EntityType String
```

##### Instances
``` purescript
Newtype EntityType _
Generic EntityType _
Show EntityType
Decode EntityType
Encode EntityType
```

#### `EvalDecisionDetailsType`

``` purescript
newtype EvalDecisionDetailsType
  = EvalDecisionDetailsType (StrMap PolicyEvaluationDecisionType)
```

##### Instances
``` purescript
Newtype EvalDecisionDetailsType _
Generic EvalDecisionDetailsType _
Show EvalDecisionDetailsType
Decode EvalDecisionDetailsType
Encode EvalDecisionDetailsType
```

#### `EvalDecisionSourceType`

``` purescript
newtype EvalDecisionSourceType
  = EvalDecisionSourceType String
```

##### Instances
``` purescript
Newtype EvalDecisionSourceType _
Generic EvalDecisionSourceType _
Show EvalDecisionSourceType
Decode EvalDecisionSourceType
Encode EvalDecisionSourceType
```

#### `EvaluationResult`

``` purescript
newtype EvaluationResult
  = EvaluationResult { "EvalActionName" :: ActionNameType, "EvalResourceName" :: Maybe (ResourceNameType), "EvalDecision" :: PolicyEvaluationDecisionType, "MatchedStatements" :: Maybe (StatementListType), "MissingContextValues" :: Maybe (ContextKeyNamesResultListType), "OrganizationsDecisionDetail" :: Maybe (OrganizationsDecisionDetail), "EvalDecisionDetails" :: Maybe (EvalDecisionDetailsType), "ResourceSpecificResults" :: Maybe (ResourceSpecificResultListType) }
```

<p>Contains the results of a simulation.</p> <p>This data type is used by the return parameter of <code> <a>SimulateCustomPolicy</a> </code> and <code> <a>SimulatePrincipalPolicy</a> </code>.</p>

##### Instances
``` purescript
Newtype EvaluationResult _
Generic EvaluationResult _
Show EvaluationResult
Decode EvaluationResult
Encode EvaluationResult
```

#### `newEvaluationResult`

``` purescript
newEvaluationResult :: ActionNameType -> PolicyEvaluationDecisionType -> EvaluationResult
```

Constructs EvaluationResult from required parameters

#### `newEvaluationResult'`

``` purescript
newEvaluationResult' :: ActionNameType -> PolicyEvaluationDecisionType -> ({ "EvalActionName" :: ActionNameType, "EvalResourceName" :: Maybe (ResourceNameType), "EvalDecision" :: PolicyEvaluationDecisionType, "MatchedStatements" :: Maybe (StatementListType), "MissingContextValues" :: Maybe (ContextKeyNamesResultListType), "OrganizationsDecisionDetail" :: Maybe (OrganizationsDecisionDetail), "EvalDecisionDetails" :: Maybe (EvalDecisionDetailsType), "ResourceSpecificResults" :: Maybe (ResourceSpecificResultListType) } -> { "EvalActionName" :: ActionNameType, "EvalResourceName" :: Maybe (ResourceNameType), "EvalDecision" :: PolicyEvaluationDecisionType, "MatchedStatements" :: Maybe (StatementListType), "MissingContextValues" :: Maybe (ContextKeyNamesResultListType), "OrganizationsDecisionDetail" :: Maybe (OrganizationsDecisionDetail), "EvalDecisionDetails" :: Maybe (EvalDecisionDetailsType), "ResourceSpecificResults" :: Maybe (ResourceSpecificResultListType) }) -> EvaluationResult
```

Constructs EvaluationResult's fields from required parameters

#### `EvaluationResultsListType`

``` purescript
newtype EvaluationResultsListType
  = EvaluationResultsListType (Array EvaluationResult)
```

##### Instances
``` purescript
Newtype EvaluationResultsListType _
Generic EvaluationResultsListType _
Show EvaluationResultsListType
Decode EvaluationResultsListType
Encode EvaluationResultsListType
```

#### `GenerateCredentialReportResponse`

``` purescript
newtype GenerateCredentialReportResponse
  = GenerateCredentialReportResponse { "State" :: Maybe (ReportStateType), "Description" :: Maybe (ReportStateDescriptionType) }
```

<p>Contains the response to a successful <a>GenerateCredentialReport</a> request. </p>

##### Instances
``` purescript
Newtype GenerateCredentialReportResponse _
Generic GenerateCredentialReportResponse _
Show GenerateCredentialReportResponse
Decode GenerateCredentialReportResponse
Encode GenerateCredentialReportResponse
```

#### `newGenerateCredentialReportResponse`

``` purescript
newGenerateCredentialReportResponse :: GenerateCredentialReportResponse
```

Constructs GenerateCredentialReportResponse from required parameters

#### `newGenerateCredentialReportResponse'`

``` purescript
newGenerateCredentialReportResponse' :: ({ "State" :: Maybe (ReportStateType), "Description" :: Maybe (ReportStateDescriptionType) } -> { "State" :: Maybe (ReportStateType), "Description" :: Maybe (ReportStateDescriptionType) }) -> GenerateCredentialReportResponse
```

Constructs GenerateCredentialReportResponse's fields from required parameters

#### `GetAccessKeyLastUsedRequest`

``` purescript
newtype GetAccessKeyLastUsedRequest
  = GetAccessKeyLastUsedRequest { "AccessKeyId" :: AccessKeyIdType' }
```

##### Instances
``` purescript
Newtype GetAccessKeyLastUsedRequest _
Generic GetAccessKeyLastUsedRequest _
Show GetAccessKeyLastUsedRequest
Decode GetAccessKeyLastUsedRequest
Encode GetAccessKeyLastUsedRequest
```

#### `newGetAccessKeyLastUsedRequest`

``` purescript
newGetAccessKeyLastUsedRequest :: AccessKeyIdType' -> GetAccessKeyLastUsedRequest
```

Constructs GetAccessKeyLastUsedRequest from required parameters

#### `newGetAccessKeyLastUsedRequest'`

``` purescript
newGetAccessKeyLastUsedRequest' :: AccessKeyIdType' -> ({ "AccessKeyId" :: AccessKeyIdType' } -> { "AccessKeyId" :: AccessKeyIdType' }) -> GetAccessKeyLastUsedRequest
```

Constructs GetAccessKeyLastUsedRequest's fields from required parameters

#### `GetAccessKeyLastUsedResponse`

``` purescript
newtype GetAccessKeyLastUsedResponse
  = GetAccessKeyLastUsedResponse { "UserName" :: Maybe (ExistingUserNameType'), "AccessKeyLastUsed" :: Maybe (AccessKeyLastUsed) }
```

<p>Contains the response to a successful <a>GetAccessKeyLastUsed</a> request. It is also returned as a member of the <a>AccessKeyMetaData</a> structure returned by the <a>ListAccessKeys</a> action.</p>

##### Instances
``` purescript
Newtype GetAccessKeyLastUsedResponse _
Generic GetAccessKeyLastUsedResponse _
Show GetAccessKeyLastUsedResponse
Decode GetAccessKeyLastUsedResponse
Encode GetAccessKeyLastUsedResponse
```

#### `newGetAccessKeyLastUsedResponse`

``` purescript
newGetAccessKeyLastUsedResponse :: GetAccessKeyLastUsedResponse
```

Constructs GetAccessKeyLastUsedResponse from required parameters

#### `newGetAccessKeyLastUsedResponse'`

``` purescript
newGetAccessKeyLastUsedResponse' :: ({ "UserName" :: Maybe (ExistingUserNameType'), "AccessKeyLastUsed" :: Maybe (AccessKeyLastUsed) } -> { "UserName" :: Maybe (ExistingUserNameType'), "AccessKeyLastUsed" :: Maybe (AccessKeyLastUsed) }) -> GetAccessKeyLastUsedResponse
```

Constructs GetAccessKeyLastUsedResponse's fields from required parameters

#### `GetAccountAuthorizationDetailsRequest`

``` purescript
newtype GetAccountAuthorizationDetailsRequest
  = GetAccountAuthorizationDetailsRequest { "Filter" :: Maybe (EntityListType'), "MaxItems" :: Maybe (MaxItemsType'), "Marker" :: Maybe (MarkerType') }
```

##### Instances
``` purescript
Newtype GetAccountAuthorizationDetailsRequest _
Generic GetAccountAuthorizationDetailsRequest _
Show GetAccountAuthorizationDetailsRequest
Decode GetAccountAuthorizationDetailsRequest
Encode GetAccountAuthorizationDetailsRequest
```

#### `newGetAccountAuthorizationDetailsRequest`

``` purescript
newGetAccountAuthorizationDetailsRequest :: GetAccountAuthorizationDetailsRequest
```

Constructs GetAccountAuthorizationDetailsRequest from required parameters

#### `newGetAccountAuthorizationDetailsRequest'`

``` purescript
newGetAccountAuthorizationDetailsRequest' :: ({ "Filter" :: Maybe (EntityListType'), "MaxItems" :: Maybe (MaxItemsType'), "Marker" :: Maybe (MarkerType') } -> { "Filter" :: Maybe (EntityListType'), "MaxItems" :: Maybe (MaxItemsType'), "Marker" :: Maybe (MarkerType') }) -> GetAccountAuthorizationDetailsRequest
```

Constructs GetAccountAuthorizationDetailsRequest's fields from required parameters

#### `GetAccountAuthorizationDetailsResponse`

``` purescript
newtype GetAccountAuthorizationDetailsResponse
  = GetAccountAuthorizationDetailsResponse { "UserDetailList" :: Maybe (UserDetailListType'), "GroupDetailList" :: Maybe (GroupDetailListType'), "RoleDetailList" :: Maybe (RoleDetailListType'), "Policies" :: Maybe (ManagedPolicyDetailListType), "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') }
```

<p>Contains the response to a successful <a>GetAccountAuthorizationDetails</a> request. </p>

##### Instances
``` purescript
Newtype GetAccountAuthorizationDetailsResponse _
Generic GetAccountAuthorizationDetailsResponse _
Show GetAccountAuthorizationDetailsResponse
Decode GetAccountAuthorizationDetailsResponse
Encode GetAccountAuthorizationDetailsResponse
```

#### `newGetAccountAuthorizationDetailsResponse`

``` purescript
newGetAccountAuthorizationDetailsResponse :: GetAccountAuthorizationDetailsResponse
```

Constructs GetAccountAuthorizationDetailsResponse from required parameters

#### `newGetAccountAuthorizationDetailsResponse'`

``` purescript
newGetAccountAuthorizationDetailsResponse' :: ({ "UserDetailList" :: Maybe (UserDetailListType'), "GroupDetailList" :: Maybe (GroupDetailListType'), "RoleDetailList" :: Maybe (RoleDetailListType'), "Policies" :: Maybe (ManagedPolicyDetailListType), "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') } -> { "UserDetailList" :: Maybe (UserDetailListType'), "GroupDetailList" :: Maybe (GroupDetailListType'), "RoleDetailList" :: Maybe (RoleDetailListType'), "Policies" :: Maybe (ManagedPolicyDetailListType), "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') }) -> GetAccountAuthorizationDetailsResponse
```

Constructs GetAccountAuthorizationDetailsResponse's fields from required parameters

#### `GetAccountPasswordPolicyResponse`

``` purescript
newtype GetAccountPasswordPolicyResponse
  = GetAccountPasswordPolicyResponse { "PasswordPolicy" :: PasswordPolicy }
```

<p>Contains the response to a successful <a>GetAccountPasswordPolicy</a> request. </p>

##### Instances
``` purescript
Newtype GetAccountPasswordPolicyResponse _
Generic GetAccountPasswordPolicyResponse _
Show GetAccountPasswordPolicyResponse
Decode GetAccountPasswordPolicyResponse
Encode GetAccountPasswordPolicyResponse
```

#### `newGetAccountPasswordPolicyResponse`

``` purescript
newGetAccountPasswordPolicyResponse :: PasswordPolicy -> GetAccountPasswordPolicyResponse
```

Constructs GetAccountPasswordPolicyResponse from required parameters

#### `newGetAccountPasswordPolicyResponse'`

``` purescript
newGetAccountPasswordPolicyResponse' :: PasswordPolicy -> ({ "PasswordPolicy" :: PasswordPolicy } -> { "PasswordPolicy" :: PasswordPolicy }) -> GetAccountPasswordPolicyResponse
```

Constructs GetAccountPasswordPolicyResponse's fields from required parameters

#### `GetAccountSummaryResponse`

``` purescript
newtype GetAccountSummaryResponse
  = GetAccountSummaryResponse { "SummaryMap" :: Maybe (SummaryMapType') }
```

<p>Contains the response to a successful <a>GetAccountSummary</a> request. </p>

##### Instances
``` purescript
Newtype GetAccountSummaryResponse _
Generic GetAccountSummaryResponse _
Show GetAccountSummaryResponse
Decode GetAccountSummaryResponse
Encode GetAccountSummaryResponse
```

#### `newGetAccountSummaryResponse`

``` purescript
newGetAccountSummaryResponse :: GetAccountSummaryResponse
```

Constructs GetAccountSummaryResponse from required parameters

#### `newGetAccountSummaryResponse'`

``` purescript
newGetAccountSummaryResponse' :: ({ "SummaryMap" :: Maybe (SummaryMapType') } -> { "SummaryMap" :: Maybe (SummaryMapType') }) -> GetAccountSummaryResponse
```

Constructs GetAccountSummaryResponse's fields from required parameters

#### `GetContextKeysForCustomPolicyRequest`

``` purescript
newtype GetContextKeysForCustomPolicyRequest
  = GetContextKeysForCustomPolicyRequest { "PolicyInputList" :: SimulationPolicyListType }
```

##### Instances
``` purescript
Newtype GetContextKeysForCustomPolicyRequest _
Generic GetContextKeysForCustomPolicyRequest _
Show GetContextKeysForCustomPolicyRequest
Decode GetContextKeysForCustomPolicyRequest
Encode GetContextKeysForCustomPolicyRequest
```

#### `newGetContextKeysForCustomPolicyRequest`

``` purescript
newGetContextKeysForCustomPolicyRequest :: SimulationPolicyListType -> GetContextKeysForCustomPolicyRequest
```

Constructs GetContextKeysForCustomPolicyRequest from required parameters

#### `newGetContextKeysForCustomPolicyRequest'`

``` purescript
newGetContextKeysForCustomPolicyRequest' :: SimulationPolicyListType -> ({ "PolicyInputList" :: SimulationPolicyListType } -> { "PolicyInputList" :: SimulationPolicyListType }) -> GetContextKeysForCustomPolicyRequest
```

Constructs GetContextKeysForCustomPolicyRequest's fields from required parameters

#### `GetContextKeysForPolicyResponse`

``` purescript
newtype GetContextKeysForPolicyResponse
  = GetContextKeysForPolicyResponse { "ContextKeyNames" :: Maybe (ContextKeyNamesResultListType) }
```

<p>Contains the response to a successful <a>GetContextKeysForPrincipalPolicy</a> or <a>GetContextKeysForCustomPolicy</a> request. </p>

##### Instances
``` purescript
Newtype GetContextKeysForPolicyResponse _
Generic GetContextKeysForPolicyResponse _
Show GetContextKeysForPolicyResponse
Decode GetContextKeysForPolicyResponse
Encode GetContextKeysForPolicyResponse
```

#### `newGetContextKeysForPolicyResponse`

``` purescript
newGetContextKeysForPolicyResponse :: GetContextKeysForPolicyResponse
```

Constructs GetContextKeysForPolicyResponse from required parameters

#### `newGetContextKeysForPolicyResponse'`

``` purescript
newGetContextKeysForPolicyResponse' :: ({ "ContextKeyNames" :: Maybe (ContextKeyNamesResultListType) } -> { "ContextKeyNames" :: Maybe (ContextKeyNamesResultListType) }) -> GetContextKeysForPolicyResponse
```

Constructs GetContextKeysForPolicyResponse's fields from required parameters

#### `GetContextKeysForPrincipalPolicyRequest`

``` purescript
newtype GetContextKeysForPrincipalPolicyRequest
  = GetContextKeysForPrincipalPolicyRequest { "PolicySourceArn" :: ArnType', "PolicyInputList" :: Maybe (SimulationPolicyListType) }
```

##### Instances
``` purescript
Newtype GetContextKeysForPrincipalPolicyRequest _
Generic GetContextKeysForPrincipalPolicyRequest _
Show GetContextKeysForPrincipalPolicyRequest
Decode GetContextKeysForPrincipalPolicyRequest
Encode GetContextKeysForPrincipalPolicyRequest
```

#### `newGetContextKeysForPrincipalPolicyRequest`

``` purescript
newGetContextKeysForPrincipalPolicyRequest :: ArnType' -> GetContextKeysForPrincipalPolicyRequest
```

Constructs GetContextKeysForPrincipalPolicyRequest from required parameters

#### `newGetContextKeysForPrincipalPolicyRequest'`

``` purescript
newGetContextKeysForPrincipalPolicyRequest' :: ArnType' -> ({ "PolicySourceArn" :: ArnType', "PolicyInputList" :: Maybe (SimulationPolicyListType) } -> { "PolicySourceArn" :: ArnType', "PolicyInputList" :: Maybe (SimulationPolicyListType) }) -> GetContextKeysForPrincipalPolicyRequest
```

Constructs GetContextKeysForPrincipalPolicyRequest's fields from required parameters

#### `GetCredentialReportResponse`

``` purescript
newtype GetCredentialReportResponse
  = GetCredentialReportResponse { "Content" :: Maybe (ReportContentType), "ReportFormat" :: Maybe (ReportFormatType), "GeneratedTime" :: Maybe (DateType') }
```

<p>Contains the response to a successful <a>GetCredentialReport</a> request. </p>

##### Instances
``` purescript
Newtype GetCredentialReportResponse _
Generic GetCredentialReportResponse _
Show GetCredentialReportResponse
Decode GetCredentialReportResponse
Encode GetCredentialReportResponse
```

#### `newGetCredentialReportResponse`

``` purescript
newGetCredentialReportResponse :: GetCredentialReportResponse
```

Constructs GetCredentialReportResponse from required parameters

#### `newGetCredentialReportResponse'`

``` purescript
newGetCredentialReportResponse' :: ({ "Content" :: Maybe (ReportContentType), "ReportFormat" :: Maybe (ReportFormatType), "GeneratedTime" :: Maybe (DateType') } -> { "Content" :: Maybe (ReportContentType), "ReportFormat" :: Maybe (ReportFormatType), "GeneratedTime" :: Maybe (DateType') }) -> GetCredentialReportResponse
```

Constructs GetCredentialReportResponse's fields from required parameters

#### `GetGroupPolicyRequest`

``` purescript
newtype GetGroupPolicyRequest
  = GetGroupPolicyRequest { "GroupName" :: GroupNameType', "PolicyName" :: PolicyNameType' }
```

##### Instances
``` purescript
Newtype GetGroupPolicyRequest _
Generic GetGroupPolicyRequest _
Show GetGroupPolicyRequest
Decode GetGroupPolicyRequest
Encode GetGroupPolicyRequest
```

#### `newGetGroupPolicyRequest`

``` purescript
newGetGroupPolicyRequest :: GroupNameType' -> PolicyNameType' -> GetGroupPolicyRequest
```

Constructs GetGroupPolicyRequest from required parameters

#### `newGetGroupPolicyRequest'`

``` purescript
newGetGroupPolicyRequest' :: GroupNameType' -> PolicyNameType' -> ({ "GroupName" :: GroupNameType', "PolicyName" :: PolicyNameType' } -> { "GroupName" :: GroupNameType', "PolicyName" :: PolicyNameType' }) -> GetGroupPolicyRequest
```

Constructs GetGroupPolicyRequest's fields from required parameters

#### `GetGroupPolicyResponse`

``` purescript
newtype GetGroupPolicyResponse
  = GetGroupPolicyResponse { "GroupName" :: GroupNameType', "PolicyName" :: PolicyNameType', "PolicyDocument" :: PolicyDocumentType' }
```

<p>Contains the response to a successful <a>GetGroupPolicy</a> request. </p>

##### Instances
``` purescript
Newtype GetGroupPolicyResponse _
Generic GetGroupPolicyResponse _
Show GetGroupPolicyResponse
Decode GetGroupPolicyResponse
Encode GetGroupPolicyResponse
```

#### `newGetGroupPolicyResponse`

``` purescript
newGetGroupPolicyResponse :: GroupNameType' -> PolicyDocumentType' -> PolicyNameType' -> GetGroupPolicyResponse
```

Constructs GetGroupPolicyResponse from required parameters

#### `newGetGroupPolicyResponse'`

``` purescript
newGetGroupPolicyResponse' :: GroupNameType' -> PolicyDocumentType' -> PolicyNameType' -> ({ "GroupName" :: GroupNameType', "PolicyName" :: PolicyNameType', "PolicyDocument" :: PolicyDocumentType' } -> { "GroupName" :: GroupNameType', "PolicyName" :: PolicyNameType', "PolicyDocument" :: PolicyDocumentType' }) -> GetGroupPolicyResponse
```

Constructs GetGroupPolicyResponse's fields from required parameters

#### `GetGroupRequest`

``` purescript
newtype GetGroupRequest
  = GetGroupRequest { "GroupName" :: GroupNameType', "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') }
```

##### Instances
``` purescript
Newtype GetGroupRequest _
Generic GetGroupRequest _
Show GetGroupRequest
Decode GetGroupRequest
Encode GetGroupRequest
```

#### `newGetGroupRequest`

``` purescript
newGetGroupRequest :: GroupNameType' -> GetGroupRequest
```

Constructs GetGroupRequest from required parameters

#### `newGetGroupRequest'`

``` purescript
newGetGroupRequest' :: GroupNameType' -> ({ "GroupName" :: GroupNameType', "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') } -> { "GroupName" :: GroupNameType', "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') }) -> GetGroupRequest
```

Constructs GetGroupRequest's fields from required parameters

#### `GetGroupResponse`

``` purescript
newtype GetGroupResponse
  = GetGroupResponse { "Group" :: Group, "Users" :: UserListType', "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') }
```

<p>Contains the response to a successful <a>GetGroup</a> request. </p>

##### Instances
``` purescript
Newtype GetGroupResponse _
Generic GetGroupResponse _
Show GetGroupResponse
Decode GetGroupResponse
Encode GetGroupResponse
```

#### `newGetGroupResponse`

``` purescript
newGetGroupResponse :: Group -> UserListType' -> GetGroupResponse
```

Constructs GetGroupResponse from required parameters

#### `newGetGroupResponse'`

``` purescript
newGetGroupResponse' :: Group -> UserListType' -> ({ "Group" :: Group, "Users" :: UserListType', "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') } -> { "Group" :: Group, "Users" :: UserListType', "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') }) -> GetGroupResponse
```

Constructs GetGroupResponse's fields from required parameters

#### `GetInstanceProfileRequest`

``` purescript
newtype GetInstanceProfileRequest
  = GetInstanceProfileRequest { "InstanceProfileName" :: InstanceProfileNameType' }
```

##### Instances
``` purescript
Newtype GetInstanceProfileRequest _
Generic GetInstanceProfileRequest _
Show GetInstanceProfileRequest
Decode GetInstanceProfileRequest
Encode GetInstanceProfileRequest
```

#### `newGetInstanceProfileRequest`

``` purescript
newGetInstanceProfileRequest :: InstanceProfileNameType' -> GetInstanceProfileRequest
```

Constructs GetInstanceProfileRequest from required parameters

#### `newGetInstanceProfileRequest'`

``` purescript
newGetInstanceProfileRequest' :: InstanceProfileNameType' -> ({ "InstanceProfileName" :: InstanceProfileNameType' } -> { "InstanceProfileName" :: InstanceProfileNameType' }) -> GetInstanceProfileRequest
```

Constructs GetInstanceProfileRequest's fields from required parameters

#### `GetInstanceProfileResponse`

``` purescript
newtype GetInstanceProfileResponse
  = GetInstanceProfileResponse { "InstanceProfile" :: InstanceProfile }
```

<p>Contains the response to a successful <a>GetInstanceProfile</a> request. </p>

##### Instances
``` purescript
Newtype GetInstanceProfileResponse _
Generic GetInstanceProfileResponse _
Show GetInstanceProfileResponse
Decode GetInstanceProfileResponse
Encode GetInstanceProfileResponse
```

#### `newGetInstanceProfileResponse`

``` purescript
newGetInstanceProfileResponse :: InstanceProfile -> GetInstanceProfileResponse
```

Constructs GetInstanceProfileResponse from required parameters

#### `newGetInstanceProfileResponse'`

``` purescript
newGetInstanceProfileResponse' :: InstanceProfile -> ({ "InstanceProfile" :: InstanceProfile } -> { "InstanceProfile" :: InstanceProfile }) -> GetInstanceProfileResponse
```

Constructs GetInstanceProfileResponse's fields from required parameters

#### `GetLoginProfileRequest`

``` purescript
newtype GetLoginProfileRequest
  = GetLoginProfileRequest { "UserName" :: UserNameType' }
```

##### Instances
``` purescript
Newtype GetLoginProfileRequest _
Generic GetLoginProfileRequest _
Show GetLoginProfileRequest
Decode GetLoginProfileRequest
Encode GetLoginProfileRequest
```

#### `newGetLoginProfileRequest`

``` purescript
newGetLoginProfileRequest :: UserNameType' -> GetLoginProfileRequest
```

Constructs GetLoginProfileRequest from required parameters

#### `newGetLoginProfileRequest'`

``` purescript
newGetLoginProfileRequest' :: UserNameType' -> ({ "UserName" :: UserNameType' } -> { "UserName" :: UserNameType' }) -> GetLoginProfileRequest
```

Constructs GetLoginProfileRequest's fields from required parameters

#### `GetLoginProfileResponse`

``` purescript
newtype GetLoginProfileResponse
  = GetLoginProfileResponse { "LoginProfile" :: LoginProfile }
```

<p>Contains the response to a successful <a>GetLoginProfile</a> request. </p>

##### Instances
``` purescript
Newtype GetLoginProfileResponse _
Generic GetLoginProfileResponse _
Show GetLoginProfileResponse
Decode GetLoginProfileResponse
Encode GetLoginProfileResponse
```

#### `newGetLoginProfileResponse`

``` purescript
newGetLoginProfileResponse :: LoginProfile -> GetLoginProfileResponse
```

Constructs GetLoginProfileResponse from required parameters

#### `newGetLoginProfileResponse'`

``` purescript
newGetLoginProfileResponse' :: LoginProfile -> ({ "LoginProfile" :: LoginProfile } -> { "LoginProfile" :: LoginProfile }) -> GetLoginProfileResponse
```

Constructs GetLoginProfileResponse's fields from required parameters

#### `GetOpenIDConnectProviderRequest`

``` purescript
newtype GetOpenIDConnectProviderRequest
  = GetOpenIDConnectProviderRequest { "OpenIDConnectProviderArn" :: ArnType' }
```

##### Instances
``` purescript
Newtype GetOpenIDConnectProviderRequest _
Generic GetOpenIDConnectProviderRequest _
Show GetOpenIDConnectProviderRequest
Decode GetOpenIDConnectProviderRequest
Encode GetOpenIDConnectProviderRequest
```

#### `newGetOpenIDConnectProviderRequest`

``` purescript
newGetOpenIDConnectProviderRequest :: ArnType' -> GetOpenIDConnectProviderRequest
```

Constructs GetOpenIDConnectProviderRequest from required parameters

#### `newGetOpenIDConnectProviderRequest'`

``` purescript
newGetOpenIDConnectProviderRequest' :: ArnType' -> ({ "OpenIDConnectProviderArn" :: ArnType' } -> { "OpenIDConnectProviderArn" :: ArnType' }) -> GetOpenIDConnectProviderRequest
```

Constructs GetOpenIDConnectProviderRequest's fields from required parameters

#### `GetOpenIDConnectProviderResponse`

``` purescript
newtype GetOpenIDConnectProviderResponse
  = GetOpenIDConnectProviderResponse { "Url" :: Maybe (OpenIDConnectProviderUrlType), "ClientIDList" :: Maybe (ClientIDListType'), "ThumbprintList" :: Maybe (ThumbprintListType'), "CreateDate" :: Maybe (DateType') }
```

<p>Contains the response to a successful <a>GetOpenIDConnectProvider</a> request. </p>

##### Instances
``` purescript
Newtype GetOpenIDConnectProviderResponse _
Generic GetOpenIDConnectProviderResponse _
Show GetOpenIDConnectProviderResponse
Decode GetOpenIDConnectProviderResponse
Encode GetOpenIDConnectProviderResponse
```

#### `newGetOpenIDConnectProviderResponse`

``` purescript
newGetOpenIDConnectProviderResponse :: GetOpenIDConnectProviderResponse
```

Constructs GetOpenIDConnectProviderResponse from required parameters

#### `newGetOpenIDConnectProviderResponse'`

``` purescript
newGetOpenIDConnectProviderResponse' :: ({ "Url" :: Maybe (OpenIDConnectProviderUrlType), "ClientIDList" :: Maybe (ClientIDListType'), "ThumbprintList" :: Maybe (ThumbprintListType'), "CreateDate" :: Maybe (DateType') } -> { "Url" :: Maybe (OpenIDConnectProviderUrlType), "ClientIDList" :: Maybe (ClientIDListType'), "ThumbprintList" :: Maybe (ThumbprintListType'), "CreateDate" :: Maybe (DateType') }) -> GetOpenIDConnectProviderResponse
```

Constructs GetOpenIDConnectProviderResponse's fields from required parameters

#### `GetPolicyRequest`

``` purescript
newtype GetPolicyRequest
  = GetPolicyRequest { "PolicyArn" :: ArnType' }
```

##### Instances
``` purescript
Newtype GetPolicyRequest _
Generic GetPolicyRequest _
Show GetPolicyRequest
Decode GetPolicyRequest
Encode GetPolicyRequest
```

#### `newGetPolicyRequest`

``` purescript
newGetPolicyRequest :: ArnType' -> GetPolicyRequest
```

Constructs GetPolicyRequest from required parameters

#### `newGetPolicyRequest'`

``` purescript
newGetPolicyRequest' :: ArnType' -> ({ "PolicyArn" :: ArnType' } -> { "PolicyArn" :: ArnType' }) -> GetPolicyRequest
```

Constructs GetPolicyRequest's fields from required parameters

#### `GetPolicyResponse`

``` purescript
newtype GetPolicyResponse
  = GetPolicyResponse { "Policy" :: Maybe (Policy) }
```

<p>Contains the response to a successful <a>GetPolicy</a> request. </p>

##### Instances
``` purescript
Newtype GetPolicyResponse _
Generic GetPolicyResponse _
Show GetPolicyResponse
Decode GetPolicyResponse
Encode GetPolicyResponse
```

#### `newGetPolicyResponse`

``` purescript
newGetPolicyResponse :: GetPolicyResponse
```

Constructs GetPolicyResponse from required parameters

#### `newGetPolicyResponse'`

``` purescript
newGetPolicyResponse' :: ({ "Policy" :: Maybe (Policy) } -> { "Policy" :: Maybe (Policy) }) -> GetPolicyResponse
```

Constructs GetPolicyResponse's fields from required parameters

#### `GetPolicyVersionRequest`

``` purescript
newtype GetPolicyVersionRequest
  = GetPolicyVersionRequest { "PolicyArn" :: ArnType', "VersionId" :: PolicyVersionIdType' }
```

##### Instances
``` purescript
Newtype GetPolicyVersionRequest _
Generic GetPolicyVersionRequest _
Show GetPolicyVersionRequest
Decode GetPolicyVersionRequest
Encode GetPolicyVersionRequest
```

#### `newGetPolicyVersionRequest`

``` purescript
newGetPolicyVersionRequest :: ArnType' -> PolicyVersionIdType' -> GetPolicyVersionRequest
```

Constructs GetPolicyVersionRequest from required parameters

#### `newGetPolicyVersionRequest'`

``` purescript
newGetPolicyVersionRequest' :: ArnType' -> PolicyVersionIdType' -> ({ "PolicyArn" :: ArnType', "VersionId" :: PolicyVersionIdType' } -> { "PolicyArn" :: ArnType', "VersionId" :: PolicyVersionIdType' }) -> GetPolicyVersionRequest
```

Constructs GetPolicyVersionRequest's fields from required parameters

#### `GetPolicyVersionResponse`

``` purescript
newtype GetPolicyVersionResponse
  = GetPolicyVersionResponse { "PolicyVersion" :: Maybe (PolicyVersion) }
```

<p>Contains the response to a successful <a>GetPolicyVersion</a> request. </p>

##### Instances
``` purescript
Newtype GetPolicyVersionResponse _
Generic GetPolicyVersionResponse _
Show GetPolicyVersionResponse
Decode GetPolicyVersionResponse
Encode GetPolicyVersionResponse
```

#### `newGetPolicyVersionResponse`

``` purescript
newGetPolicyVersionResponse :: GetPolicyVersionResponse
```

Constructs GetPolicyVersionResponse from required parameters

#### `newGetPolicyVersionResponse'`

``` purescript
newGetPolicyVersionResponse' :: ({ "PolicyVersion" :: Maybe (PolicyVersion) } -> { "PolicyVersion" :: Maybe (PolicyVersion) }) -> GetPolicyVersionResponse
```

Constructs GetPolicyVersionResponse's fields from required parameters

#### `GetRolePolicyRequest`

``` purescript
newtype GetRolePolicyRequest
  = GetRolePolicyRequest { "RoleName" :: RoleNameType', "PolicyName" :: PolicyNameType' }
```

##### Instances
``` purescript
Newtype GetRolePolicyRequest _
Generic GetRolePolicyRequest _
Show GetRolePolicyRequest
Decode GetRolePolicyRequest
Encode GetRolePolicyRequest
```

#### `newGetRolePolicyRequest`

``` purescript
newGetRolePolicyRequest :: PolicyNameType' -> RoleNameType' -> GetRolePolicyRequest
```

Constructs GetRolePolicyRequest from required parameters

#### `newGetRolePolicyRequest'`

``` purescript
newGetRolePolicyRequest' :: PolicyNameType' -> RoleNameType' -> ({ "RoleName" :: RoleNameType', "PolicyName" :: PolicyNameType' } -> { "RoleName" :: RoleNameType', "PolicyName" :: PolicyNameType' }) -> GetRolePolicyRequest
```

Constructs GetRolePolicyRequest's fields from required parameters

#### `GetRolePolicyResponse`

``` purescript
newtype GetRolePolicyResponse
  = GetRolePolicyResponse { "RoleName" :: RoleNameType', "PolicyName" :: PolicyNameType', "PolicyDocument" :: PolicyDocumentType' }
```

<p>Contains the response to a successful <a>GetRolePolicy</a> request. </p>

##### Instances
``` purescript
Newtype GetRolePolicyResponse _
Generic GetRolePolicyResponse _
Show GetRolePolicyResponse
Decode GetRolePolicyResponse
Encode GetRolePolicyResponse
```

#### `newGetRolePolicyResponse`

``` purescript
newGetRolePolicyResponse :: PolicyDocumentType' -> PolicyNameType' -> RoleNameType' -> GetRolePolicyResponse
```

Constructs GetRolePolicyResponse from required parameters

#### `newGetRolePolicyResponse'`

``` purescript
newGetRolePolicyResponse' :: PolicyDocumentType' -> PolicyNameType' -> RoleNameType' -> ({ "RoleName" :: RoleNameType', "PolicyName" :: PolicyNameType', "PolicyDocument" :: PolicyDocumentType' } -> { "RoleName" :: RoleNameType', "PolicyName" :: PolicyNameType', "PolicyDocument" :: PolicyDocumentType' }) -> GetRolePolicyResponse
```

Constructs GetRolePolicyResponse's fields from required parameters

#### `GetRoleRequest`

``` purescript
newtype GetRoleRequest
  = GetRoleRequest { "RoleName" :: RoleNameType' }
```

##### Instances
``` purescript
Newtype GetRoleRequest _
Generic GetRoleRequest _
Show GetRoleRequest
Decode GetRoleRequest
Encode GetRoleRequest
```

#### `newGetRoleRequest`

``` purescript
newGetRoleRequest :: RoleNameType' -> GetRoleRequest
```

Constructs GetRoleRequest from required parameters

#### `newGetRoleRequest'`

``` purescript
newGetRoleRequest' :: RoleNameType' -> ({ "RoleName" :: RoleNameType' } -> { "RoleName" :: RoleNameType' }) -> GetRoleRequest
```

Constructs GetRoleRequest's fields from required parameters

#### `GetRoleResponse`

``` purescript
newtype GetRoleResponse
  = GetRoleResponse { "Role" :: Role }
```

<p>Contains the response to a successful <a>GetRole</a> request. </p>

##### Instances
``` purescript
Newtype GetRoleResponse _
Generic GetRoleResponse _
Show GetRoleResponse
Decode GetRoleResponse
Encode GetRoleResponse
```

#### `newGetRoleResponse`

``` purescript
newGetRoleResponse :: Role -> GetRoleResponse
```

Constructs GetRoleResponse from required parameters

#### `newGetRoleResponse'`

``` purescript
newGetRoleResponse' :: Role -> ({ "Role" :: Role } -> { "Role" :: Role }) -> GetRoleResponse
```

Constructs GetRoleResponse's fields from required parameters

#### `GetSAMLProviderRequest`

``` purescript
newtype GetSAMLProviderRequest
  = GetSAMLProviderRequest { "SAMLProviderArn" :: ArnType' }
```

##### Instances
``` purescript
Newtype GetSAMLProviderRequest _
Generic GetSAMLProviderRequest _
Show GetSAMLProviderRequest
Decode GetSAMLProviderRequest
Encode GetSAMLProviderRequest
```

#### `newGetSAMLProviderRequest`

``` purescript
newGetSAMLProviderRequest :: ArnType' -> GetSAMLProviderRequest
```

Constructs GetSAMLProviderRequest from required parameters

#### `newGetSAMLProviderRequest'`

``` purescript
newGetSAMLProviderRequest' :: ArnType' -> ({ "SAMLProviderArn" :: ArnType' } -> { "SAMLProviderArn" :: ArnType' }) -> GetSAMLProviderRequest
```

Constructs GetSAMLProviderRequest's fields from required parameters

#### `GetSAMLProviderResponse`

``` purescript
newtype GetSAMLProviderResponse
  = GetSAMLProviderResponse { "SAMLMetadataDocument" :: Maybe (SAMLMetadataDocumentType), "CreateDate" :: Maybe (DateType'), "ValidUntil" :: Maybe (DateType') }
```

<p>Contains the response to a successful <a>GetSAMLProvider</a> request. </p>

##### Instances
``` purescript
Newtype GetSAMLProviderResponse _
Generic GetSAMLProviderResponse _
Show GetSAMLProviderResponse
Decode GetSAMLProviderResponse
Encode GetSAMLProviderResponse
```

#### `newGetSAMLProviderResponse`

``` purescript
newGetSAMLProviderResponse :: GetSAMLProviderResponse
```

Constructs GetSAMLProviderResponse from required parameters

#### `newGetSAMLProviderResponse'`

``` purescript
newGetSAMLProviderResponse' :: ({ "SAMLMetadataDocument" :: Maybe (SAMLMetadataDocumentType), "CreateDate" :: Maybe (DateType'), "ValidUntil" :: Maybe (DateType') } -> { "SAMLMetadataDocument" :: Maybe (SAMLMetadataDocumentType), "CreateDate" :: Maybe (DateType'), "ValidUntil" :: Maybe (DateType') }) -> GetSAMLProviderResponse
```

Constructs GetSAMLProviderResponse's fields from required parameters

#### `GetSSHPublicKeyRequest`

``` purescript
newtype GetSSHPublicKeyRequest
  = GetSSHPublicKeyRequest { "UserName" :: UserNameType', "SSHPublicKeyId" :: PublicKeyIdType', "Encoding" :: EncodingType' }
```

##### Instances
``` purescript
Newtype GetSSHPublicKeyRequest _
Generic GetSSHPublicKeyRequest _
Show GetSSHPublicKeyRequest
Decode GetSSHPublicKeyRequest
Encode GetSSHPublicKeyRequest
```

#### `newGetSSHPublicKeyRequest`

``` purescript
newGetSSHPublicKeyRequest :: EncodingType' -> PublicKeyIdType' -> UserNameType' -> GetSSHPublicKeyRequest
```

Constructs GetSSHPublicKeyRequest from required parameters

#### `newGetSSHPublicKeyRequest'`

``` purescript
newGetSSHPublicKeyRequest' :: EncodingType' -> PublicKeyIdType' -> UserNameType' -> ({ "UserName" :: UserNameType', "SSHPublicKeyId" :: PublicKeyIdType', "Encoding" :: EncodingType' } -> { "UserName" :: UserNameType', "SSHPublicKeyId" :: PublicKeyIdType', "Encoding" :: EncodingType' }) -> GetSSHPublicKeyRequest
```

Constructs GetSSHPublicKeyRequest's fields from required parameters

#### `GetSSHPublicKeyResponse`

``` purescript
newtype GetSSHPublicKeyResponse
  = GetSSHPublicKeyResponse { "SSHPublicKey" :: Maybe (SSHPublicKey) }
```

<p>Contains the response to a successful <a>GetSSHPublicKey</a> request.</p>

##### Instances
``` purescript
Newtype GetSSHPublicKeyResponse _
Generic GetSSHPublicKeyResponse _
Show GetSSHPublicKeyResponse
Decode GetSSHPublicKeyResponse
Encode GetSSHPublicKeyResponse
```

#### `newGetSSHPublicKeyResponse`

``` purescript
newGetSSHPublicKeyResponse :: GetSSHPublicKeyResponse
```

Constructs GetSSHPublicKeyResponse from required parameters

#### `newGetSSHPublicKeyResponse'`

``` purescript
newGetSSHPublicKeyResponse' :: ({ "SSHPublicKey" :: Maybe (SSHPublicKey) } -> { "SSHPublicKey" :: Maybe (SSHPublicKey) }) -> GetSSHPublicKeyResponse
```

Constructs GetSSHPublicKeyResponse's fields from required parameters

#### `GetServerCertificateRequest`

``` purescript
newtype GetServerCertificateRequest
  = GetServerCertificateRequest { "ServerCertificateName" :: ServerCertificateNameType' }
```

##### Instances
``` purescript
Newtype GetServerCertificateRequest _
Generic GetServerCertificateRequest _
Show GetServerCertificateRequest
Decode GetServerCertificateRequest
Encode GetServerCertificateRequest
```

#### `newGetServerCertificateRequest`

``` purescript
newGetServerCertificateRequest :: ServerCertificateNameType' -> GetServerCertificateRequest
```

Constructs GetServerCertificateRequest from required parameters

#### `newGetServerCertificateRequest'`

``` purescript
newGetServerCertificateRequest' :: ServerCertificateNameType' -> ({ "ServerCertificateName" :: ServerCertificateNameType' } -> { "ServerCertificateName" :: ServerCertificateNameType' }) -> GetServerCertificateRequest
```

Constructs GetServerCertificateRequest's fields from required parameters

#### `GetServerCertificateResponse`

``` purescript
newtype GetServerCertificateResponse
  = GetServerCertificateResponse { "ServerCertificate" :: ServerCertificate }
```

<p>Contains the response to a successful <a>GetServerCertificate</a> request. </p>

##### Instances
``` purescript
Newtype GetServerCertificateResponse _
Generic GetServerCertificateResponse _
Show GetServerCertificateResponse
Decode GetServerCertificateResponse
Encode GetServerCertificateResponse
```

#### `newGetServerCertificateResponse`

``` purescript
newGetServerCertificateResponse :: ServerCertificate -> GetServerCertificateResponse
```

Constructs GetServerCertificateResponse from required parameters

#### `newGetServerCertificateResponse'`

``` purescript
newGetServerCertificateResponse' :: ServerCertificate -> ({ "ServerCertificate" :: ServerCertificate } -> { "ServerCertificate" :: ServerCertificate }) -> GetServerCertificateResponse
```

Constructs GetServerCertificateResponse's fields from required parameters

#### `GetServiceLinkedRoleDeletionStatusRequest`

``` purescript
newtype GetServiceLinkedRoleDeletionStatusRequest
  = GetServiceLinkedRoleDeletionStatusRequest { "DeletionTaskId" :: DeletionTaskIdType }
```

##### Instances
``` purescript
Newtype GetServiceLinkedRoleDeletionStatusRequest _
Generic GetServiceLinkedRoleDeletionStatusRequest _
Show GetServiceLinkedRoleDeletionStatusRequest
Decode GetServiceLinkedRoleDeletionStatusRequest
Encode GetServiceLinkedRoleDeletionStatusRequest
```

#### `newGetServiceLinkedRoleDeletionStatusRequest`

``` purescript
newGetServiceLinkedRoleDeletionStatusRequest :: DeletionTaskIdType -> GetServiceLinkedRoleDeletionStatusRequest
```

Constructs GetServiceLinkedRoleDeletionStatusRequest from required parameters

#### `newGetServiceLinkedRoleDeletionStatusRequest'`

``` purescript
newGetServiceLinkedRoleDeletionStatusRequest' :: DeletionTaskIdType -> ({ "DeletionTaskId" :: DeletionTaskIdType } -> { "DeletionTaskId" :: DeletionTaskIdType }) -> GetServiceLinkedRoleDeletionStatusRequest
```

Constructs GetServiceLinkedRoleDeletionStatusRequest's fields from required parameters

#### `GetServiceLinkedRoleDeletionStatusResponse`

``` purescript
newtype GetServiceLinkedRoleDeletionStatusResponse
  = GetServiceLinkedRoleDeletionStatusResponse { "Status" :: DeletionTaskStatusType, "Reason" :: Maybe (DeletionTaskFailureReasonType) }
```

##### Instances
``` purescript
Newtype GetServiceLinkedRoleDeletionStatusResponse _
Generic GetServiceLinkedRoleDeletionStatusResponse _
Show GetServiceLinkedRoleDeletionStatusResponse
Decode GetServiceLinkedRoleDeletionStatusResponse
Encode GetServiceLinkedRoleDeletionStatusResponse
```

#### `newGetServiceLinkedRoleDeletionStatusResponse`

``` purescript
newGetServiceLinkedRoleDeletionStatusResponse :: DeletionTaskStatusType -> GetServiceLinkedRoleDeletionStatusResponse
```

Constructs GetServiceLinkedRoleDeletionStatusResponse from required parameters

#### `newGetServiceLinkedRoleDeletionStatusResponse'`

``` purescript
newGetServiceLinkedRoleDeletionStatusResponse' :: DeletionTaskStatusType -> ({ "Status" :: DeletionTaskStatusType, "Reason" :: Maybe (DeletionTaskFailureReasonType) } -> { "Status" :: DeletionTaskStatusType, "Reason" :: Maybe (DeletionTaskFailureReasonType) }) -> GetServiceLinkedRoleDeletionStatusResponse
```

Constructs GetServiceLinkedRoleDeletionStatusResponse's fields from required parameters

#### `GetUserPolicyRequest`

``` purescript
newtype GetUserPolicyRequest
  = GetUserPolicyRequest { "UserName" :: ExistingUserNameType', "PolicyName" :: PolicyNameType' }
```

##### Instances
``` purescript
Newtype GetUserPolicyRequest _
Generic GetUserPolicyRequest _
Show GetUserPolicyRequest
Decode GetUserPolicyRequest
Encode GetUserPolicyRequest
```

#### `newGetUserPolicyRequest`

``` purescript
newGetUserPolicyRequest :: PolicyNameType' -> ExistingUserNameType' -> GetUserPolicyRequest
```

Constructs GetUserPolicyRequest from required parameters

#### `newGetUserPolicyRequest'`

``` purescript
newGetUserPolicyRequest' :: PolicyNameType' -> ExistingUserNameType' -> ({ "UserName" :: ExistingUserNameType', "PolicyName" :: PolicyNameType' } -> { "UserName" :: ExistingUserNameType', "PolicyName" :: PolicyNameType' }) -> GetUserPolicyRequest
```

Constructs GetUserPolicyRequest's fields from required parameters

#### `GetUserPolicyResponse`

``` purescript
newtype GetUserPolicyResponse
  = GetUserPolicyResponse { "UserName" :: ExistingUserNameType', "PolicyName" :: PolicyNameType', "PolicyDocument" :: PolicyDocumentType' }
```

<p>Contains the response to a successful <a>GetUserPolicy</a> request. </p>

##### Instances
``` purescript
Newtype GetUserPolicyResponse _
Generic GetUserPolicyResponse _
Show GetUserPolicyResponse
Decode GetUserPolicyResponse
Encode GetUserPolicyResponse
```

#### `newGetUserPolicyResponse`

``` purescript
newGetUserPolicyResponse :: PolicyDocumentType' -> PolicyNameType' -> ExistingUserNameType' -> GetUserPolicyResponse
```

Constructs GetUserPolicyResponse from required parameters

#### `newGetUserPolicyResponse'`

``` purescript
newGetUserPolicyResponse' :: PolicyDocumentType' -> PolicyNameType' -> ExistingUserNameType' -> ({ "UserName" :: ExistingUserNameType', "PolicyName" :: PolicyNameType', "PolicyDocument" :: PolicyDocumentType' } -> { "UserName" :: ExistingUserNameType', "PolicyName" :: PolicyNameType', "PolicyDocument" :: PolicyDocumentType' }) -> GetUserPolicyResponse
```

Constructs GetUserPolicyResponse's fields from required parameters

#### `GetUserRequest`

``` purescript
newtype GetUserRequest
  = GetUserRequest { "UserName" :: Maybe (ExistingUserNameType') }
```

##### Instances
``` purescript
Newtype GetUserRequest _
Generic GetUserRequest _
Show GetUserRequest
Decode GetUserRequest
Encode GetUserRequest
```

#### `newGetUserRequest`

``` purescript
newGetUserRequest :: GetUserRequest
```

Constructs GetUserRequest from required parameters

#### `newGetUserRequest'`

``` purescript
newGetUserRequest' :: ({ "UserName" :: Maybe (ExistingUserNameType') } -> { "UserName" :: Maybe (ExistingUserNameType') }) -> GetUserRequest
```

Constructs GetUserRequest's fields from required parameters

#### `GetUserResponse`

``` purescript
newtype GetUserResponse
  = GetUserResponse { "User" :: User }
```

<p>Contains the response to a successful <a>GetUser</a> request. </p>

##### Instances
``` purescript
Newtype GetUserResponse _
Generic GetUserResponse _
Show GetUserResponse
Decode GetUserResponse
Encode GetUserResponse
```

#### `newGetUserResponse`

``` purescript
newGetUserResponse :: User -> GetUserResponse
```

Constructs GetUserResponse from required parameters

#### `newGetUserResponse'`

``` purescript
newGetUserResponse' :: User -> ({ "User" :: User } -> { "User" :: User }) -> GetUserResponse
```

Constructs GetUserResponse's fields from required parameters

#### `Group`

``` purescript
newtype Group
  = Group { "Path" :: PathType', "GroupName" :: GroupNameType', "GroupId" :: IdType', "Arn" :: ArnType', "CreateDate" :: DateType' }
```

<p>Contains information about an IAM group entity.</p> <p>This data type is used as a response element in the following actions:</p> <ul> <li> <p> <a>CreateGroup</a> </p> </li> <li> <p> <a>GetGroup</a> </p> </li> <li> <p> <a>ListGroups</a> </p> </li> </ul>

##### Instances
``` purescript
Newtype Group _
Generic Group _
Show Group
Decode Group
Encode Group
```

#### `newGroup`

``` purescript
newGroup :: ArnType' -> DateType' -> IdType' -> GroupNameType' -> PathType' -> Group
```

Constructs Group from required parameters

#### `newGroup'`

``` purescript
newGroup' :: ArnType' -> DateType' -> IdType' -> GroupNameType' -> PathType' -> ({ "Path" :: PathType', "GroupName" :: GroupNameType', "GroupId" :: IdType', "Arn" :: ArnType', "CreateDate" :: DateType' } -> { "Path" :: PathType', "GroupName" :: GroupNameType', "GroupId" :: IdType', "Arn" :: ArnType', "CreateDate" :: DateType' }) -> Group
```

Constructs Group's fields from required parameters

#### `GroupDetail`

``` purescript
newtype GroupDetail
  = GroupDetail { "Path" :: Maybe (PathType'), "GroupName" :: Maybe (GroupNameType'), "GroupId" :: Maybe (IdType'), "Arn" :: Maybe (ArnType'), "CreateDate" :: Maybe (DateType'), "GroupPolicyList" :: Maybe (PolicyDetailListType'), "AttachedManagedPolicies" :: Maybe (AttachedPoliciesListType') }
```

<p>Contains information about an IAM group, including all of the group's policies.</p> <p>This data type is used as a response element in the <a>GetAccountAuthorizationDetails</a> action.</p>

##### Instances
``` purescript
Newtype GroupDetail _
Generic GroupDetail _
Show GroupDetail
Decode GroupDetail
Encode GroupDetail
```

#### `newGroupDetail`

``` purescript
newGroupDetail :: GroupDetail
```

Constructs GroupDetail from required parameters

#### `newGroupDetail'`

``` purescript
newGroupDetail' :: ({ "Path" :: Maybe (PathType'), "GroupName" :: Maybe (GroupNameType'), "GroupId" :: Maybe (IdType'), "Arn" :: Maybe (ArnType'), "CreateDate" :: Maybe (DateType'), "GroupPolicyList" :: Maybe (PolicyDetailListType'), "AttachedManagedPolicies" :: Maybe (AttachedPoliciesListType') } -> { "Path" :: Maybe (PathType'), "GroupName" :: Maybe (GroupNameType'), "GroupId" :: Maybe (IdType'), "Arn" :: Maybe (ArnType'), "CreateDate" :: Maybe (DateType'), "GroupPolicyList" :: Maybe (PolicyDetailListType'), "AttachedManagedPolicies" :: Maybe (AttachedPoliciesListType') }) -> GroupDetail
```

Constructs GroupDetail's fields from required parameters

#### `InstanceProfile`

``` purescript
newtype InstanceProfile
  = InstanceProfile { "Path" :: PathType', "InstanceProfileName" :: InstanceProfileNameType', "InstanceProfileId" :: IdType', "Arn" :: ArnType', "CreateDate" :: DateType', "Roles" :: RoleListType' }
```

<p>Contains information about an instance profile.</p> <p>This data type is used as a response element in the following actions:</p> <ul> <li> <p> <a>CreateInstanceProfile</a> </p> </li> <li> <p> <a>GetInstanceProfile</a> </p> </li> <li> <p> <a>ListInstanceProfiles</a> </p> </li> <li> <p> <a>ListInstanceProfilesForRole</a> </p> </li> </ul>

##### Instances
``` purescript
Newtype InstanceProfile _
Generic InstanceProfile _
Show InstanceProfile
Decode InstanceProfile
Encode InstanceProfile
```

#### `newInstanceProfile`

``` purescript
newInstanceProfile :: ArnType' -> DateType' -> IdType' -> InstanceProfileNameType' -> PathType' -> RoleListType' -> InstanceProfile
```

Constructs InstanceProfile from required parameters

#### `newInstanceProfile'`

``` purescript
newInstanceProfile' :: ArnType' -> DateType' -> IdType' -> InstanceProfileNameType' -> PathType' -> RoleListType' -> ({ "Path" :: PathType', "InstanceProfileName" :: InstanceProfileNameType', "InstanceProfileId" :: IdType', "Arn" :: ArnType', "CreateDate" :: DateType', "Roles" :: RoleListType' } -> { "Path" :: PathType', "InstanceProfileName" :: InstanceProfileNameType', "InstanceProfileId" :: IdType', "Arn" :: ArnType', "CreateDate" :: DateType', "Roles" :: RoleListType' }) -> InstanceProfile
```

Constructs InstanceProfile's fields from required parameters

#### `InvalidAuthenticationCodeException`

``` purescript
newtype InvalidAuthenticationCodeException
  = InvalidAuthenticationCodeException { message :: Maybe (InvalidAuthenticationCodeMessage') }
```

<p>The request was rejected because the authentication code was not recognized. The error message describes the specific error.</p>

##### Instances
``` purescript
Newtype InvalidAuthenticationCodeException _
Generic InvalidAuthenticationCodeException _
Show InvalidAuthenticationCodeException
Decode InvalidAuthenticationCodeException
Encode InvalidAuthenticationCodeException
```

#### `newInvalidAuthenticationCodeException`

``` purescript
newInvalidAuthenticationCodeException :: InvalidAuthenticationCodeException
```

Constructs InvalidAuthenticationCodeException from required parameters

#### `newInvalidAuthenticationCodeException'`

``` purescript
newInvalidAuthenticationCodeException' :: ({ message :: Maybe (InvalidAuthenticationCodeMessage') } -> { message :: Maybe (InvalidAuthenticationCodeMessage') }) -> InvalidAuthenticationCodeException
```

Constructs InvalidAuthenticationCodeException's fields from required parameters

#### `InvalidCertificateException`

``` purescript
newtype InvalidCertificateException
  = InvalidCertificateException { message :: Maybe (InvalidCertificateMessage') }
```

<p>The request was rejected because the certificate is invalid.</p>

##### Instances
``` purescript
Newtype InvalidCertificateException _
Generic InvalidCertificateException _
Show InvalidCertificateException
Decode InvalidCertificateException
Encode InvalidCertificateException
```

#### `newInvalidCertificateException`

``` purescript
newInvalidCertificateException :: InvalidCertificateException
```

Constructs InvalidCertificateException from required parameters

#### `newInvalidCertificateException'`

``` purescript
newInvalidCertificateException' :: ({ message :: Maybe (InvalidCertificateMessage') } -> { message :: Maybe (InvalidCertificateMessage') }) -> InvalidCertificateException
```

Constructs InvalidCertificateException's fields from required parameters

#### `InvalidInputException`

``` purescript
newtype InvalidInputException
  = InvalidInputException { message :: Maybe (InvalidInputMessage') }
```

<p>The request was rejected because an invalid or out-of-range value was supplied for an input parameter.</p>

##### Instances
``` purescript
Newtype InvalidInputException _
Generic InvalidInputException _
Show InvalidInputException
Decode InvalidInputException
Encode InvalidInputException
```

#### `newInvalidInputException`

``` purescript
newInvalidInputException :: InvalidInputException
```

Constructs InvalidInputException from required parameters

#### `newInvalidInputException'`

``` purescript
newInvalidInputException' :: ({ message :: Maybe (InvalidInputMessage') } -> { message :: Maybe (InvalidInputMessage') }) -> InvalidInputException
```

Constructs InvalidInputException's fields from required parameters

#### `InvalidPublicKeyException`

``` purescript
newtype InvalidPublicKeyException
  = InvalidPublicKeyException { message :: Maybe (InvalidPublicKeyMessage') }
```

<p>The request was rejected because the public key is malformed or otherwise invalid.</p>

##### Instances
``` purescript
Newtype InvalidPublicKeyException _
Generic InvalidPublicKeyException _
Show InvalidPublicKeyException
Decode InvalidPublicKeyException
Encode InvalidPublicKeyException
```

#### `newInvalidPublicKeyException`

``` purescript
newInvalidPublicKeyException :: InvalidPublicKeyException
```

Constructs InvalidPublicKeyException from required parameters

#### `newInvalidPublicKeyException'`

``` purescript
newInvalidPublicKeyException' :: ({ message :: Maybe (InvalidPublicKeyMessage') } -> { message :: Maybe (InvalidPublicKeyMessage') }) -> InvalidPublicKeyException
```

Constructs InvalidPublicKeyException's fields from required parameters

#### `InvalidUserTypeException`

``` purescript
newtype InvalidUserTypeException
  = InvalidUserTypeException { message :: Maybe (InvalidUserTypeMessage') }
```

<p>The request was rejected because the type of user for the transaction was incorrect.</p>

##### Instances
``` purescript
Newtype InvalidUserTypeException _
Generic InvalidUserTypeException _
Show InvalidUserTypeException
Decode InvalidUserTypeException
Encode InvalidUserTypeException
```

#### `newInvalidUserTypeException`

``` purescript
newInvalidUserTypeException :: InvalidUserTypeException
```

Constructs InvalidUserTypeException from required parameters

#### `newInvalidUserTypeException'`

``` purescript
newInvalidUserTypeException' :: ({ message :: Maybe (InvalidUserTypeMessage') } -> { message :: Maybe (InvalidUserTypeMessage') }) -> InvalidUserTypeException
```

Constructs InvalidUserTypeException's fields from required parameters

#### `KeyPairMismatchException`

``` purescript
newtype KeyPairMismatchException
  = KeyPairMismatchException { message :: Maybe (KeyPairMismatchMessage') }
```

<p>The request was rejected because the public key certificate and the private key do not match.</p>

##### Instances
``` purescript
Newtype KeyPairMismatchException _
Generic KeyPairMismatchException _
Show KeyPairMismatchException
Decode KeyPairMismatchException
Encode KeyPairMismatchException
```

#### `newKeyPairMismatchException`

``` purescript
newKeyPairMismatchException :: KeyPairMismatchException
```

Constructs KeyPairMismatchException from required parameters

#### `newKeyPairMismatchException'`

``` purescript
newKeyPairMismatchException' :: ({ message :: Maybe (KeyPairMismatchMessage') } -> { message :: Maybe (KeyPairMismatchMessage') }) -> KeyPairMismatchException
```

Constructs KeyPairMismatchException's fields from required parameters

#### `LimitExceededException`

``` purescript
newtype LimitExceededException
  = LimitExceededException { message :: Maybe (LimitExceededMessage') }
```

<p>The request was rejected because it attempted to create resources beyond the current AWS account limits. The error message describes the limit exceeded.</p>

##### Instances
``` purescript
Newtype LimitExceededException _
Generic LimitExceededException _
Show LimitExceededException
Decode LimitExceededException
Encode LimitExceededException
```

#### `newLimitExceededException`

``` purescript
newLimitExceededException :: LimitExceededException
```

Constructs LimitExceededException from required parameters

#### `newLimitExceededException'`

``` purescript
newLimitExceededException' :: ({ message :: Maybe (LimitExceededMessage') } -> { message :: Maybe (LimitExceededMessage') }) -> LimitExceededException
```

Constructs LimitExceededException's fields from required parameters

#### `LineNumber`

``` purescript
newtype LineNumber
  = LineNumber Int
```

##### Instances
``` purescript
Newtype LineNumber _
Generic LineNumber _
Show LineNumber
Decode LineNumber
Encode LineNumber
```

#### `ListAccessKeysRequest`

``` purescript
newtype ListAccessKeysRequest
  = ListAccessKeysRequest { "UserName" :: Maybe (ExistingUserNameType'), "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') }
```

##### Instances
``` purescript
Newtype ListAccessKeysRequest _
Generic ListAccessKeysRequest _
Show ListAccessKeysRequest
Decode ListAccessKeysRequest
Encode ListAccessKeysRequest
```

#### `newListAccessKeysRequest`

``` purescript
newListAccessKeysRequest :: ListAccessKeysRequest
```

Constructs ListAccessKeysRequest from required parameters

#### `newListAccessKeysRequest'`

``` purescript
newListAccessKeysRequest' :: ({ "UserName" :: Maybe (ExistingUserNameType'), "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') } -> { "UserName" :: Maybe (ExistingUserNameType'), "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') }) -> ListAccessKeysRequest
```

Constructs ListAccessKeysRequest's fields from required parameters

#### `ListAccessKeysResponse`

``` purescript
newtype ListAccessKeysResponse
  = ListAccessKeysResponse { "AccessKeyMetadata" :: AccessKeyMetadataListType', "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') }
```

<p>Contains the response to a successful <a>ListAccessKeys</a> request. </p>

##### Instances
``` purescript
Newtype ListAccessKeysResponse _
Generic ListAccessKeysResponse _
Show ListAccessKeysResponse
Decode ListAccessKeysResponse
Encode ListAccessKeysResponse
```

#### `newListAccessKeysResponse`

``` purescript
newListAccessKeysResponse :: AccessKeyMetadataListType' -> ListAccessKeysResponse
```

Constructs ListAccessKeysResponse from required parameters

#### `newListAccessKeysResponse'`

``` purescript
newListAccessKeysResponse' :: AccessKeyMetadataListType' -> ({ "AccessKeyMetadata" :: AccessKeyMetadataListType', "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') } -> { "AccessKeyMetadata" :: AccessKeyMetadataListType', "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') }) -> ListAccessKeysResponse
```

Constructs ListAccessKeysResponse's fields from required parameters

#### `ListAccountAliasesRequest`

``` purescript
newtype ListAccountAliasesRequest
  = ListAccountAliasesRequest { "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') }
```

##### Instances
``` purescript
Newtype ListAccountAliasesRequest _
Generic ListAccountAliasesRequest _
Show ListAccountAliasesRequest
Decode ListAccountAliasesRequest
Encode ListAccountAliasesRequest
```

#### `newListAccountAliasesRequest`

``` purescript
newListAccountAliasesRequest :: ListAccountAliasesRequest
```

Constructs ListAccountAliasesRequest from required parameters

#### `newListAccountAliasesRequest'`

``` purescript
newListAccountAliasesRequest' :: ({ "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') } -> { "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') }) -> ListAccountAliasesRequest
```

Constructs ListAccountAliasesRequest's fields from required parameters

#### `ListAccountAliasesResponse`

``` purescript
newtype ListAccountAliasesResponse
  = ListAccountAliasesResponse { "AccountAliases" :: AccountAliasListType', "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') }
```

<p>Contains the response to a successful <a>ListAccountAliases</a> request. </p>

##### Instances
``` purescript
Newtype ListAccountAliasesResponse _
Generic ListAccountAliasesResponse _
Show ListAccountAliasesResponse
Decode ListAccountAliasesResponse
Encode ListAccountAliasesResponse
```

#### `newListAccountAliasesResponse`

``` purescript
newListAccountAliasesResponse :: AccountAliasListType' -> ListAccountAliasesResponse
```

Constructs ListAccountAliasesResponse from required parameters

#### `newListAccountAliasesResponse'`

``` purescript
newListAccountAliasesResponse' :: AccountAliasListType' -> ({ "AccountAliases" :: AccountAliasListType', "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') } -> { "AccountAliases" :: AccountAliasListType', "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') }) -> ListAccountAliasesResponse
```

Constructs ListAccountAliasesResponse's fields from required parameters

#### `ListAttachedGroupPoliciesRequest`

``` purescript
newtype ListAttachedGroupPoliciesRequest
  = ListAttachedGroupPoliciesRequest { "GroupName" :: GroupNameType', "PathPrefix" :: Maybe (PolicyPathType'), "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') }
```

##### Instances
``` purescript
Newtype ListAttachedGroupPoliciesRequest _
Generic ListAttachedGroupPoliciesRequest _
Show ListAttachedGroupPoliciesRequest
Decode ListAttachedGroupPoliciesRequest
Encode ListAttachedGroupPoliciesRequest
```

#### `newListAttachedGroupPoliciesRequest`

``` purescript
newListAttachedGroupPoliciesRequest :: GroupNameType' -> ListAttachedGroupPoliciesRequest
```

Constructs ListAttachedGroupPoliciesRequest from required parameters

#### `newListAttachedGroupPoliciesRequest'`

``` purescript
newListAttachedGroupPoliciesRequest' :: GroupNameType' -> ({ "GroupName" :: GroupNameType', "PathPrefix" :: Maybe (PolicyPathType'), "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') } -> { "GroupName" :: GroupNameType', "PathPrefix" :: Maybe (PolicyPathType'), "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') }) -> ListAttachedGroupPoliciesRequest
```

Constructs ListAttachedGroupPoliciesRequest's fields from required parameters

#### `ListAttachedGroupPoliciesResponse`

``` purescript
newtype ListAttachedGroupPoliciesResponse
  = ListAttachedGroupPoliciesResponse { "AttachedPolicies" :: Maybe (AttachedPoliciesListType'), "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') }
```

<p>Contains the response to a successful <a>ListAttachedGroupPolicies</a> request. </p>

##### Instances
``` purescript
Newtype ListAttachedGroupPoliciesResponse _
Generic ListAttachedGroupPoliciesResponse _
Show ListAttachedGroupPoliciesResponse
Decode ListAttachedGroupPoliciesResponse
Encode ListAttachedGroupPoliciesResponse
```

#### `newListAttachedGroupPoliciesResponse`

``` purescript
newListAttachedGroupPoliciesResponse :: ListAttachedGroupPoliciesResponse
```

Constructs ListAttachedGroupPoliciesResponse from required parameters

#### `newListAttachedGroupPoliciesResponse'`

``` purescript
newListAttachedGroupPoliciesResponse' :: ({ "AttachedPolicies" :: Maybe (AttachedPoliciesListType'), "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') } -> { "AttachedPolicies" :: Maybe (AttachedPoliciesListType'), "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') }) -> ListAttachedGroupPoliciesResponse
```

Constructs ListAttachedGroupPoliciesResponse's fields from required parameters

#### `ListAttachedRolePoliciesRequest`

``` purescript
newtype ListAttachedRolePoliciesRequest
  = ListAttachedRolePoliciesRequest { "RoleName" :: RoleNameType', "PathPrefix" :: Maybe (PolicyPathType'), "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') }
```

##### Instances
``` purescript
Newtype ListAttachedRolePoliciesRequest _
Generic ListAttachedRolePoliciesRequest _
Show ListAttachedRolePoliciesRequest
Decode ListAttachedRolePoliciesRequest
Encode ListAttachedRolePoliciesRequest
```

#### `newListAttachedRolePoliciesRequest`

``` purescript
newListAttachedRolePoliciesRequest :: RoleNameType' -> ListAttachedRolePoliciesRequest
```

Constructs ListAttachedRolePoliciesRequest from required parameters

#### `newListAttachedRolePoliciesRequest'`

``` purescript
newListAttachedRolePoliciesRequest' :: RoleNameType' -> ({ "RoleName" :: RoleNameType', "PathPrefix" :: Maybe (PolicyPathType'), "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') } -> { "RoleName" :: RoleNameType', "PathPrefix" :: Maybe (PolicyPathType'), "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') }) -> ListAttachedRolePoliciesRequest
```

Constructs ListAttachedRolePoliciesRequest's fields from required parameters

#### `ListAttachedRolePoliciesResponse`

``` purescript
newtype ListAttachedRolePoliciesResponse
  = ListAttachedRolePoliciesResponse { "AttachedPolicies" :: Maybe (AttachedPoliciesListType'), "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') }
```

<p>Contains the response to a successful <a>ListAttachedRolePolicies</a> request. </p>

##### Instances
``` purescript
Newtype ListAttachedRolePoliciesResponse _
Generic ListAttachedRolePoliciesResponse _
Show ListAttachedRolePoliciesResponse
Decode ListAttachedRolePoliciesResponse
Encode ListAttachedRolePoliciesResponse
```

#### `newListAttachedRolePoliciesResponse`

``` purescript
newListAttachedRolePoliciesResponse :: ListAttachedRolePoliciesResponse
```

Constructs ListAttachedRolePoliciesResponse from required parameters

#### `newListAttachedRolePoliciesResponse'`

``` purescript
newListAttachedRolePoliciesResponse' :: ({ "AttachedPolicies" :: Maybe (AttachedPoliciesListType'), "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') } -> { "AttachedPolicies" :: Maybe (AttachedPoliciesListType'), "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') }) -> ListAttachedRolePoliciesResponse
```

Constructs ListAttachedRolePoliciesResponse's fields from required parameters

#### `ListAttachedUserPoliciesRequest`

``` purescript
newtype ListAttachedUserPoliciesRequest
  = ListAttachedUserPoliciesRequest { "UserName" :: UserNameType', "PathPrefix" :: Maybe (PolicyPathType'), "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') }
```

##### Instances
``` purescript
Newtype ListAttachedUserPoliciesRequest _
Generic ListAttachedUserPoliciesRequest _
Show ListAttachedUserPoliciesRequest
Decode ListAttachedUserPoliciesRequest
Encode ListAttachedUserPoliciesRequest
```

#### `newListAttachedUserPoliciesRequest`

``` purescript
newListAttachedUserPoliciesRequest :: UserNameType' -> ListAttachedUserPoliciesRequest
```

Constructs ListAttachedUserPoliciesRequest from required parameters

#### `newListAttachedUserPoliciesRequest'`

``` purescript
newListAttachedUserPoliciesRequest' :: UserNameType' -> ({ "UserName" :: UserNameType', "PathPrefix" :: Maybe (PolicyPathType'), "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') } -> { "UserName" :: UserNameType', "PathPrefix" :: Maybe (PolicyPathType'), "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') }) -> ListAttachedUserPoliciesRequest
```

Constructs ListAttachedUserPoliciesRequest's fields from required parameters

#### `ListAttachedUserPoliciesResponse`

``` purescript
newtype ListAttachedUserPoliciesResponse
  = ListAttachedUserPoliciesResponse { "AttachedPolicies" :: Maybe (AttachedPoliciesListType'), "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') }
```

<p>Contains the response to a successful <a>ListAttachedUserPolicies</a> request. </p>

##### Instances
``` purescript
Newtype ListAttachedUserPoliciesResponse _
Generic ListAttachedUserPoliciesResponse _
Show ListAttachedUserPoliciesResponse
Decode ListAttachedUserPoliciesResponse
Encode ListAttachedUserPoliciesResponse
```

#### `newListAttachedUserPoliciesResponse`

``` purescript
newListAttachedUserPoliciesResponse :: ListAttachedUserPoliciesResponse
```

Constructs ListAttachedUserPoliciesResponse from required parameters

#### `newListAttachedUserPoliciesResponse'`

``` purescript
newListAttachedUserPoliciesResponse' :: ({ "AttachedPolicies" :: Maybe (AttachedPoliciesListType'), "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') } -> { "AttachedPolicies" :: Maybe (AttachedPoliciesListType'), "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') }) -> ListAttachedUserPoliciesResponse
```

Constructs ListAttachedUserPoliciesResponse's fields from required parameters

#### `ListEntitiesForPolicyRequest`

``` purescript
newtype ListEntitiesForPolicyRequest
  = ListEntitiesForPolicyRequest { "PolicyArn" :: ArnType', "EntityFilter" :: Maybe (EntityType), "PathPrefix" :: Maybe (PathType'), "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') }
```

##### Instances
``` purescript
Newtype ListEntitiesForPolicyRequest _
Generic ListEntitiesForPolicyRequest _
Show ListEntitiesForPolicyRequest
Decode ListEntitiesForPolicyRequest
Encode ListEntitiesForPolicyRequest
```

#### `newListEntitiesForPolicyRequest`

``` purescript
newListEntitiesForPolicyRequest :: ArnType' -> ListEntitiesForPolicyRequest
```

Constructs ListEntitiesForPolicyRequest from required parameters

#### `newListEntitiesForPolicyRequest'`

``` purescript
newListEntitiesForPolicyRequest' :: ArnType' -> ({ "PolicyArn" :: ArnType', "EntityFilter" :: Maybe (EntityType), "PathPrefix" :: Maybe (PathType'), "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') } -> { "PolicyArn" :: ArnType', "EntityFilter" :: Maybe (EntityType), "PathPrefix" :: Maybe (PathType'), "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') }) -> ListEntitiesForPolicyRequest
```

Constructs ListEntitiesForPolicyRequest's fields from required parameters

#### `ListEntitiesForPolicyResponse`

``` purescript
newtype ListEntitiesForPolicyResponse
  = ListEntitiesForPolicyResponse { "PolicyGroups" :: Maybe (PolicyGroupListType), "PolicyUsers" :: Maybe (PolicyUserListType), "PolicyRoles" :: Maybe (PolicyRoleListType), "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') }
```

<p>Contains the response to a successful <a>ListEntitiesForPolicy</a> request. </p>

##### Instances
``` purescript
Newtype ListEntitiesForPolicyResponse _
Generic ListEntitiesForPolicyResponse _
Show ListEntitiesForPolicyResponse
Decode ListEntitiesForPolicyResponse
Encode ListEntitiesForPolicyResponse
```

#### `newListEntitiesForPolicyResponse`

``` purescript
newListEntitiesForPolicyResponse :: ListEntitiesForPolicyResponse
```

Constructs ListEntitiesForPolicyResponse from required parameters

#### `newListEntitiesForPolicyResponse'`

``` purescript
newListEntitiesForPolicyResponse' :: ({ "PolicyGroups" :: Maybe (PolicyGroupListType), "PolicyUsers" :: Maybe (PolicyUserListType), "PolicyRoles" :: Maybe (PolicyRoleListType), "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') } -> { "PolicyGroups" :: Maybe (PolicyGroupListType), "PolicyUsers" :: Maybe (PolicyUserListType), "PolicyRoles" :: Maybe (PolicyRoleListType), "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') }) -> ListEntitiesForPolicyResponse
```

Constructs ListEntitiesForPolicyResponse's fields from required parameters

#### `ListGroupPoliciesRequest`

``` purescript
newtype ListGroupPoliciesRequest
  = ListGroupPoliciesRequest { "GroupName" :: GroupNameType', "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') }
```

##### Instances
``` purescript
Newtype ListGroupPoliciesRequest _
Generic ListGroupPoliciesRequest _
Show ListGroupPoliciesRequest
Decode ListGroupPoliciesRequest
Encode ListGroupPoliciesRequest
```

#### `newListGroupPoliciesRequest`

``` purescript
newListGroupPoliciesRequest :: GroupNameType' -> ListGroupPoliciesRequest
```

Constructs ListGroupPoliciesRequest from required parameters

#### `newListGroupPoliciesRequest'`

``` purescript
newListGroupPoliciesRequest' :: GroupNameType' -> ({ "GroupName" :: GroupNameType', "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') } -> { "GroupName" :: GroupNameType', "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') }) -> ListGroupPoliciesRequest
```

Constructs ListGroupPoliciesRequest's fields from required parameters

#### `ListGroupPoliciesResponse`

``` purescript
newtype ListGroupPoliciesResponse
  = ListGroupPoliciesResponse { "PolicyNames" :: PolicyNameListType', "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') }
```

<p>Contains the response to a successful <a>ListGroupPolicies</a> request. </p>

##### Instances
``` purescript
Newtype ListGroupPoliciesResponse _
Generic ListGroupPoliciesResponse _
Show ListGroupPoliciesResponse
Decode ListGroupPoliciesResponse
Encode ListGroupPoliciesResponse
```

#### `newListGroupPoliciesResponse`

``` purescript
newListGroupPoliciesResponse :: PolicyNameListType' -> ListGroupPoliciesResponse
```

Constructs ListGroupPoliciesResponse from required parameters

#### `newListGroupPoliciesResponse'`

``` purescript
newListGroupPoliciesResponse' :: PolicyNameListType' -> ({ "PolicyNames" :: PolicyNameListType', "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') } -> { "PolicyNames" :: PolicyNameListType', "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') }) -> ListGroupPoliciesResponse
```

Constructs ListGroupPoliciesResponse's fields from required parameters

#### `ListGroupsForUserRequest`

``` purescript
newtype ListGroupsForUserRequest
  = ListGroupsForUserRequest { "UserName" :: ExistingUserNameType', "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') }
```

##### Instances
``` purescript
Newtype ListGroupsForUserRequest _
Generic ListGroupsForUserRequest _
Show ListGroupsForUserRequest
Decode ListGroupsForUserRequest
Encode ListGroupsForUserRequest
```

#### `newListGroupsForUserRequest`

``` purescript
newListGroupsForUserRequest :: ExistingUserNameType' -> ListGroupsForUserRequest
```

Constructs ListGroupsForUserRequest from required parameters

#### `newListGroupsForUserRequest'`

``` purescript
newListGroupsForUserRequest' :: ExistingUserNameType' -> ({ "UserName" :: ExistingUserNameType', "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') } -> { "UserName" :: ExistingUserNameType', "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') }) -> ListGroupsForUserRequest
```

Constructs ListGroupsForUserRequest's fields from required parameters

#### `ListGroupsForUserResponse`

``` purescript
newtype ListGroupsForUserResponse
  = ListGroupsForUserResponse { "Groups" :: GroupListType', "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') }
```

<p>Contains the response to a successful <a>ListGroupsForUser</a> request. </p>

##### Instances
``` purescript
Newtype ListGroupsForUserResponse _
Generic ListGroupsForUserResponse _
Show ListGroupsForUserResponse
Decode ListGroupsForUserResponse
Encode ListGroupsForUserResponse
```

#### `newListGroupsForUserResponse`

``` purescript
newListGroupsForUserResponse :: GroupListType' -> ListGroupsForUserResponse
```

Constructs ListGroupsForUserResponse from required parameters

#### `newListGroupsForUserResponse'`

``` purescript
newListGroupsForUserResponse' :: GroupListType' -> ({ "Groups" :: GroupListType', "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') } -> { "Groups" :: GroupListType', "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') }) -> ListGroupsForUserResponse
```

Constructs ListGroupsForUserResponse's fields from required parameters

#### `ListGroupsRequest`

``` purescript
newtype ListGroupsRequest
  = ListGroupsRequest { "PathPrefix" :: Maybe (PathPrefixType'), "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') }
```

##### Instances
``` purescript
Newtype ListGroupsRequest _
Generic ListGroupsRequest _
Show ListGroupsRequest
Decode ListGroupsRequest
Encode ListGroupsRequest
```

#### `newListGroupsRequest`

``` purescript
newListGroupsRequest :: ListGroupsRequest
```

Constructs ListGroupsRequest from required parameters

#### `newListGroupsRequest'`

``` purescript
newListGroupsRequest' :: ({ "PathPrefix" :: Maybe (PathPrefixType'), "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') } -> { "PathPrefix" :: Maybe (PathPrefixType'), "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') }) -> ListGroupsRequest
```

Constructs ListGroupsRequest's fields from required parameters

#### `ListGroupsResponse`

``` purescript
newtype ListGroupsResponse
  = ListGroupsResponse { "Groups" :: GroupListType', "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') }
```

<p>Contains the response to a successful <a>ListGroups</a> request. </p>

##### Instances
``` purescript
Newtype ListGroupsResponse _
Generic ListGroupsResponse _
Show ListGroupsResponse
Decode ListGroupsResponse
Encode ListGroupsResponse
```

#### `newListGroupsResponse`

``` purescript
newListGroupsResponse :: GroupListType' -> ListGroupsResponse
```

Constructs ListGroupsResponse from required parameters

#### `newListGroupsResponse'`

``` purescript
newListGroupsResponse' :: GroupListType' -> ({ "Groups" :: GroupListType', "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') } -> { "Groups" :: GroupListType', "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') }) -> ListGroupsResponse
```

Constructs ListGroupsResponse's fields from required parameters

#### `ListInstanceProfilesForRoleRequest`

``` purescript
newtype ListInstanceProfilesForRoleRequest
  = ListInstanceProfilesForRoleRequest { "RoleName" :: RoleNameType', "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') }
```

##### Instances
``` purescript
Newtype ListInstanceProfilesForRoleRequest _
Generic ListInstanceProfilesForRoleRequest _
Show ListInstanceProfilesForRoleRequest
Decode ListInstanceProfilesForRoleRequest
Encode ListInstanceProfilesForRoleRequest
```

#### `newListInstanceProfilesForRoleRequest`

``` purescript
newListInstanceProfilesForRoleRequest :: RoleNameType' -> ListInstanceProfilesForRoleRequest
```

Constructs ListInstanceProfilesForRoleRequest from required parameters

#### `newListInstanceProfilesForRoleRequest'`

``` purescript
newListInstanceProfilesForRoleRequest' :: RoleNameType' -> ({ "RoleName" :: RoleNameType', "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') } -> { "RoleName" :: RoleNameType', "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') }) -> ListInstanceProfilesForRoleRequest
```

Constructs ListInstanceProfilesForRoleRequest's fields from required parameters

#### `ListInstanceProfilesForRoleResponse`

``` purescript
newtype ListInstanceProfilesForRoleResponse
  = ListInstanceProfilesForRoleResponse { "InstanceProfiles" :: InstanceProfileListType', "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') }
```

<p>Contains the response to a successful <a>ListInstanceProfilesForRole</a> request. </p>

##### Instances
``` purescript
Newtype ListInstanceProfilesForRoleResponse _
Generic ListInstanceProfilesForRoleResponse _
Show ListInstanceProfilesForRoleResponse
Decode ListInstanceProfilesForRoleResponse
Encode ListInstanceProfilesForRoleResponse
```

#### `newListInstanceProfilesForRoleResponse`

``` purescript
newListInstanceProfilesForRoleResponse :: InstanceProfileListType' -> ListInstanceProfilesForRoleResponse
```

Constructs ListInstanceProfilesForRoleResponse from required parameters

#### `newListInstanceProfilesForRoleResponse'`

``` purescript
newListInstanceProfilesForRoleResponse' :: InstanceProfileListType' -> ({ "InstanceProfiles" :: InstanceProfileListType', "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') } -> { "InstanceProfiles" :: InstanceProfileListType', "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') }) -> ListInstanceProfilesForRoleResponse
```

Constructs ListInstanceProfilesForRoleResponse's fields from required parameters

#### `ListInstanceProfilesRequest`

``` purescript
newtype ListInstanceProfilesRequest
  = ListInstanceProfilesRequest { "PathPrefix" :: Maybe (PathPrefixType'), "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') }
```

##### Instances
``` purescript
Newtype ListInstanceProfilesRequest _
Generic ListInstanceProfilesRequest _
Show ListInstanceProfilesRequest
Decode ListInstanceProfilesRequest
Encode ListInstanceProfilesRequest
```

#### `newListInstanceProfilesRequest`

``` purescript
newListInstanceProfilesRequest :: ListInstanceProfilesRequest
```

Constructs ListInstanceProfilesRequest from required parameters

#### `newListInstanceProfilesRequest'`

``` purescript
newListInstanceProfilesRequest' :: ({ "PathPrefix" :: Maybe (PathPrefixType'), "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') } -> { "PathPrefix" :: Maybe (PathPrefixType'), "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') }) -> ListInstanceProfilesRequest
```

Constructs ListInstanceProfilesRequest's fields from required parameters

#### `ListInstanceProfilesResponse`

``` purescript
newtype ListInstanceProfilesResponse
  = ListInstanceProfilesResponse { "InstanceProfiles" :: InstanceProfileListType', "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') }
```

<p>Contains the response to a successful <a>ListInstanceProfiles</a> request. </p>

##### Instances
``` purescript
Newtype ListInstanceProfilesResponse _
Generic ListInstanceProfilesResponse _
Show ListInstanceProfilesResponse
Decode ListInstanceProfilesResponse
Encode ListInstanceProfilesResponse
```

#### `newListInstanceProfilesResponse`

``` purescript
newListInstanceProfilesResponse :: InstanceProfileListType' -> ListInstanceProfilesResponse
```

Constructs ListInstanceProfilesResponse from required parameters

#### `newListInstanceProfilesResponse'`

``` purescript
newListInstanceProfilesResponse' :: InstanceProfileListType' -> ({ "InstanceProfiles" :: InstanceProfileListType', "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') } -> { "InstanceProfiles" :: InstanceProfileListType', "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') }) -> ListInstanceProfilesResponse
```

Constructs ListInstanceProfilesResponse's fields from required parameters

#### `ListMFADevicesRequest`

``` purescript
newtype ListMFADevicesRequest
  = ListMFADevicesRequest { "UserName" :: Maybe (ExistingUserNameType'), "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') }
```

##### Instances
``` purescript
Newtype ListMFADevicesRequest _
Generic ListMFADevicesRequest _
Show ListMFADevicesRequest
Decode ListMFADevicesRequest
Encode ListMFADevicesRequest
```

#### `newListMFADevicesRequest`

``` purescript
newListMFADevicesRequest :: ListMFADevicesRequest
```

Constructs ListMFADevicesRequest from required parameters

#### `newListMFADevicesRequest'`

``` purescript
newListMFADevicesRequest' :: ({ "UserName" :: Maybe (ExistingUserNameType'), "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') } -> { "UserName" :: Maybe (ExistingUserNameType'), "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') }) -> ListMFADevicesRequest
```

Constructs ListMFADevicesRequest's fields from required parameters

#### `ListMFADevicesResponse`

``` purescript
newtype ListMFADevicesResponse
  = ListMFADevicesResponse { "MFADevices" :: MfaDeviceListType', "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') }
```

<p>Contains the response to a successful <a>ListMFADevices</a> request. </p>

##### Instances
``` purescript
Newtype ListMFADevicesResponse _
Generic ListMFADevicesResponse _
Show ListMFADevicesResponse
Decode ListMFADevicesResponse
Encode ListMFADevicesResponse
```

#### `newListMFADevicesResponse`

``` purescript
newListMFADevicesResponse :: MfaDeviceListType' -> ListMFADevicesResponse
```

Constructs ListMFADevicesResponse from required parameters

#### `newListMFADevicesResponse'`

``` purescript
newListMFADevicesResponse' :: MfaDeviceListType' -> ({ "MFADevices" :: MfaDeviceListType', "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') } -> { "MFADevices" :: MfaDeviceListType', "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') }) -> ListMFADevicesResponse
```

Constructs ListMFADevicesResponse's fields from required parameters

#### `ListOpenIDConnectProvidersRequest`

``` purescript
newtype ListOpenIDConnectProvidersRequest
  = ListOpenIDConnectProvidersRequest NoArguments
```

##### Instances
``` purescript
Newtype ListOpenIDConnectProvidersRequest _
Generic ListOpenIDConnectProvidersRequest _
Show ListOpenIDConnectProvidersRequest
Decode ListOpenIDConnectProvidersRequest
Encode ListOpenIDConnectProvidersRequest
```

#### `ListOpenIDConnectProvidersResponse`

``` purescript
newtype ListOpenIDConnectProvidersResponse
  = ListOpenIDConnectProvidersResponse { "OpenIDConnectProviderList" :: Maybe (OpenIDConnectProviderListType) }
```

<p>Contains the response to a successful <a>ListOpenIDConnectProviders</a> request. </p>

##### Instances
``` purescript
Newtype ListOpenIDConnectProvidersResponse _
Generic ListOpenIDConnectProvidersResponse _
Show ListOpenIDConnectProvidersResponse
Decode ListOpenIDConnectProvidersResponse
Encode ListOpenIDConnectProvidersResponse
```

#### `newListOpenIDConnectProvidersResponse`

``` purescript
newListOpenIDConnectProvidersResponse :: ListOpenIDConnectProvidersResponse
```

Constructs ListOpenIDConnectProvidersResponse from required parameters

#### `newListOpenIDConnectProvidersResponse'`

``` purescript
newListOpenIDConnectProvidersResponse' :: ({ "OpenIDConnectProviderList" :: Maybe (OpenIDConnectProviderListType) } -> { "OpenIDConnectProviderList" :: Maybe (OpenIDConnectProviderListType) }) -> ListOpenIDConnectProvidersResponse
```

Constructs ListOpenIDConnectProvidersResponse's fields from required parameters

#### `ListPoliciesRequest`

``` purescript
newtype ListPoliciesRequest
  = ListPoliciesRequest { "Scope" :: Maybe (PolicyScopeType'), "OnlyAttached" :: Maybe (BooleanType'), "PathPrefix" :: Maybe (PolicyPathType'), "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') }
```

##### Instances
``` purescript
Newtype ListPoliciesRequest _
Generic ListPoliciesRequest _
Show ListPoliciesRequest
Decode ListPoliciesRequest
Encode ListPoliciesRequest
```

#### `newListPoliciesRequest`

``` purescript
newListPoliciesRequest :: ListPoliciesRequest
```

Constructs ListPoliciesRequest from required parameters

#### `newListPoliciesRequest'`

``` purescript
newListPoliciesRequest' :: ({ "Scope" :: Maybe (PolicyScopeType'), "OnlyAttached" :: Maybe (BooleanType'), "PathPrefix" :: Maybe (PolicyPathType'), "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') } -> { "Scope" :: Maybe (PolicyScopeType'), "OnlyAttached" :: Maybe (BooleanType'), "PathPrefix" :: Maybe (PolicyPathType'), "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') }) -> ListPoliciesRequest
```

Constructs ListPoliciesRequest's fields from required parameters

#### `ListPoliciesResponse`

``` purescript
newtype ListPoliciesResponse
  = ListPoliciesResponse { "Policies" :: Maybe (PolicyListType'), "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') }
```

<p>Contains the response to a successful <a>ListPolicies</a> request. </p>

##### Instances
``` purescript
Newtype ListPoliciesResponse _
Generic ListPoliciesResponse _
Show ListPoliciesResponse
Decode ListPoliciesResponse
Encode ListPoliciesResponse
```

#### `newListPoliciesResponse`

``` purescript
newListPoliciesResponse :: ListPoliciesResponse
```

Constructs ListPoliciesResponse from required parameters

#### `newListPoliciesResponse'`

``` purescript
newListPoliciesResponse' :: ({ "Policies" :: Maybe (PolicyListType'), "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') } -> { "Policies" :: Maybe (PolicyListType'), "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') }) -> ListPoliciesResponse
```

Constructs ListPoliciesResponse's fields from required parameters

#### `ListPolicyVersionsRequest`

``` purescript
newtype ListPolicyVersionsRequest
  = ListPolicyVersionsRequest { "PolicyArn" :: ArnType', "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') }
```

##### Instances
``` purescript
Newtype ListPolicyVersionsRequest _
Generic ListPolicyVersionsRequest _
Show ListPolicyVersionsRequest
Decode ListPolicyVersionsRequest
Encode ListPolicyVersionsRequest
```

#### `newListPolicyVersionsRequest`

``` purescript
newListPolicyVersionsRequest :: ArnType' -> ListPolicyVersionsRequest
```

Constructs ListPolicyVersionsRequest from required parameters

#### `newListPolicyVersionsRequest'`

``` purescript
newListPolicyVersionsRequest' :: ArnType' -> ({ "PolicyArn" :: ArnType', "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') } -> { "PolicyArn" :: ArnType', "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') }) -> ListPolicyVersionsRequest
```

Constructs ListPolicyVersionsRequest's fields from required parameters

#### `ListPolicyVersionsResponse`

``` purescript
newtype ListPolicyVersionsResponse
  = ListPolicyVersionsResponse { "Versions" :: Maybe (PolicyDocumentVersionListType'), "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') }
```

<p>Contains the response to a successful <a>ListPolicyVersions</a> request. </p>

##### Instances
``` purescript
Newtype ListPolicyVersionsResponse _
Generic ListPolicyVersionsResponse _
Show ListPolicyVersionsResponse
Decode ListPolicyVersionsResponse
Encode ListPolicyVersionsResponse
```

#### `newListPolicyVersionsResponse`

``` purescript
newListPolicyVersionsResponse :: ListPolicyVersionsResponse
```

Constructs ListPolicyVersionsResponse from required parameters

#### `newListPolicyVersionsResponse'`

``` purescript
newListPolicyVersionsResponse' :: ({ "Versions" :: Maybe (PolicyDocumentVersionListType'), "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') } -> { "Versions" :: Maybe (PolicyDocumentVersionListType'), "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') }) -> ListPolicyVersionsResponse
```

Constructs ListPolicyVersionsResponse's fields from required parameters

#### `ListRolePoliciesRequest`

``` purescript
newtype ListRolePoliciesRequest
  = ListRolePoliciesRequest { "RoleName" :: RoleNameType', "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') }
```

##### Instances
``` purescript
Newtype ListRolePoliciesRequest _
Generic ListRolePoliciesRequest _
Show ListRolePoliciesRequest
Decode ListRolePoliciesRequest
Encode ListRolePoliciesRequest
```

#### `newListRolePoliciesRequest`

``` purescript
newListRolePoliciesRequest :: RoleNameType' -> ListRolePoliciesRequest
```

Constructs ListRolePoliciesRequest from required parameters

#### `newListRolePoliciesRequest'`

``` purescript
newListRolePoliciesRequest' :: RoleNameType' -> ({ "RoleName" :: RoleNameType', "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') } -> { "RoleName" :: RoleNameType', "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') }) -> ListRolePoliciesRequest
```

Constructs ListRolePoliciesRequest's fields from required parameters

#### `ListRolePoliciesResponse`

``` purescript
newtype ListRolePoliciesResponse
  = ListRolePoliciesResponse { "PolicyNames" :: PolicyNameListType', "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') }
```

<p>Contains the response to a successful <a>ListRolePolicies</a> request. </p>

##### Instances
``` purescript
Newtype ListRolePoliciesResponse _
Generic ListRolePoliciesResponse _
Show ListRolePoliciesResponse
Decode ListRolePoliciesResponse
Encode ListRolePoliciesResponse
```

#### `newListRolePoliciesResponse`

``` purescript
newListRolePoliciesResponse :: PolicyNameListType' -> ListRolePoliciesResponse
```

Constructs ListRolePoliciesResponse from required parameters

#### `newListRolePoliciesResponse'`

``` purescript
newListRolePoliciesResponse' :: PolicyNameListType' -> ({ "PolicyNames" :: PolicyNameListType', "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') } -> { "PolicyNames" :: PolicyNameListType', "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') }) -> ListRolePoliciesResponse
```

Constructs ListRolePoliciesResponse's fields from required parameters

#### `ListRolesRequest`

``` purescript
newtype ListRolesRequest
  = ListRolesRequest { "PathPrefix" :: Maybe (PathPrefixType'), "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') }
```

##### Instances
``` purescript
Newtype ListRolesRequest _
Generic ListRolesRequest _
Show ListRolesRequest
Decode ListRolesRequest
Encode ListRolesRequest
```

#### `newListRolesRequest`

``` purescript
newListRolesRequest :: ListRolesRequest
```

Constructs ListRolesRequest from required parameters

#### `newListRolesRequest'`

``` purescript
newListRolesRequest' :: ({ "PathPrefix" :: Maybe (PathPrefixType'), "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') } -> { "PathPrefix" :: Maybe (PathPrefixType'), "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') }) -> ListRolesRequest
```

Constructs ListRolesRequest's fields from required parameters

#### `ListRolesResponse`

``` purescript
newtype ListRolesResponse
  = ListRolesResponse { "Roles" :: RoleListType', "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') }
```

<p>Contains the response to a successful <a>ListRoles</a> request. </p>

##### Instances
``` purescript
Newtype ListRolesResponse _
Generic ListRolesResponse _
Show ListRolesResponse
Decode ListRolesResponse
Encode ListRolesResponse
```

#### `newListRolesResponse`

``` purescript
newListRolesResponse :: RoleListType' -> ListRolesResponse
```

Constructs ListRolesResponse from required parameters

#### `newListRolesResponse'`

``` purescript
newListRolesResponse' :: RoleListType' -> ({ "Roles" :: RoleListType', "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') } -> { "Roles" :: RoleListType', "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') }) -> ListRolesResponse
```

Constructs ListRolesResponse's fields from required parameters

#### `ListSAMLProvidersRequest`

``` purescript
newtype ListSAMLProvidersRequest
  = ListSAMLProvidersRequest NoArguments
```

##### Instances
``` purescript
Newtype ListSAMLProvidersRequest _
Generic ListSAMLProvidersRequest _
Show ListSAMLProvidersRequest
Decode ListSAMLProvidersRequest
Encode ListSAMLProvidersRequest
```

#### `ListSAMLProvidersResponse`

``` purescript
newtype ListSAMLProvidersResponse
  = ListSAMLProvidersResponse { "SAMLProviderList" :: Maybe (SAMLProviderListType) }
```

<p>Contains the response to a successful <a>ListSAMLProviders</a> request. </p>

##### Instances
``` purescript
Newtype ListSAMLProvidersResponse _
Generic ListSAMLProvidersResponse _
Show ListSAMLProvidersResponse
Decode ListSAMLProvidersResponse
Encode ListSAMLProvidersResponse
```

#### `newListSAMLProvidersResponse`

``` purescript
newListSAMLProvidersResponse :: ListSAMLProvidersResponse
```

Constructs ListSAMLProvidersResponse from required parameters

#### `newListSAMLProvidersResponse'`

``` purescript
newListSAMLProvidersResponse' :: ({ "SAMLProviderList" :: Maybe (SAMLProviderListType) } -> { "SAMLProviderList" :: Maybe (SAMLProviderListType) }) -> ListSAMLProvidersResponse
```

Constructs ListSAMLProvidersResponse's fields from required parameters

#### `ListSSHPublicKeysRequest`

``` purescript
newtype ListSSHPublicKeysRequest
  = ListSSHPublicKeysRequest { "UserName" :: Maybe (UserNameType'), "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') }
```

##### Instances
``` purescript
Newtype ListSSHPublicKeysRequest _
Generic ListSSHPublicKeysRequest _
Show ListSSHPublicKeysRequest
Decode ListSSHPublicKeysRequest
Encode ListSSHPublicKeysRequest
```

#### `newListSSHPublicKeysRequest`

``` purescript
newListSSHPublicKeysRequest :: ListSSHPublicKeysRequest
```

Constructs ListSSHPublicKeysRequest from required parameters

#### `newListSSHPublicKeysRequest'`

``` purescript
newListSSHPublicKeysRequest' :: ({ "UserName" :: Maybe (UserNameType'), "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') } -> { "UserName" :: Maybe (UserNameType'), "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') }) -> ListSSHPublicKeysRequest
```

Constructs ListSSHPublicKeysRequest's fields from required parameters

#### `ListSSHPublicKeysResponse`

``` purescript
newtype ListSSHPublicKeysResponse
  = ListSSHPublicKeysResponse { "SSHPublicKeys" :: Maybe (SSHPublicKeyListType), "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') }
```

<p>Contains the response to a successful <a>ListSSHPublicKeys</a> request.</p>

##### Instances
``` purescript
Newtype ListSSHPublicKeysResponse _
Generic ListSSHPublicKeysResponse _
Show ListSSHPublicKeysResponse
Decode ListSSHPublicKeysResponse
Encode ListSSHPublicKeysResponse
```

#### `newListSSHPublicKeysResponse`

``` purescript
newListSSHPublicKeysResponse :: ListSSHPublicKeysResponse
```

Constructs ListSSHPublicKeysResponse from required parameters

#### `newListSSHPublicKeysResponse'`

``` purescript
newListSSHPublicKeysResponse' :: ({ "SSHPublicKeys" :: Maybe (SSHPublicKeyListType), "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') } -> { "SSHPublicKeys" :: Maybe (SSHPublicKeyListType), "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') }) -> ListSSHPublicKeysResponse
```

Constructs ListSSHPublicKeysResponse's fields from required parameters

#### `ListServerCertificatesRequest`

``` purescript
newtype ListServerCertificatesRequest
  = ListServerCertificatesRequest { "PathPrefix" :: Maybe (PathPrefixType'), "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') }
```

##### Instances
``` purescript
Newtype ListServerCertificatesRequest _
Generic ListServerCertificatesRequest _
Show ListServerCertificatesRequest
Decode ListServerCertificatesRequest
Encode ListServerCertificatesRequest
```

#### `newListServerCertificatesRequest`

``` purescript
newListServerCertificatesRequest :: ListServerCertificatesRequest
```

Constructs ListServerCertificatesRequest from required parameters

#### `newListServerCertificatesRequest'`

``` purescript
newListServerCertificatesRequest' :: ({ "PathPrefix" :: Maybe (PathPrefixType'), "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') } -> { "PathPrefix" :: Maybe (PathPrefixType'), "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') }) -> ListServerCertificatesRequest
```

Constructs ListServerCertificatesRequest's fields from required parameters

#### `ListServerCertificatesResponse`

``` purescript
newtype ListServerCertificatesResponse
  = ListServerCertificatesResponse { "ServerCertificateMetadataList" :: ServerCertificateMetadataListType', "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') }
```

<p>Contains the response to a successful <a>ListServerCertificates</a> request. </p>

##### Instances
``` purescript
Newtype ListServerCertificatesResponse _
Generic ListServerCertificatesResponse _
Show ListServerCertificatesResponse
Decode ListServerCertificatesResponse
Encode ListServerCertificatesResponse
```

#### `newListServerCertificatesResponse`

``` purescript
newListServerCertificatesResponse :: ServerCertificateMetadataListType' -> ListServerCertificatesResponse
```

Constructs ListServerCertificatesResponse from required parameters

#### `newListServerCertificatesResponse'`

``` purescript
newListServerCertificatesResponse' :: ServerCertificateMetadataListType' -> ({ "ServerCertificateMetadataList" :: ServerCertificateMetadataListType', "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') } -> { "ServerCertificateMetadataList" :: ServerCertificateMetadataListType', "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') }) -> ListServerCertificatesResponse
```

Constructs ListServerCertificatesResponse's fields from required parameters

#### `ListServiceSpecificCredentialsRequest`

``` purescript
newtype ListServiceSpecificCredentialsRequest
  = ListServiceSpecificCredentialsRequest { "UserName" :: Maybe (UserNameType'), "ServiceName" :: Maybe (ServiceName') }
```

##### Instances
``` purescript
Newtype ListServiceSpecificCredentialsRequest _
Generic ListServiceSpecificCredentialsRequest _
Show ListServiceSpecificCredentialsRequest
Decode ListServiceSpecificCredentialsRequest
Encode ListServiceSpecificCredentialsRequest
```

#### `newListServiceSpecificCredentialsRequest`

``` purescript
newListServiceSpecificCredentialsRequest :: ListServiceSpecificCredentialsRequest
```

Constructs ListServiceSpecificCredentialsRequest from required parameters

#### `newListServiceSpecificCredentialsRequest'`

``` purescript
newListServiceSpecificCredentialsRequest' :: ({ "UserName" :: Maybe (UserNameType'), "ServiceName" :: Maybe (ServiceName') } -> { "UserName" :: Maybe (UserNameType'), "ServiceName" :: Maybe (ServiceName') }) -> ListServiceSpecificCredentialsRequest
```

Constructs ListServiceSpecificCredentialsRequest's fields from required parameters

#### `ListServiceSpecificCredentialsResponse`

``` purescript
newtype ListServiceSpecificCredentialsResponse
  = ListServiceSpecificCredentialsResponse { "ServiceSpecificCredentials" :: Maybe (ServiceSpecificCredentialsListType) }
```

##### Instances
``` purescript
Newtype ListServiceSpecificCredentialsResponse _
Generic ListServiceSpecificCredentialsResponse _
Show ListServiceSpecificCredentialsResponse
Decode ListServiceSpecificCredentialsResponse
Encode ListServiceSpecificCredentialsResponse
```

#### `newListServiceSpecificCredentialsResponse`

``` purescript
newListServiceSpecificCredentialsResponse :: ListServiceSpecificCredentialsResponse
```

Constructs ListServiceSpecificCredentialsResponse from required parameters

#### `newListServiceSpecificCredentialsResponse'`

``` purescript
newListServiceSpecificCredentialsResponse' :: ({ "ServiceSpecificCredentials" :: Maybe (ServiceSpecificCredentialsListType) } -> { "ServiceSpecificCredentials" :: Maybe (ServiceSpecificCredentialsListType) }) -> ListServiceSpecificCredentialsResponse
```

Constructs ListServiceSpecificCredentialsResponse's fields from required parameters

#### `ListSigningCertificatesRequest`

``` purescript
newtype ListSigningCertificatesRequest
  = ListSigningCertificatesRequest { "UserName" :: Maybe (ExistingUserNameType'), "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') }
```

##### Instances
``` purescript
Newtype ListSigningCertificatesRequest _
Generic ListSigningCertificatesRequest _
Show ListSigningCertificatesRequest
Decode ListSigningCertificatesRequest
Encode ListSigningCertificatesRequest
```

#### `newListSigningCertificatesRequest`

``` purescript
newListSigningCertificatesRequest :: ListSigningCertificatesRequest
```

Constructs ListSigningCertificatesRequest from required parameters

#### `newListSigningCertificatesRequest'`

``` purescript
newListSigningCertificatesRequest' :: ({ "UserName" :: Maybe (ExistingUserNameType'), "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') } -> { "UserName" :: Maybe (ExistingUserNameType'), "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') }) -> ListSigningCertificatesRequest
```

Constructs ListSigningCertificatesRequest's fields from required parameters

#### `ListSigningCertificatesResponse`

``` purescript
newtype ListSigningCertificatesResponse
  = ListSigningCertificatesResponse { "Certificates" :: CertificateListType', "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') }
```

<p>Contains the response to a successful <a>ListSigningCertificates</a> request. </p>

##### Instances
``` purescript
Newtype ListSigningCertificatesResponse _
Generic ListSigningCertificatesResponse _
Show ListSigningCertificatesResponse
Decode ListSigningCertificatesResponse
Encode ListSigningCertificatesResponse
```

#### `newListSigningCertificatesResponse`

``` purescript
newListSigningCertificatesResponse :: CertificateListType' -> ListSigningCertificatesResponse
```

Constructs ListSigningCertificatesResponse from required parameters

#### `newListSigningCertificatesResponse'`

``` purescript
newListSigningCertificatesResponse' :: CertificateListType' -> ({ "Certificates" :: CertificateListType', "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') } -> { "Certificates" :: CertificateListType', "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') }) -> ListSigningCertificatesResponse
```

Constructs ListSigningCertificatesResponse's fields from required parameters

#### `ListUserPoliciesRequest`

``` purescript
newtype ListUserPoliciesRequest
  = ListUserPoliciesRequest { "UserName" :: ExistingUserNameType', "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') }
```

##### Instances
``` purescript
Newtype ListUserPoliciesRequest _
Generic ListUserPoliciesRequest _
Show ListUserPoliciesRequest
Decode ListUserPoliciesRequest
Encode ListUserPoliciesRequest
```

#### `newListUserPoliciesRequest`

``` purescript
newListUserPoliciesRequest :: ExistingUserNameType' -> ListUserPoliciesRequest
```

Constructs ListUserPoliciesRequest from required parameters

#### `newListUserPoliciesRequest'`

``` purescript
newListUserPoliciesRequest' :: ExistingUserNameType' -> ({ "UserName" :: ExistingUserNameType', "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') } -> { "UserName" :: ExistingUserNameType', "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') }) -> ListUserPoliciesRequest
```

Constructs ListUserPoliciesRequest's fields from required parameters

#### `ListUserPoliciesResponse`

``` purescript
newtype ListUserPoliciesResponse
  = ListUserPoliciesResponse { "PolicyNames" :: PolicyNameListType', "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') }
```

<p>Contains the response to a successful <a>ListUserPolicies</a> request. </p>

##### Instances
``` purescript
Newtype ListUserPoliciesResponse _
Generic ListUserPoliciesResponse _
Show ListUserPoliciesResponse
Decode ListUserPoliciesResponse
Encode ListUserPoliciesResponse
```

#### `newListUserPoliciesResponse`

``` purescript
newListUserPoliciesResponse :: PolicyNameListType' -> ListUserPoliciesResponse
```

Constructs ListUserPoliciesResponse from required parameters

#### `newListUserPoliciesResponse'`

``` purescript
newListUserPoliciesResponse' :: PolicyNameListType' -> ({ "PolicyNames" :: PolicyNameListType', "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') } -> { "PolicyNames" :: PolicyNameListType', "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') }) -> ListUserPoliciesResponse
```

Constructs ListUserPoliciesResponse's fields from required parameters

#### `ListUsersRequest`

``` purescript
newtype ListUsersRequest
  = ListUsersRequest { "PathPrefix" :: Maybe (PathPrefixType'), "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') }
```

##### Instances
``` purescript
Newtype ListUsersRequest _
Generic ListUsersRequest _
Show ListUsersRequest
Decode ListUsersRequest
Encode ListUsersRequest
```

#### `newListUsersRequest`

``` purescript
newListUsersRequest :: ListUsersRequest
```

Constructs ListUsersRequest from required parameters

#### `newListUsersRequest'`

``` purescript
newListUsersRequest' :: ({ "PathPrefix" :: Maybe (PathPrefixType'), "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') } -> { "PathPrefix" :: Maybe (PathPrefixType'), "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') }) -> ListUsersRequest
```

Constructs ListUsersRequest's fields from required parameters

#### `ListUsersResponse`

``` purescript
newtype ListUsersResponse
  = ListUsersResponse { "Users" :: UserListType', "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') }
```

<p>Contains the response to a successful <a>ListUsers</a> request. </p>

##### Instances
``` purescript
Newtype ListUsersResponse _
Generic ListUsersResponse _
Show ListUsersResponse
Decode ListUsersResponse
Encode ListUsersResponse
```

#### `newListUsersResponse`

``` purescript
newListUsersResponse :: UserListType' -> ListUsersResponse
```

Constructs ListUsersResponse from required parameters

#### `newListUsersResponse'`

``` purescript
newListUsersResponse' :: UserListType' -> ({ "Users" :: UserListType', "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') } -> { "Users" :: UserListType', "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') }) -> ListUsersResponse
```

Constructs ListUsersResponse's fields from required parameters

#### `ListVirtualMFADevicesRequest`

``` purescript
newtype ListVirtualMFADevicesRequest
  = ListVirtualMFADevicesRequest { "AssignmentStatus" :: Maybe (AssignmentStatusType'), "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') }
```

##### Instances
``` purescript
Newtype ListVirtualMFADevicesRequest _
Generic ListVirtualMFADevicesRequest _
Show ListVirtualMFADevicesRequest
Decode ListVirtualMFADevicesRequest
Encode ListVirtualMFADevicesRequest
```

#### `newListVirtualMFADevicesRequest`

``` purescript
newListVirtualMFADevicesRequest :: ListVirtualMFADevicesRequest
```

Constructs ListVirtualMFADevicesRequest from required parameters

#### `newListVirtualMFADevicesRequest'`

``` purescript
newListVirtualMFADevicesRequest' :: ({ "AssignmentStatus" :: Maybe (AssignmentStatusType'), "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') } -> { "AssignmentStatus" :: Maybe (AssignmentStatusType'), "Marker" :: Maybe (MarkerType'), "MaxItems" :: Maybe (MaxItemsType') }) -> ListVirtualMFADevicesRequest
```

Constructs ListVirtualMFADevicesRequest's fields from required parameters

#### `ListVirtualMFADevicesResponse`

``` purescript
newtype ListVirtualMFADevicesResponse
  = ListVirtualMFADevicesResponse { "VirtualMFADevices" :: VirtualMFADeviceListType', "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') }
```

<p>Contains the response to a successful <a>ListVirtualMFADevices</a> request. </p>

##### Instances
``` purescript
Newtype ListVirtualMFADevicesResponse _
Generic ListVirtualMFADevicesResponse _
Show ListVirtualMFADevicesResponse
Decode ListVirtualMFADevicesResponse
Encode ListVirtualMFADevicesResponse
```

#### `newListVirtualMFADevicesResponse`

``` purescript
newListVirtualMFADevicesResponse :: VirtualMFADeviceListType' -> ListVirtualMFADevicesResponse
```

Constructs ListVirtualMFADevicesResponse from required parameters

#### `newListVirtualMFADevicesResponse'`

``` purescript
newListVirtualMFADevicesResponse' :: VirtualMFADeviceListType' -> ({ "VirtualMFADevices" :: VirtualMFADeviceListType', "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') } -> { "VirtualMFADevices" :: VirtualMFADeviceListType', "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') }) -> ListVirtualMFADevicesResponse
```

Constructs ListVirtualMFADevicesResponse's fields from required parameters

#### `LoginProfile`

``` purescript
newtype LoginProfile
  = LoginProfile { "UserName" :: UserNameType', "CreateDate" :: DateType', "PasswordResetRequired" :: Maybe (BooleanType') }
```

<p>Contains the user name and password create date for a user.</p> <p> This data type is used as a response element in the <a>CreateLoginProfile</a> and <a>GetLoginProfile</a> actions. </p>

##### Instances
``` purescript
Newtype LoginProfile _
Generic LoginProfile _
Show LoginProfile
Decode LoginProfile
Encode LoginProfile
```

#### `newLoginProfile`

``` purescript
newLoginProfile :: DateType' -> UserNameType' -> LoginProfile
```

Constructs LoginProfile from required parameters

#### `newLoginProfile'`

``` purescript
newLoginProfile' :: DateType' -> UserNameType' -> ({ "UserName" :: UserNameType', "CreateDate" :: DateType', "PasswordResetRequired" :: Maybe (BooleanType') } -> { "UserName" :: UserNameType', "CreateDate" :: DateType', "PasswordResetRequired" :: Maybe (BooleanType') }) -> LoginProfile
```

Constructs LoginProfile's fields from required parameters

#### `MFADevice`

``` purescript
newtype MFADevice
  = MFADevice { "UserName" :: UserNameType', "SerialNumber" :: SerialNumberType', "EnableDate" :: DateType' }
```

<p>Contains information about an MFA device.</p> <p>This data type is used as a response element in the <a>ListMFADevices</a> action.</p>

##### Instances
``` purescript
Newtype MFADevice _
Generic MFADevice _
Show MFADevice
Decode MFADevice
Encode MFADevice
```

#### `newMFADevice`

``` purescript
newMFADevice :: DateType' -> SerialNumberType' -> UserNameType' -> MFADevice
```

Constructs MFADevice from required parameters

#### `newMFADevice'`

``` purescript
newMFADevice' :: DateType' -> SerialNumberType' -> UserNameType' -> ({ "UserName" :: UserNameType', "SerialNumber" :: SerialNumberType', "EnableDate" :: DateType' } -> { "UserName" :: UserNameType', "SerialNumber" :: SerialNumberType', "EnableDate" :: DateType' }) -> MFADevice
```

Constructs MFADevice's fields from required parameters

#### `MalformedCertificateException`

``` purescript
newtype MalformedCertificateException
  = MalformedCertificateException { message :: Maybe (MalformedCertificateMessage') }
```

<p>The request was rejected because the certificate was malformed or expired. The error message describes the specific error.</p>

##### Instances
``` purescript
Newtype MalformedCertificateException _
Generic MalformedCertificateException _
Show MalformedCertificateException
Decode MalformedCertificateException
Encode MalformedCertificateException
```

#### `newMalformedCertificateException`

``` purescript
newMalformedCertificateException :: MalformedCertificateException
```

Constructs MalformedCertificateException from required parameters

#### `newMalformedCertificateException'`

``` purescript
newMalformedCertificateException' :: ({ message :: Maybe (MalformedCertificateMessage') } -> { message :: Maybe (MalformedCertificateMessage') }) -> MalformedCertificateException
```

Constructs MalformedCertificateException's fields from required parameters

#### `MalformedPolicyDocumentException`

``` purescript
newtype MalformedPolicyDocumentException
  = MalformedPolicyDocumentException { message :: Maybe (MalformedPolicyDocumentMessage') }
```

<p>The request was rejected because the policy document was malformed. The error message describes the specific error.</p>

##### Instances
``` purescript
Newtype MalformedPolicyDocumentException _
Generic MalformedPolicyDocumentException _
Show MalformedPolicyDocumentException
Decode MalformedPolicyDocumentException
Encode MalformedPolicyDocumentException
```

#### `newMalformedPolicyDocumentException`

``` purescript
newMalformedPolicyDocumentException :: MalformedPolicyDocumentException
```

Constructs MalformedPolicyDocumentException from required parameters

#### `newMalformedPolicyDocumentException'`

``` purescript
newMalformedPolicyDocumentException' :: ({ message :: Maybe (MalformedPolicyDocumentMessage') } -> { message :: Maybe (MalformedPolicyDocumentMessage') }) -> MalformedPolicyDocumentException
```

Constructs MalformedPolicyDocumentException's fields from required parameters

#### `ManagedPolicyDetail`

``` purescript
newtype ManagedPolicyDetail
  = ManagedPolicyDetail { "PolicyName" :: Maybe (PolicyNameType'), "PolicyId" :: Maybe (IdType'), "Arn" :: Maybe (ArnType'), "Path" :: Maybe (PolicyPathType'), "DefaultVersionId" :: Maybe (PolicyVersionIdType'), "AttachmentCount" :: Maybe (AttachmentCountType'), "IsAttachable" :: Maybe (BooleanType'), "Description" :: Maybe (PolicyDescriptionType'), "CreateDate" :: Maybe (DateType'), "UpdateDate" :: Maybe (DateType'), "PolicyVersionList" :: Maybe (PolicyDocumentVersionListType') }
```

<p>Contains information about a managed policy, including the policy's ARN, versions, and the number of principal entities (users, groups, and roles) that the policy is attached to.</p> <p>This data type is used as a response element in the <a>GetAccountAuthorizationDetails</a> action.</p> <p>For more information about managed policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>Using IAM</i> guide. </p>

##### Instances
``` purescript
Newtype ManagedPolicyDetail _
Generic ManagedPolicyDetail _
Show ManagedPolicyDetail
Decode ManagedPolicyDetail
Encode ManagedPolicyDetail
```

#### `newManagedPolicyDetail`

``` purescript
newManagedPolicyDetail :: ManagedPolicyDetail
```

Constructs ManagedPolicyDetail from required parameters

#### `newManagedPolicyDetail'`

``` purescript
newManagedPolicyDetail' :: ({ "PolicyName" :: Maybe (PolicyNameType'), "PolicyId" :: Maybe (IdType'), "Arn" :: Maybe (ArnType'), "Path" :: Maybe (PolicyPathType'), "DefaultVersionId" :: Maybe (PolicyVersionIdType'), "AttachmentCount" :: Maybe (AttachmentCountType'), "IsAttachable" :: Maybe (BooleanType'), "Description" :: Maybe (PolicyDescriptionType'), "CreateDate" :: Maybe (DateType'), "UpdateDate" :: Maybe (DateType'), "PolicyVersionList" :: Maybe (PolicyDocumentVersionListType') } -> { "PolicyName" :: Maybe (PolicyNameType'), "PolicyId" :: Maybe (IdType'), "Arn" :: Maybe (ArnType'), "Path" :: Maybe (PolicyPathType'), "DefaultVersionId" :: Maybe (PolicyVersionIdType'), "AttachmentCount" :: Maybe (AttachmentCountType'), "IsAttachable" :: Maybe (BooleanType'), "Description" :: Maybe (PolicyDescriptionType'), "CreateDate" :: Maybe (DateType'), "UpdateDate" :: Maybe (DateType'), "PolicyVersionList" :: Maybe (PolicyDocumentVersionListType') }) -> ManagedPolicyDetail
```

Constructs ManagedPolicyDetail's fields from required parameters

#### `ManagedPolicyDetailListType`

``` purescript
newtype ManagedPolicyDetailListType
  = ManagedPolicyDetailListType (Array ManagedPolicyDetail)
```

##### Instances
``` purescript
Newtype ManagedPolicyDetailListType _
Generic ManagedPolicyDetailListType _
Show ManagedPolicyDetailListType
Decode ManagedPolicyDetailListType
Encode ManagedPolicyDetailListType
```

#### `NoSuchEntityException`

``` purescript
newtype NoSuchEntityException
  = NoSuchEntityException { message :: Maybe (NoSuchEntityMessage') }
```

<p>The request was rejected because it referenced an entity that does not exist. The error message describes the entity.</p>

##### Instances
``` purescript
Newtype NoSuchEntityException _
Generic NoSuchEntityException _
Show NoSuchEntityException
Decode NoSuchEntityException
Encode NoSuchEntityException
```

#### `newNoSuchEntityException`

``` purescript
newNoSuchEntityException :: NoSuchEntityException
```

Constructs NoSuchEntityException from required parameters

#### `newNoSuchEntityException'`

``` purescript
newNoSuchEntityException' :: ({ message :: Maybe (NoSuchEntityMessage') } -> { message :: Maybe (NoSuchEntityMessage') }) -> NoSuchEntityException
```

Constructs NoSuchEntityException's fields from required parameters

#### `OpenIDConnectProviderListEntry`

``` purescript
newtype OpenIDConnectProviderListEntry
  = OpenIDConnectProviderListEntry { "Arn" :: Maybe (ArnType') }
```

<p>Contains the Amazon Resource Name (ARN) for an IAM OpenID Connect provider.</p>

##### Instances
``` purescript
Newtype OpenIDConnectProviderListEntry _
Generic OpenIDConnectProviderListEntry _
Show OpenIDConnectProviderListEntry
Decode OpenIDConnectProviderListEntry
Encode OpenIDConnectProviderListEntry
```

#### `newOpenIDConnectProviderListEntry`

``` purescript
newOpenIDConnectProviderListEntry :: OpenIDConnectProviderListEntry
```

Constructs OpenIDConnectProviderListEntry from required parameters

#### `newOpenIDConnectProviderListEntry'`

``` purescript
newOpenIDConnectProviderListEntry' :: ({ "Arn" :: Maybe (ArnType') } -> { "Arn" :: Maybe (ArnType') }) -> OpenIDConnectProviderListEntry
```

Constructs OpenIDConnectProviderListEntry's fields from required parameters

#### `OpenIDConnectProviderListType`

``` purescript
newtype OpenIDConnectProviderListType
  = OpenIDConnectProviderListType (Array OpenIDConnectProviderListEntry)
```

<p>Contains a list of IAM OpenID Connect providers.</p>

##### Instances
``` purescript
Newtype OpenIDConnectProviderListType _
Generic OpenIDConnectProviderListType _
Show OpenIDConnectProviderListType
Decode OpenIDConnectProviderListType
Encode OpenIDConnectProviderListType
```

#### `OpenIDConnectProviderUrlType`

``` purescript
newtype OpenIDConnectProviderUrlType
  = OpenIDConnectProviderUrlType String
```

<p>Contains a URL that specifies the endpoint for an OpenID Connect provider.</p>

##### Instances
``` purescript
Newtype OpenIDConnectProviderUrlType _
Generic OpenIDConnectProviderUrlType _
Show OpenIDConnectProviderUrlType
Decode OpenIDConnectProviderUrlType
Encode OpenIDConnectProviderUrlType
```

#### `OrganizationsDecisionDetail`

``` purescript
newtype OrganizationsDecisionDetail
  = OrganizationsDecisionDetail { "AllowedByOrganizations" :: Maybe (BooleanType') }
```

<p>Contains information about AWS Organizations's affect on a policy simulation.</p>

##### Instances
``` purescript
Newtype OrganizationsDecisionDetail _
Generic OrganizationsDecisionDetail _
Show OrganizationsDecisionDetail
Decode OrganizationsDecisionDetail
Encode OrganizationsDecisionDetail
```

#### `newOrganizationsDecisionDetail`

``` purescript
newOrganizationsDecisionDetail :: OrganizationsDecisionDetail
```

Constructs OrganizationsDecisionDetail from required parameters

#### `newOrganizationsDecisionDetail'`

``` purescript
newOrganizationsDecisionDetail' :: ({ "AllowedByOrganizations" :: Maybe (BooleanType') } -> { "AllowedByOrganizations" :: Maybe (BooleanType') }) -> OrganizationsDecisionDetail
```

Constructs OrganizationsDecisionDetail's fields from required parameters

#### `PasswordPolicy`

``` purescript
newtype PasswordPolicy
  = PasswordPolicy { "MinimumPasswordLength" :: Maybe (MinimumPasswordLengthType'), "RequireSymbols" :: Maybe (BooleanType'), "RequireNumbers" :: Maybe (BooleanType'), "RequireUppercaseCharacters" :: Maybe (BooleanType'), "RequireLowercaseCharacters" :: Maybe (BooleanType'), "AllowUsersToChangePassword" :: Maybe (BooleanType'), "ExpirePasswords" :: Maybe (BooleanType'), "MaxPasswordAge" :: Maybe (MaxPasswordAgeType'), "PasswordReusePrevention" :: Maybe (PasswordReusePreventionType'), "HardExpiry" :: Maybe (BooleanObjectType') }
```

<p>Contains information about the account password policy.</p> <p> This data type is used as a response element in the <a>GetAccountPasswordPolicy</a> action. </p>

##### Instances
``` purescript
Newtype PasswordPolicy _
Generic PasswordPolicy _
Show PasswordPolicy
Decode PasswordPolicy
Encode PasswordPolicy
```

#### `newPasswordPolicy`

``` purescript
newPasswordPolicy :: PasswordPolicy
```

Constructs PasswordPolicy from required parameters

#### `newPasswordPolicy'`

``` purescript
newPasswordPolicy' :: ({ "MinimumPasswordLength" :: Maybe (MinimumPasswordLengthType'), "RequireSymbols" :: Maybe (BooleanType'), "RequireNumbers" :: Maybe (BooleanType'), "RequireUppercaseCharacters" :: Maybe (BooleanType'), "RequireLowercaseCharacters" :: Maybe (BooleanType'), "AllowUsersToChangePassword" :: Maybe (BooleanType'), "ExpirePasswords" :: Maybe (BooleanType'), "MaxPasswordAge" :: Maybe (MaxPasswordAgeType'), "PasswordReusePrevention" :: Maybe (PasswordReusePreventionType'), "HardExpiry" :: Maybe (BooleanObjectType') } -> { "MinimumPasswordLength" :: Maybe (MinimumPasswordLengthType'), "RequireSymbols" :: Maybe (BooleanType'), "RequireNumbers" :: Maybe (BooleanType'), "RequireUppercaseCharacters" :: Maybe (BooleanType'), "RequireLowercaseCharacters" :: Maybe (BooleanType'), "AllowUsersToChangePassword" :: Maybe (BooleanType'), "ExpirePasswords" :: Maybe (BooleanType'), "MaxPasswordAge" :: Maybe (MaxPasswordAgeType'), "PasswordReusePrevention" :: Maybe (PasswordReusePreventionType'), "HardExpiry" :: Maybe (BooleanObjectType') }) -> PasswordPolicy
```

Constructs PasswordPolicy's fields from required parameters

#### `PasswordPolicyViolationException`

``` purescript
newtype PasswordPolicyViolationException
  = PasswordPolicyViolationException { message :: Maybe (PasswordPolicyViolationMessage') }
```

<p>The request was rejected because the provided password did not meet the requirements imposed by the account password policy.</p>

##### Instances
``` purescript
Newtype PasswordPolicyViolationException _
Generic PasswordPolicyViolationException _
Show PasswordPolicyViolationException
Decode PasswordPolicyViolationException
Encode PasswordPolicyViolationException
```

#### `newPasswordPolicyViolationException`

``` purescript
newPasswordPolicyViolationException :: PasswordPolicyViolationException
```

Constructs PasswordPolicyViolationException from required parameters

#### `newPasswordPolicyViolationException'`

``` purescript
newPasswordPolicyViolationException' :: ({ message :: Maybe (PasswordPolicyViolationMessage') } -> { message :: Maybe (PasswordPolicyViolationMessage') }) -> PasswordPolicyViolationException
```

Constructs PasswordPolicyViolationException's fields from required parameters

#### `Policy`

``` purescript
newtype Policy
  = Policy { "PolicyName" :: Maybe (PolicyNameType'), "PolicyId" :: Maybe (IdType'), "Arn" :: Maybe (ArnType'), "Path" :: Maybe (PolicyPathType'), "DefaultVersionId" :: Maybe (PolicyVersionIdType'), "AttachmentCount" :: Maybe (AttachmentCountType'), "IsAttachable" :: Maybe (BooleanType'), "Description" :: Maybe (PolicyDescriptionType'), "CreateDate" :: Maybe (DateType'), "UpdateDate" :: Maybe (DateType') }
```

<p>Contains information about a managed policy.</p> <p>This data type is used as a response element in the <a>CreatePolicy</a>, <a>GetPolicy</a>, and <a>ListPolicies</a> actions. </p> <p>For more information about managed policies, refer to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>Using IAM</i> guide. </p>

##### Instances
``` purescript
Newtype Policy _
Generic Policy _
Show Policy
Decode Policy
Encode Policy
```

#### `newPolicy`

``` purescript
newPolicy :: Policy
```

Constructs Policy from required parameters

#### `newPolicy'`

``` purescript
newPolicy' :: ({ "PolicyName" :: Maybe (PolicyNameType'), "PolicyId" :: Maybe (IdType'), "Arn" :: Maybe (ArnType'), "Path" :: Maybe (PolicyPathType'), "DefaultVersionId" :: Maybe (PolicyVersionIdType'), "AttachmentCount" :: Maybe (AttachmentCountType'), "IsAttachable" :: Maybe (BooleanType'), "Description" :: Maybe (PolicyDescriptionType'), "CreateDate" :: Maybe (DateType'), "UpdateDate" :: Maybe (DateType') } -> { "PolicyName" :: Maybe (PolicyNameType'), "PolicyId" :: Maybe (IdType'), "Arn" :: Maybe (ArnType'), "Path" :: Maybe (PolicyPathType'), "DefaultVersionId" :: Maybe (PolicyVersionIdType'), "AttachmentCount" :: Maybe (AttachmentCountType'), "IsAttachable" :: Maybe (BooleanType'), "Description" :: Maybe (PolicyDescriptionType'), "CreateDate" :: Maybe (DateType'), "UpdateDate" :: Maybe (DateType') }) -> Policy
```

Constructs Policy's fields from required parameters

#### `PolicyDetail`

``` purescript
newtype PolicyDetail
  = PolicyDetail { "PolicyName" :: Maybe (PolicyNameType'), "PolicyDocument" :: Maybe (PolicyDocumentType') }
```

<p>Contains information about an IAM policy, including the policy document.</p> <p>This data type is used as a response element in the <a>GetAccountAuthorizationDetails</a> action.</p>

##### Instances
``` purescript
Newtype PolicyDetail _
Generic PolicyDetail _
Show PolicyDetail
Decode PolicyDetail
Encode PolicyDetail
```

#### `newPolicyDetail`

``` purescript
newPolicyDetail :: PolicyDetail
```

Constructs PolicyDetail from required parameters

#### `newPolicyDetail'`

``` purescript
newPolicyDetail' :: ({ "PolicyName" :: Maybe (PolicyNameType'), "PolicyDocument" :: Maybe (PolicyDocumentType') } -> { "PolicyName" :: Maybe (PolicyNameType'), "PolicyDocument" :: Maybe (PolicyDocumentType') }) -> PolicyDetail
```

Constructs PolicyDetail's fields from required parameters

#### `PolicyEvaluationDecisionType`

``` purescript
newtype PolicyEvaluationDecisionType
  = PolicyEvaluationDecisionType String
```

##### Instances
``` purescript
Newtype PolicyEvaluationDecisionType _
Generic PolicyEvaluationDecisionType _
Show PolicyEvaluationDecisionType
Decode PolicyEvaluationDecisionType
Encode PolicyEvaluationDecisionType
```

#### `PolicyEvaluationException`

``` purescript
newtype PolicyEvaluationException
  = PolicyEvaluationException { message :: Maybe (PolicyEvaluationErrorMessage') }
```

<p>The request failed because a provided policy could not be successfully evaluated. An additional detailed message indicates the source of the failure.</p>

##### Instances
``` purescript
Newtype PolicyEvaluationException _
Generic PolicyEvaluationException _
Show PolicyEvaluationException
Decode PolicyEvaluationException
Encode PolicyEvaluationException
```

#### `newPolicyEvaluationException`

``` purescript
newPolicyEvaluationException :: PolicyEvaluationException
```

Constructs PolicyEvaluationException from required parameters

#### `newPolicyEvaluationException'`

``` purescript
newPolicyEvaluationException' :: ({ message :: Maybe (PolicyEvaluationErrorMessage') } -> { message :: Maybe (PolicyEvaluationErrorMessage') }) -> PolicyEvaluationException
```

Constructs PolicyEvaluationException's fields from required parameters

#### `PolicyGroup`

``` purescript
newtype PolicyGroup
  = PolicyGroup { "GroupName" :: Maybe (GroupNameType'), "GroupId" :: Maybe (IdType') }
```

<p>Contains information about a group that a managed policy is attached to.</p> <p>This data type is used as a response element in the <a>ListEntitiesForPolicy</a> action. </p> <p>For more information about managed policies, refer to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>Using IAM</i> guide. </p>

##### Instances
``` purescript
Newtype PolicyGroup _
Generic PolicyGroup _
Show PolicyGroup
Decode PolicyGroup
Encode PolicyGroup
```

#### `newPolicyGroup`

``` purescript
newPolicyGroup :: PolicyGroup
```

Constructs PolicyGroup from required parameters

#### `newPolicyGroup'`

``` purescript
newPolicyGroup' :: ({ "GroupName" :: Maybe (GroupNameType'), "GroupId" :: Maybe (IdType') } -> { "GroupName" :: Maybe (GroupNameType'), "GroupId" :: Maybe (IdType') }) -> PolicyGroup
```

Constructs PolicyGroup's fields from required parameters

#### `PolicyGroupListType`

``` purescript
newtype PolicyGroupListType
  = PolicyGroupListType (Array PolicyGroup)
```

##### Instances
``` purescript
Newtype PolicyGroupListType _
Generic PolicyGroupListType _
Show PolicyGroupListType
Decode PolicyGroupListType
Encode PolicyGroupListType
```

#### `PolicyIdentifierType`

``` purescript
newtype PolicyIdentifierType
  = PolicyIdentifierType String
```

##### Instances
``` purescript
Newtype PolicyIdentifierType _
Generic PolicyIdentifierType _
Show PolicyIdentifierType
Decode PolicyIdentifierType
Encode PolicyIdentifierType
```

#### `PolicyNotAttachableException`

``` purescript
newtype PolicyNotAttachableException
  = PolicyNotAttachableException { message :: Maybe (PolicyNotAttachableMessage') }
```

<p>The request failed because AWS service role policies can only be attached to the service-linked role for that service.</p>

##### Instances
``` purescript
Newtype PolicyNotAttachableException _
Generic PolicyNotAttachableException _
Show PolicyNotAttachableException
Decode PolicyNotAttachableException
Encode PolicyNotAttachableException
```

#### `newPolicyNotAttachableException`

``` purescript
newPolicyNotAttachableException :: PolicyNotAttachableException
```

Constructs PolicyNotAttachableException from required parameters

#### `newPolicyNotAttachableException'`

``` purescript
newPolicyNotAttachableException' :: ({ message :: Maybe (PolicyNotAttachableMessage') } -> { message :: Maybe (PolicyNotAttachableMessage') }) -> PolicyNotAttachableException
```

Constructs PolicyNotAttachableException's fields from required parameters

#### `PolicyRole`

``` purescript
newtype PolicyRole
  = PolicyRole { "RoleName" :: Maybe (RoleNameType'), "RoleId" :: Maybe (IdType') }
```

<p>Contains information about a role that a managed policy is attached to.</p> <p>This data type is used as a response element in the <a>ListEntitiesForPolicy</a> action. </p> <p>For more information about managed policies, refer to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>Using IAM</i> guide. </p>

##### Instances
``` purescript
Newtype PolicyRole _
Generic PolicyRole _
Show PolicyRole
Decode PolicyRole
Encode PolicyRole
```

#### `newPolicyRole`

``` purescript
newPolicyRole :: PolicyRole
```

Constructs PolicyRole from required parameters

#### `newPolicyRole'`

``` purescript
newPolicyRole' :: ({ "RoleName" :: Maybe (RoleNameType'), "RoleId" :: Maybe (IdType') } -> { "RoleName" :: Maybe (RoleNameType'), "RoleId" :: Maybe (IdType') }) -> PolicyRole
```

Constructs PolicyRole's fields from required parameters

#### `PolicyRoleListType`

``` purescript
newtype PolicyRoleListType
  = PolicyRoleListType (Array PolicyRole)
```

##### Instances
``` purescript
Newtype PolicyRoleListType _
Generic PolicyRoleListType _
Show PolicyRoleListType
Decode PolicyRoleListType
Encode PolicyRoleListType
```

#### `PolicySourceType`

``` purescript
newtype PolicySourceType
  = PolicySourceType String
```

##### Instances
``` purescript
Newtype PolicySourceType _
Generic PolicySourceType _
Show PolicySourceType
Decode PolicySourceType
Encode PolicySourceType
```

#### `PolicyUser`

``` purescript
newtype PolicyUser
  = PolicyUser { "UserName" :: Maybe (UserNameType'), "UserId" :: Maybe (IdType') }
```

<p>Contains information about a user that a managed policy is attached to.</p> <p>This data type is used as a response element in the <a>ListEntitiesForPolicy</a> action. </p> <p>For more information about managed policies, refer to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>Using IAM</i> guide. </p>

##### Instances
``` purescript
Newtype PolicyUser _
Generic PolicyUser _
Show PolicyUser
Decode PolicyUser
Encode PolicyUser
```

#### `newPolicyUser`

``` purescript
newPolicyUser :: PolicyUser
```

Constructs PolicyUser from required parameters

#### `newPolicyUser'`

``` purescript
newPolicyUser' :: ({ "UserName" :: Maybe (UserNameType'), "UserId" :: Maybe (IdType') } -> { "UserName" :: Maybe (UserNameType'), "UserId" :: Maybe (IdType') }) -> PolicyUser
```

Constructs PolicyUser's fields from required parameters

#### `PolicyUserListType`

``` purescript
newtype PolicyUserListType
  = PolicyUserListType (Array PolicyUser)
```

##### Instances
``` purescript
Newtype PolicyUserListType _
Generic PolicyUserListType _
Show PolicyUserListType
Decode PolicyUserListType
Encode PolicyUserListType
```

#### `PolicyVersion`

``` purescript
newtype PolicyVersion
  = PolicyVersion { "Document" :: Maybe (PolicyDocumentType'), "VersionId" :: Maybe (PolicyVersionIdType'), "IsDefaultVersion" :: Maybe (BooleanType'), "CreateDate" :: Maybe (DateType') }
```

<p>Contains information about a version of a managed policy.</p> <p>This data type is used as a response element in the <a>CreatePolicyVersion</a>, <a>GetPolicyVersion</a>, <a>ListPolicyVersions</a>, and <a>GetAccountAuthorizationDetails</a> actions. </p> <p>For more information about managed policies, refer to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>Using IAM</i> guide. </p>

##### Instances
``` purescript
Newtype PolicyVersion _
Generic PolicyVersion _
Show PolicyVersion
Decode PolicyVersion
Encode PolicyVersion
```

#### `newPolicyVersion`

``` purescript
newPolicyVersion :: PolicyVersion
```

Constructs PolicyVersion from required parameters

#### `newPolicyVersion'`

``` purescript
newPolicyVersion' :: ({ "Document" :: Maybe (PolicyDocumentType'), "VersionId" :: Maybe (PolicyVersionIdType'), "IsDefaultVersion" :: Maybe (BooleanType'), "CreateDate" :: Maybe (DateType') } -> { "Document" :: Maybe (PolicyDocumentType'), "VersionId" :: Maybe (PolicyVersionIdType'), "IsDefaultVersion" :: Maybe (BooleanType'), "CreateDate" :: Maybe (DateType') }) -> PolicyVersion
```

Constructs PolicyVersion's fields from required parameters

#### `Position`

``` purescript
newtype Position
  = Position { "Line" :: Maybe (LineNumber), "Column" :: Maybe (ColumnNumber) }
```

<p>Contains the row and column of a location of a <code>Statement</code> element in a policy document.</p> <p>This data type is used as a member of the <code> <a>Statement</a> </code> type.</p>

##### Instances
``` purescript
Newtype Position _
Generic Position _
Show Position
Decode Position
Encode Position
```

#### `newPosition`

``` purescript
newPosition :: Position
```

Constructs Position from required parameters

#### `newPosition'`

``` purescript
newPosition' :: ({ "Line" :: Maybe (LineNumber), "Column" :: Maybe (ColumnNumber) } -> { "Line" :: Maybe (LineNumber), "Column" :: Maybe (ColumnNumber) }) -> Position
```

Constructs Position's fields from required parameters

#### `PutGroupPolicyRequest`

``` purescript
newtype PutGroupPolicyRequest
  = PutGroupPolicyRequest { "GroupName" :: GroupNameType', "PolicyName" :: PolicyNameType', "PolicyDocument" :: PolicyDocumentType' }
```

##### Instances
``` purescript
Newtype PutGroupPolicyRequest _
Generic PutGroupPolicyRequest _
Show PutGroupPolicyRequest
Decode PutGroupPolicyRequest
Encode PutGroupPolicyRequest
```

#### `newPutGroupPolicyRequest`

``` purescript
newPutGroupPolicyRequest :: GroupNameType' -> PolicyDocumentType' -> PolicyNameType' -> PutGroupPolicyRequest
```

Constructs PutGroupPolicyRequest from required parameters

#### `newPutGroupPolicyRequest'`

``` purescript
newPutGroupPolicyRequest' :: GroupNameType' -> PolicyDocumentType' -> PolicyNameType' -> ({ "GroupName" :: GroupNameType', "PolicyName" :: PolicyNameType', "PolicyDocument" :: PolicyDocumentType' } -> { "GroupName" :: GroupNameType', "PolicyName" :: PolicyNameType', "PolicyDocument" :: PolicyDocumentType' }) -> PutGroupPolicyRequest
```

Constructs PutGroupPolicyRequest's fields from required parameters

#### `PutRolePolicyRequest`

``` purescript
newtype PutRolePolicyRequest
  = PutRolePolicyRequest { "RoleName" :: RoleNameType', "PolicyName" :: PolicyNameType', "PolicyDocument" :: PolicyDocumentType' }
```

##### Instances
``` purescript
Newtype PutRolePolicyRequest _
Generic PutRolePolicyRequest _
Show PutRolePolicyRequest
Decode PutRolePolicyRequest
Encode PutRolePolicyRequest
```

#### `newPutRolePolicyRequest`

``` purescript
newPutRolePolicyRequest :: PolicyDocumentType' -> PolicyNameType' -> RoleNameType' -> PutRolePolicyRequest
```

Constructs PutRolePolicyRequest from required parameters

#### `newPutRolePolicyRequest'`

``` purescript
newPutRolePolicyRequest' :: PolicyDocumentType' -> PolicyNameType' -> RoleNameType' -> ({ "RoleName" :: RoleNameType', "PolicyName" :: PolicyNameType', "PolicyDocument" :: PolicyDocumentType' } -> { "RoleName" :: RoleNameType', "PolicyName" :: PolicyNameType', "PolicyDocument" :: PolicyDocumentType' }) -> PutRolePolicyRequest
```

Constructs PutRolePolicyRequest's fields from required parameters

#### `PutUserPolicyRequest`

``` purescript
newtype PutUserPolicyRequest
  = PutUserPolicyRequest { "UserName" :: ExistingUserNameType', "PolicyName" :: PolicyNameType', "PolicyDocument" :: PolicyDocumentType' }
```

##### Instances
``` purescript
Newtype PutUserPolicyRequest _
Generic PutUserPolicyRequest _
Show PutUserPolicyRequest
Decode PutUserPolicyRequest
Encode PutUserPolicyRequest
```

#### `newPutUserPolicyRequest`

``` purescript
newPutUserPolicyRequest :: PolicyDocumentType' -> PolicyNameType' -> ExistingUserNameType' -> PutUserPolicyRequest
```

Constructs PutUserPolicyRequest from required parameters

#### `newPutUserPolicyRequest'`

``` purescript
newPutUserPolicyRequest' :: PolicyDocumentType' -> PolicyNameType' -> ExistingUserNameType' -> ({ "UserName" :: ExistingUserNameType', "PolicyName" :: PolicyNameType', "PolicyDocument" :: PolicyDocumentType' } -> { "UserName" :: ExistingUserNameType', "PolicyName" :: PolicyNameType', "PolicyDocument" :: PolicyDocumentType' }) -> PutUserPolicyRequest
```

Constructs PutUserPolicyRequest's fields from required parameters

#### `ReasonType`

``` purescript
newtype ReasonType
  = ReasonType String
```

##### Instances
``` purescript
Newtype ReasonType _
Generic ReasonType _
Show ReasonType
Decode ReasonType
Encode ReasonType
```

#### `RegionNameType`

``` purescript
newtype RegionNameType
  = RegionNameType String
```

##### Instances
``` purescript
Newtype RegionNameType _
Generic RegionNameType _
Show RegionNameType
Decode RegionNameType
Encode RegionNameType
```

#### `RemoveClientIDFromOpenIDConnectProviderRequest`

``` purescript
newtype RemoveClientIDFromOpenIDConnectProviderRequest
  = RemoveClientIDFromOpenIDConnectProviderRequest { "OpenIDConnectProviderArn" :: ArnType', "ClientID" :: ClientIDType' }
```

##### Instances
``` purescript
Newtype RemoveClientIDFromOpenIDConnectProviderRequest _
Generic RemoveClientIDFromOpenIDConnectProviderRequest _
Show RemoveClientIDFromOpenIDConnectProviderRequest
Decode RemoveClientIDFromOpenIDConnectProviderRequest
Encode RemoveClientIDFromOpenIDConnectProviderRequest
```

#### `newRemoveClientIDFromOpenIDConnectProviderRequest`

``` purescript
newRemoveClientIDFromOpenIDConnectProviderRequest :: ClientIDType' -> ArnType' -> RemoveClientIDFromOpenIDConnectProviderRequest
```

Constructs RemoveClientIDFromOpenIDConnectProviderRequest from required parameters

#### `newRemoveClientIDFromOpenIDConnectProviderRequest'`

``` purescript
newRemoveClientIDFromOpenIDConnectProviderRequest' :: ClientIDType' -> ArnType' -> ({ "OpenIDConnectProviderArn" :: ArnType', "ClientID" :: ClientIDType' } -> { "OpenIDConnectProviderArn" :: ArnType', "ClientID" :: ClientIDType' }) -> RemoveClientIDFromOpenIDConnectProviderRequest
```

Constructs RemoveClientIDFromOpenIDConnectProviderRequest's fields from required parameters

#### `RemoveRoleFromInstanceProfileRequest`

``` purescript
newtype RemoveRoleFromInstanceProfileRequest
  = RemoveRoleFromInstanceProfileRequest { "InstanceProfileName" :: InstanceProfileNameType', "RoleName" :: RoleNameType' }
```

##### Instances
``` purescript
Newtype RemoveRoleFromInstanceProfileRequest _
Generic RemoveRoleFromInstanceProfileRequest _
Show RemoveRoleFromInstanceProfileRequest
Decode RemoveRoleFromInstanceProfileRequest
Encode RemoveRoleFromInstanceProfileRequest
```

#### `newRemoveRoleFromInstanceProfileRequest`

``` purescript
newRemoveRoleFromInstanceProfileRequest :: InstanceProfileNameType' -> RoleNameType' -> RemoveRoleFromInstanceProfileRequest
```

Constructs RemoveRoleFromInstanceProfileRequest from required parameters

#### `newRemoveRoleFromInstanceProfileRequest'`

``` purescript
newRemoveRoleFromInstanceProfileRequest' :: InstanceProfileNameType' -> RoleNameType' -> ({ "InstanceProfileName" :: InstanceProfileNameType', "RoleName" :: RoleNameType' } -> { "InstanceProfileName" :: InstanceProfileNameType', "RoleName" :: RoleNameType' }) -> RemoveRoleFromInstanceProfileRequest
```

Constructs RemoveRoleFromInstanceProfileRequest's fields from required parameters

#### `RemoveUserFromGroupRequest`

``` purescript
newtype RemoveUserFromGroupRequest
  = RemoveUserFromGroupRequest { "GroupName" :: GroupNameType', "UserName" :: ExistingUserNameType' }
```

##### Instances
``` purescript
Newtype RemoveUserFromGroupRequest _
Generic RemoveUserFromGroupRequest _
Show RemoveUserFromGroupRequest
Decode RemoveUserFromGroupRequest
Encode RemoveUserFromGroupRequest
```

#### `newRemoveUserFromGroupRequest`

``` purescript
newRemoveUserFromGroupRequest :: GroupNameType' -> ExistingUserNameType' -> RemoveUserFromGroupRequest
```

Constructs RemoveUserFromGroupRequest from required parameters

#### `newRemoveUserFromGroupRequest'`

``` purescript
newRemoveUserFromGroupRequest' :: GroupNameType' -> ExistingUserNameType' -> ({ "GroupName" :: GroupNameType', "UserName" :: ExistingUserNameType' } -> { "GroupName" :: GroupNameType', "UserName" :: ExistingUserNameType' }) -> RemoveUserFromGroupRequest
```

Constructs RemoveUserFromGroupRequest's fields from required parameters

#### `ReportContentType`

``` purescript
newtype ReportContentType
  = ReportContentType String
```

##### Instances
``` purescript
Newtype ReportContentType _
Generic ReportContentType _
Show ReportContentType
Decode ReportContentType
Encode ReportContentType
```

#### `ReportFormatType`

``` purescript
newtype ReportFormatType
  = ReportFormatType String
```

##### Instances
``` purescript
Newtype ReportFormatType _
Generic ReportFormatType _
Show ReportFormatType
Decode ReportFormatType
Encode ReportFormatType
```

#### `ReportStateDescriptionType`

``` purescript
newtype ReportStateDescriptionType
  = ReportStateDescriptionType String
```

##### Instances
``` purescript
Newtype ReportStateDescriptionType _
Generic ReportStateDescriptionType _
Show ReportStateDescriptionType
Decode ReportStateDescriptionType
Encode ReportStateDescriptionType
```

#### `ReportStateType`

``` purescript
newtype ReportStateType
  = ReportStateType String
```

##### Instances
``` purescript
Newtype ReportStateType _
Generic ReportStateType _
Show ReportStateType
Decode ReportStateType
Encode ReportStateType
```

#### `ResetServiceSpecificCredentialRequest`

``` purescript
newtype ResetServiceSpecificCredentialRequest
  = ResetServiceSpecificCredentialRequest { "UserName" :: Maybe (UserNameType'), "ServiceSpecificCredentialId" :: ServiceSpecificCredentialId' }
```

##### Instances
``` purescript
Newtype ResetServiceSpecificCredentialRequest _
Generic ResetServiceSpecificCredentialRequest _
Show ResetServiceSpecificCredentialRequest
Decode ResetServiceSpecificCredentialRequest
Encode ResetServiceSpecificCredentialRequest
```

#### `newResetServiceSpecificCredentialRequest`

``` purescript
newResetServiceSpecificCredentialRequest :: ServiceSpecificCredentialId' -> ResetServiceSpecificCredentialRequest
```

Constructs ResetServiceSpecificCredentialRequest from required parameters

#### `newResetServiceSpecificCredentialRequest'`

``` purescript
newResetServiceSpecificCredentialRequest' :: ServiceSpecificCredentialId' -> ({ "UserName" :: Maybe (UserNameType'), "ServiceSpecificCredentialId" :: ServiceSpecificCredentialId' } -> { "UserName" :: Maybe (UserNameType'), "ServiceSpecificCredentialId" :: ServiceSpecificCredentialId' }) -> ResetServiceSpecificCredentialRequest
```

Constructs ResetServiceSpecificCredentialRequest's fields from required parameters

#### `ResetServiceSpecificCredentialResponse`

``` purescript
newtype ResetServiceSpecificCredentialResponse
  = ResetServiceSpecificCredentialResponse { "ServiceSpecificCredential" :: Maybe (ServiceSpecificCredential) }
```

##### Instances
``` purescript
Newtype ResetServiceSpecificCredentialResponse _
Generic ResetServiceSpecificCredentialResponse _
Show ResetServiceSpecificCredentialResponse
Decode ResetServiceSpecificCredentialResponse
Encode ResetServiceSpecificCredentialResponse
```

#### `newResetServiceSpecificCredentialResponse`

``` purescript
newResetServiceSpecificCredentialResponse :: ResetServiceSpecificCredentialResponse
```

Constructs ResetServiceSpecificCredentialResponse from required parameters

#### `newResetServiceSpecificCredentialResponse'`

``` purescript
newResetServiceSpecificCredentialResponse' :: ({ "ServiceSpecificCredential" :: Maybe (ServiceSpecificCredential) } -> { "ServiceSpecificCredential" :: Maybe (ServiceSpecificCredential) }) -> ResetServiceSpecificCredentialResponse
```

Constructs ResetServiceSpecificCredentialResponse's fields from required parameters

#### `ResourceHandlingOptionType`

``` purescript
newtype ResourceHandlingOptionType
  = ResourceHandlingOptionType String
```

##### Instances
``` purescript
Newtype ResourceHandlingOptionType _
Generic ResourceHandlingOptionType _
Show ResourceHandlingOptionType
Decode ResourceHandlingOptionType
Encode ResourceHandlingOptionType
```

#### `ResourceNameListType`

``` purescript
newtype ResourceNameListType
  = ResourceNameListType (Array ResourceNameType)
```

##### Instances
``` purescript
Newtype ResourceNameListType _
Generic ResourceNameListType _
Show ResourceNameListType
Decode ResourceNameListType
Encode ResourceNameListType
```

#### `ResourceNameType`

``` purescript
newtype ResourceNameType
  = ResourceNameType String
```

##### Instances
``` purescript
Newtype ResourceNameType _
Generic ResourceNameType _
Show ResourceNameType
Decode ResourceNameType
Encode ResourceNameType
```

#### `ResourceSpecificResult`

``` purescript
newtype ResourceSpecificResult
  = ResourceSpecificResult { "EvalResourceName" :: ResourceNameType, "EvalResourceDecision" :: PolicyEvaluationDecisionType, "MatchedStatements" :: Maybe (StatementListType), "MissingContextValues" :: Maybe (ContextKeyNamesResultListType), "EvalDecisionDetails" :: Maybe (EvalDecisionDetailsType) }
```

<p>Contains the result of the simulation of a single API action call on a single resource.</p> <p>This data type is used by a member of the <a>EvaluationResult</a> data type.</p>

##### Instances
``` purescript
Newtype ResourceSpecificResult _
Generic ResourceSpecificResult _
Show ResourceSpecificResult
Decode ResourceSpecificResult
Encode ResourceSpecificResult
```

#### `newResourceSpecificResult`

``` purescript
newResourceSpecificResult :: PolicyEvaluationDecisionType -> ResourceNameType -> ResourceSpecificResult
```

Constructs ResourceSpecificResult from required parameters

#### `newResourceSpecificResult'`

``` purescript
newResourceSpecificResult' :: PolicyEvaluationDecisionType -> ResourceNameType -> ({ "EvalResourceName" :: ResourceNameType, "EvalResourceDecision" :: PolicyEvaluationDecisionType, "MatchedStatements" :: Maybe (StatementListType), "MissingContextValues" :: Maybe (ContextKeyNamesResultListType), "EvalDecisionDetails" :: Maybe (EvalDecisionDetailsType) } -> { "EvalResourceName" :: ResourceNameType, "EvalResourceDecision" :: PolicyEvaluationDecisionType, "MatchedStatements" :: Maybe (StatementListType), "MissingContextValues" :: Maybe (ContextKeyNamesResultListType), "EvalDecisionDetails" :: Maybe (EvalDecisionDetailsType) }) -> ResourceSpecificResult
```

Constructs ResourceSpecificResult's fields from required parameters

#### `ResourceSpecificResultListType`

``` purescript
newtype ResourceSpecificResultListType
  = ResourceSpecificResultListType (Array ResourceSpecificResult)
```

##### Instances
``` purescript
Newtype ResourceSpecificResultListType _
Generic ResourceSpecificResultListType _
Show ResourceSpecificResultListType
Decode ResourceSpecificResultListType
Encode ResourceSpecificResultListType
```

#### `ResyncMFADeviceRequest`

``` purescript
newtype ResyncMFADeviceRequest
  = ResyncMFADeviceRequest { "UserName" :: ExistingUserNameType', "SerialNumber" :: SerialNumberType', "AuthenticationCode1" :: AuthenticationCodeType', "AuthenticationCode2" :: AuthenticationCodeType' }
```

##### Instances
``` purescript
Newtype ResyncMFADeviceRequest _
Generic ResyncMFADeviceRequest _
Show ResyncMFADeviceRequest
Decode ResyncMFADeviceRequest
Encode ResyncMFADeviceRequest
```

#### `newResyncMFADeviceRequest`

``` purescript
newResyncMFADeviceRequest :: AuthenticationCodeType' -> AuthenticationCodeType' -> SerialNumberType' -> ExistingUserNameType' -> ResyncMFADeviceRequest
```

Constructs ResyncMFADeviceRequest from required parameters

#### `newResyncMFADeviceRequest'`

``` purescript
newResyncMFADeviceRequest' :: AuthenticationCodeType' -> AuthenticationCodeType' -> SerialNumberType' -> ExistingUserNameType' -> ({ "UserName" :: ExistingUserNameType', "SerialNumber" :: SerialNumberType', "AuthenticationCode1" :: AuthenticationCodeType', "AuthenticationCode2" :: AuthenticationCodeType' } -> { "UserName" :: ExistingUserNameType', "SerialNumber" :: SerialNumberType', "AuthenticationCode1" :: AuthenticationCodeType', "AuthenticationCode2" :: AuthenticationCodeType' }) -> ResyncMFADeviceRequest
```

Constructs ResyncMFADeviceRequest's fields from required parameters

#### `Role`

``` purescript
newtype Role
  = Role { "Path" :: PathType', "RoleName" :: RoleNameType', "RoleId" :: IdType', "Arn" :: ArnType', "CreateDate" :: DateType', "AssumeRolePolicyDocument" :: Maybe (PolicyDocumentType'), "Description" :: Maybe (RoleDescriptionType') }
```

<p>Contains information about an IAM role. This structure is returned as a response element in several APIs that interact with roles.</p>

##### Instances
``` purescript
Newtype Role _
Generic Role _
Show Role
Decode Role
Encode Role
```

#### `newRole`

``` purescript
newRole :: ArnType' -> DateType' -> PathType' -> IdType' -> RoleNameType' -> Role
```

Constructs Role from required parameters

#### `newRole'`

``` purescript
newRole' :: ArnType' -> DateType' -> PathType' -> IdType' -> RoleNameType' -> ({ "Path" :: PathType', "RoleName" :: RoleNameType', "RoleId" :: IdType', "Arn" :: ArnType', "CreateDate" :: DateType', "AssumeRolePolicyDocument" :: Maybe (PolicyDocumentType'), "Description" :: Maybe (RoleDescriptionType') } -> { "Path" :: PathType', "RoleName" :: RoleNameType', "RoleId" :: IdType', "Arn" :: ArnType', "CreateDate" :: DateType', "AssumeRolePolicyDocument" :: Maybe (PolicyDocumentType'), "Description" :: Maybe (RoleDescriptionType') }) -> Role
```

Constructs Role's fields from required parameters

#### `RoleDetail`

``` purescript
newtype RoleDetail
  = RoleDetail { "Path" :: Maybe (PathType'), "RoleName" :: Maybe (RoleNameType'), "RoleId" :: Maybe (IdType'), "Arn" :: Maybe (ArnType'), "CreateDate" :: Maybe (DateType'), "AssumeRolePolicyDocument" :: Maybe (PolicyDocumentType'), "InstanceProfileList" :: Maybe (InstanceProfileListType'), "RolePolicyList" :: Maybe (PolicyDetailListType'), "AttachedManagedPolicies" :: Maybe (AttachedPoliciesListType') }
```

<p>Contains information about an IAM role, including all of the role's policies.</p> <p>This data type is used as a response element in the <a>GetAccountAuthorizationDetails</a> action.</p>

##### Instances
``` purescript
Newtype RoleDetail _
Generic RoleDetail _
Show RoleDetail
Decode RoleDetail
Encode RoleDetail
```

#### `newRoleDetail`

``` purescript
newRoleDetail :: RoleDetail
```

Constructs RoleDetail from required parameters

#### `newRoleDetail'`

``` purescript
newRoleDetail' :: ({ "Path" :: Maybe (PathType'), "RoleName" :: Maybe (RoleNameType'), "RoleId" :: Maybe (IdType'), "Arn" :: Maybe (ArnType'), "CreateDate" :: Maybe (DateType'), "AssumeRolePolicyDocument" :: Maybe (PolicyDocumentType'), "InstanceProfileList" :: Maybe (InstanceProfileListType'), "RolePolicyList" :: Maybe (PolicyDetailListType'), "AttachedManagedPolicies" :: Maybe (AttachedPoliciesListType') } -> { "Path" :: Maybe (PathType'), "RoleName" :: Maybe (RoleNameType'), "RoleId" :: Maybe (IdType'), "Arn" :: Maybe (ArnType'), "CreateDate" :: Maybe (DateType'), "AssumeRolePolicyDocument" :: Maybe (PolicyDocumentType'), "InstanceProfileList" :: Maybe (InstanceProfileListType'), "RolePolicyList" :: Maybe (PolicyDetailListType'), "AttachedManagedPolicies" :: Maybe (AttachedPoliciesListType') }) -> RoleDetail
```

Constructs RoleDetail's fields from required parameters

#### `RoleUsageListType`

``` purescript
newtype RoleUsageListType
  = RoleUsageListType (Array RoleUsageType)
```

##### Instances
``` purescript
Newtype RoleUsageListType _
Generic RoleUsageListType _
Show RoleUsageListType
Decode RoleUsageListType
Encode RoleUsageListType
```

#### `RoleUsageType`

``` purescript
newtype RoleUsageType
  = RoleUsageType { "Region" :: Maybe (RegionNameType), "Resources" :: Maybe (ArnListType) }
```

<p>An object that contains details about how a service-linked role is used.</p> <p>This data type is used as a response element in the <a>GetServiceLinkedRoleDeletionStatus</a> operation.</p>

##### Instances
``` purescript
Newtype RoleUsageType _
Generic RoleUsageType _
Show RoleUsageType
Decode RoleUsageType
Encode RoleUsageType
```

#### `newRoleUsageType`

``` purescript
newRoleUsageType :: RoleUsageType
```

Constructs RoleUsageType from required parameters

#### `newRoleUsageType'`

``` purescript
newRoleUsageType' :: ({ "Region" :: Maybe (RegionNameType), "Resources" :: Maybe (ArnListType) } -> { "Region" :: Maybe (RegionNameType), "Resources" :: Maybe (ArnListType) }) -> RoleUsageType
```

Constructs RoleUsageType's fields from required parameters

#### `SAMLMetadataDocumentType`

``` purescript
newtype SAMLMetadataDocumentType
  = SAMLMetadataDocumentType String
```

##### Instances
``` purescript
Newtype SAMLMetadataDocumentType _
Generic SAMLMetadataDocumentType _
Show SAMLMetadataDocumentType
Decode SAMLMetadataDocumentType
Encode SAMLMetadataDocumentType
```

#### `SAMLProviderListEntry`

``` purescript
newtype SAMLProviderListEntry
  = SAMLProviderListEntry { "Arn" :: Maybe (ArnType'), "ValidUntil" :: Maybe (DateType'), "CreateDate" :: Maybe (DateType') }
```

<p>Contains the list of SAML providers for this account.</p>

##### Instances
``` purescript
Newtype SAMLProviderListEntry _
Generic SAMLProviderListEntry _
Show SAMLProviderListEntry
Decode SAMLProviderListEntry
Encode SAMLProviderListEntry
```

#### `newSAMLProviderListEntry`

``` purescript
newSAMLProviderListEntry :: SAMLProviderListEntry
```

Constructs SAMLProviderListEntry from required parameters

#### `newSAMLProviderListEntry'`

``` purescript
newSAMLProviderListEntry' :: ({ "Arn" :: Maybe (ArnType'), "ValidUntil" :: Maybe (DateType'), "CreateDate" :: Maybe (DateType') } -> { "Arn" :: Maybe (ArnType'), "ValidUntil" :: Maybe (DateType'), "CreateDate" :: Maybe (DateType') }) -> SAMLProviderListEntry
```

Constructs SAMLProviderListEntry's fields from required parameters

#### `SAMLProviderListType`

``` purescript
newtype SAMLProviderListType
  = SAMLProviderListType (Array SAMLProviderListEntry)
```

##### Instances
``` purescript
Newtype SAMLProviderListType _
Generic SAMLProviderListType _
Show SAMLProviderListType
Decode SAMLProviderListType
Encode SAMLProviderListType
```

#### `SAMLProviderNameType`

``` purescript
newtype SAMLProviderNameType
  = SAMLProviderNameType String
```

##### Instances
``` purescript
Newtype SAMLProviderNameType _
Generic SAMLProviderNameType _
Show SAMLProviderNameType
Decode SAMLProviderNameType
Encode SAMLProviderNameType
```

#### `SSHPublicKey`

``` purescript
newtype SSHPublicKey
  = SSHPublicKey { "UserName" :: UserNameType', "SSHPublicKeyId" :: PublicKeyIdType', "Fingerprint" :: PublicKeyFingerprintType', "SSHPublicKeyBody" :: PublicKeyMaterialType', "Status" :: StatusType', "UploadDate" :: Maybe (DateType') }
```

<p>Contains information about an SSH public key.</p> <p>This data type is used as a response element in the <a>GetSSHPublicKey</a> and <a>UploadSSHPublicKey</a> actions. </p>

##### Instances
``` purescript
Newtype SSHPublicKey _
Generic SSHPublicKey _
Show SSHPublicKey
Decode SSHPublicKey
Encode SSHPublicKey
```

#### `newSSHPublicKey`

``` purescript
newSSHPublicKey :: PublicKeyFingerprintType' -> PublicKeyMaterialType' -> PublicKeyIdType' -> StatusType' -> UserNameType' -> SSHPublicKey
```

Constructs SSHPublicKey from required parameters

#### `newSSHPublicKey'`

``` purescript
newSSHPublicKey' :: PublicKeyFingerprintType' -> PublicKeyMaterialType' -> PublicKeyIdType' -> StatusType' -> UserNameType' -> ({ "UserName" :: UserNameType', "SSHPublicKeyId" :: PublicKeyIdType', "Fingerprint" :: PublicKeyFingerprintType', "SSHPublicKeyBody" :: PublicKeyMaterialType', "Status" :: StatusType', "UploadDate" :: Maybe (DateType') } -> { "UserName" :: UserNameType', "SSHPublicKeyId" :: PublicKeyIdType', "Fingerprint" :: PublicKeyFingerprintType', "SSHPublicKeyBody" :: PublicKeyMaterialType', "Status" :: StatusType', "UploadDate" :: Maybe (DateType') }) -> SSHPublicKey
```

Constructs SSHPublicKey's fields from required parameters

#### `SSHPublicKeyListType`

``` purescript
newtype SSHPublicKeyListType
  = SSHPublicKeyListType (Array SSHPublicKeyMetadata)
```

##### Instances
``` purescript
Newtype SSHPublicKeyListType _
Generic SSHPublicKeyListType _
Show SSHPublicKeyListType
Decode SSHPublicKeyListType
Encode SSHPublicKeyListType
```

#### `SSHPublicKeyMetadata`

``` purescript
newtype SSHPublicKeyMetadata
  = SSHPublicKeyMetadata { "UserName" :: UserNameType', "SSHPublicKeyId" :: PublicKeyIdType', "Status" :: StatusType', "UploadDate" :: DateType' }
```

<p>Contains information about an SSH public key, without the key's body or fingerprint.</p> <p>This data type is used as a response element in the <a>ListSSHPublicKeys</a> action.</p>

##### Instances
``` purescript
Newtype SSHPublicKeyMetadata _
Generic SSHPublicKeyMetadata _
Show SSHPublicKeyMetadata
Decode SSHPublicKeyMetadata
Encode SSHPublicKeyMetadata
```

#### `newSSHPublicKeyMetadata`

``` purescript
newSSHPublicKeyMetadata :: PublicKeyIdType' -> StatusType' -> DateType' -> UserNameType' -> SSHPublicKeyMetadata
```

Constructs SSHPublicKeyMetadata from required parameters

#### `newSSHPublicKeyMetadata'`

``` purescript
newSSHPublicKeyMetadata' :: PublicKeyIdType' -> StatusType' -> DateType' -> UserNameType' -> ({ "UserName" :: UserNameType', "SSHPublicKeyId" :: PublicKeyIdType', "Status" :: StatusType', "UploadDate" :: DateType' } -> { "UserName" :: UserNameType', "SSHPublicKeyId" :: PublicKeyIdType', "Status" :: StatusType', "UploadDate" :: DateType' }) -> SSHPublicKeyMetadata
```

Constructs SSHPublicKeyMetadata's fields from required parameters

#### `ServerCertificate`

``` purescript
newtype ServerCertificate
  = ServerCertificate { "ServerCertificateMetadata" :: ServerCertificateMetadata, "CertificateBody" :: CertificateBodyType', "CertificateChain" :: Maybe (CertificateChainType') }
```

<p>Contains information about a server certificate.</p> <p> This data type is used as a response element in the <a>GetServerCertificate</a> action. </p>

##### Instances
``` purescript
Newtype ServerCertificate _
Generic ServerCertificate _
Show ServerCertificate
Decode ServerCertificate
Encode ServerCertificate
```

#### `newServerCertificate`

``` purescript
newServerCertificate :: CertificateBodyType' -> ServerCertificateMetadata -> ServerCertificate
```

Constructs ServerCertificate from required parameters

#### `newServerCertificate'`

``` purescript
newServerCertificate' :: CertificateBodyType' -> ServerCertificateMetadata -> ({ "ServerCertificateMetadata" :: ServerCertificateMetadata, "CertificateBody" :: CertificateBodyType', "CertificateChain" :: Maybe (CertificateChainType') } -> { "ServerCertificateMetadata" :: ServerCertificateMetadata, "CertificateBody" :: CertificateBodyType', "CertificateChain" :: Maybe (CertificateChainType') }) -> ServerCertificate
```

Constructs ServerCertificate's fields from required parameters

#### `ServerCertificateMetadata`

``` purescript
newtype ServerCertificateMetadata
  = ServerCertificateMetadata { "Path" :: PathType', "ServerCertificateName" :: ServerCertificateNameType', "ServerCertificateId" :: IdType', "Arn" :: ArnType', "UploadDate" :: Maybe (DateType'), "Expiration" :: Maybe (DateType') }
```

<p>Contains information about a server certificate without its certificate body, certificate chain, and private key.</p> <p> This data type is used as a response element in the <a>UploadServerCertificate</a> and <a>ListServerCertificates</a> actions. </p>

##### Instances
``` purescript
Newtype ServerCertificateMetadata _
Generic ServerCertificateMetadata _
Show ServerCertificateMetadata
Decode ServerCertificateMetadata
Encode ServerCertificateMetadata
```

#### `newServerCertificateMetadata`

``` purescript
newServerCertificateMetadata :: ArnType' -> PathType' -> IdType' -> ServerCertificateNameType' -> ServerCertificateMetadata
```

Constructs ServerCertificateMetadata from required parameters

#### `newServerCertificateMetadata'`

``` purescript
newServerCertificateMetadata' :: ArnType' -> PathType' -> IdType' -> ServerCertificateNameType' -> ({ "Path" :: PathType', "ServerCertificateName" :: ServerCertificateNameType', "ServerCertificateId" :: IdType', "Arn" :: ArnType', "UploadDate" :: Maybe (DateType'), "Expiration" :: Maybe (DateType') } -> { "Path" :: PathType', "ServerCertificateName" :: ServerCertificateNameType', "ServerCertificateId" :: IdType', "Arn" :: ArnType', "UploadDate" :: Maybe (DateType'), "Expiration" :: Maybe (DateType') }) -> ServerCertificateMetadata
```

Constructs ServerCertificateMetadata's fields from required parameters

#### `ServiceFailureException`

``` purescript
newtype ServiceFailureException
  = ServiceFailureException { message :: Maybe (ServiceFailureExceptionMessage') }
```

<p>The request processing has failed because of an unknown error, exception or failure.</p>

##### Instances
``` purescript
Newtype ServiceFailureException _
Generic ServiceFailureException _
Show ServiceFailureException
Decode ServiceFailureException
Encode ServiceFailureException
```

#### `newServiceFailureException`

``` purescript
newServiceFailureException :: ServiceFailureException
```

Constructs ServiceFailureException from required parameters

#### `newServiceFailureException'`

``` purescript
newServiceFailureException' :: ({ message :: Maybe (ServiceFailureExceptionMessage') } -> { message :: Maybe (ServiceFailureExceptionMessage') }) -> ServiceFailureException
```

Constructs ServiceFailureException's fields from required parameters

#### `ServiceNotSupportedException`

``` purescript
newtype ServiceNotSupportedException
  = ServiceNotSupportedException { message :: Maybe (ServiceNotSupportedMessage') }
```

<p>The specified service does not support service-specific credentials.</p>

##### Instances
``` purescript
Newtype ServiceNotSupportedException _
Generic ServiceNotSupportedException _
Show ServiceNotSupportedException
Decode ServiceNotSupportedException
Encode ServiceNotSupportedException
```

#### `newServiceNotSupportedException`

``` purescript
newServiceNotSupportedException :: ServiceNotSupportedException
```

Constructs ServiceNotSupportedException from required parameters

#### `newServiceNotSupportedException'`

``` purescript
newServiceNotSupportedException' :: ({ message :: Maybe (ServiceNotSupportedMessage') } -> { message :: Maybe (ServiceNotSupportedMessage') }) -> ServiceNotSupportedException
```

Constructs ServiceNotSupportedException's fields from required parameters

#### `ServiceSpecificCredential`

``` purescript
newtype ServiceSpecificCredential
  = ServiceSpecificCredential { "CreateDate" :: DateType', "ServiceName" :: ServiceName', "ServiceUserName" :: ServiceUserName', "ServicePassword" :: ServicePassword', "ServiceSpecificCredentialId" :: ServiceSpecificCredentialId', "UserName" :: UserNameType', "Status" :: StatusType' }
```

<p>Contains the details of a service specific credential.</p>

##### Instances
``` purescript
Newtype ServiceSpecificCredential _
Generic ServiceSpecificCredential _
Show ServiceSpecificCredential
Decode ServiceSpecificCredential
Encode ServiceSpecificCredential
```

#### `newServiceSpecificCredential`

``` purescript
newServiceSpecificCredential :: DateType' -> ServiceName' -> ServicePassword' -> ServiceSpecificCredentialId' -> ServiceUserName' -> StatusType' -> UserNameType' -> ServiceSpecificCredential
```

Constructs ServiceSpecificCredential from required parameters

#### `newServiceSpecificCredential'`

``` purescript
newServiceSpecificCredential' :: DateType' -> ServiceName' -> ServicePassword' -> ServiceSpecificCredentialId' -> ServiceUserName' -> StatusType' -> UserNameType' -> ({ "CreateDate" :: DateType', "ServiceName" :: ServiceName', "ServiceUserName" :: ServiceUserName', "ServicePassword" :: ServicePassword', "ServiceSpecificCredentialId" :: ServiceSpecificCredentialId', "UserName" :: UserNameType', "Status" :: StatusType' } -> { "CreateDate" :: DateType', "ServiceName" :: ServiceName', "ServiceUserName" :: ServiceUserName', "ServicePassword" :: ServicePassword', "ServiceSpecificCredentialId" :: ServiceSpecificCredentialId', "UserName" :: UserNameType', "Status" :: StatusType' }) -> ServiceSpecificCredential
```

Constructs ServiceSpecificCredential's fields from required parameters

#### `ServiceSpecificCredentialMetadata`

``` purescript
newtype ServiceSpecificCredentialMetadata
  = ServiceSpecificCredentialMetadata { "UserName" :: UserNameType', "Status" :: StatusType', "ServiceUserName" :: ServiceUserName', "CreateDate" :: DateType', "ServiceSpecificCredentialId" :: ServiceSpecificCredentialId', "ServiceName" :: ServiceName' }
```

<p>Contains additional details about a service-specific credential.</p>

##### Instances
``` purescript
Newtype ServiceSpecificCredentialMetadata _
Generic ServiceSpecificCredentialMetadata _
Show ServiceSpecificCredentialMetadata
Decode ServiceSpecificCredentialMetadata
Encode ServiceSpecificCredentialMetadata
```

#### `newServiceSpecificCredentialMetadata`

``` purescript
newServiceSpecificCredentialMetadata :: DateType' -> ServiceName' -> ServiceSpecificCredentialId' -> ServiceUserName' -> StatusType' -> UserNameType' -> ServiceSpecificCredentialMetadata
```

Constructs ServiceSpecificCredentialMetadata from required parameters

#### `newServiceSpecificCredentialMetadata'`

``` purescript
newServiceSpecificCredentialMetadata' :: DateType' -> ServiceName' -> ServiceSpecificCredentialId' -> ServiceUserName' -> StatusType' -> UserNameType' -> ({ "UserName" :: UserNameType', "Status" :: StatusType', "ServiceUserName" :: ServiceUserName', "CreateDate" :: DateType', "ServiceSpecificCredentialId" :: ServiceSpecificCredentialId', "ServiceName" :: ServiceName' } -> { "UserName" :: UserNameType', "Status" :: StatusType', "ServiceUserName" :: ServiceUserName', "CreateDate" :: DateType', "ServiceSpecificCredentialId" :: ServiceSpecificCredentialId', "ServiceName" :: ServiceName' }) -> ServiceSpecificCredentialMetadata
```

Constructs ServiceSpecificCredentialMetadata's fields from required parameters

#### `ServiceSpecificCredentialsListType`

``` purescript
newtype ServiceSpecificCredentialsListType
  = ServiceSpecificCredentialsListType (Array ServiceSpecificCredentialMetadata)
```

##### Instances
``` purescript
Newtype ServiceSpecificCredentialsListType _
Generic ServiceSpecificCredentialsListType _
Show ServiceSpecificCredentialsListType
Decode ServiceSpecificCredentialsListType
Encode ServiceSpecificCredentialsListType
```

#### `SetDefaultPolicyVersionRequest`

``` purescript
newtype SetDefaultPolicyVersionRequest
  = SetDefaultPolicyVersionRequest { "PolicyArn" :: ArnType', "VersionId" :: PolicyVersionIdType' }
```

##### Instances
``` purescript
Newtype SetDefaultPolicyVersionRequest _
Generic SetDefaultPolicyVersionRequest _
Show SetDefaultPolicyVersionRequest
Decode SetDefaultPolicyVersionRequest
Encode SetDefaultPolicyVersionRequest
```

#### `newSetDefaultPolicyVersionRequest`

``` purescript
newSetDefaultPolicyVersionRequest :: ArnType' -> PolicyVersionIdType' -> SetDefaultPolicyVersionRequest
```

Constructs SetDefaultPolicyVersionRequest from required parameters

#### `newSetDefaultPolicyVersionRequest'`

``` purescript
newSetDefaultPolicyVersionRequest' :: ArnType' -> PolicyVersionIdType' -> ({ "PolicyArn" :: ArnType', "VersionId" :: PolicyVersionIdType' } -> { "PolicyArn" :: ArnType', "VersionId" :: PolicyVersionIdType' }) -> SetDefaultPolicyVersionRequest
```

Constructs SetDefaultPolicyVersionRequest's fields from required parameters

#### `SigningCertificate`

``` purescript
newtype SigningCertificate
  = SigningCertificate { "UserName" :: UserNameType', "CertificateId" :: CertificateIdType', "CertificateBody" :: CertificateBodyType', "Status" :: StatusType', "UploadDate" :: Maybe (DateType') }
```

<p>Contains information about an X.509 signing certificate.</p> <p>This data type is used as a response element in the <a>UploadSigningCertificate</a> and <a>ListSigningCertificates</a> actions. </p>

##### Instances
``` purescript
Newtype SigningCertificate _
Generic SigningCertificate _
Show SigningCertificate
Decode SigningCertificate
Encode SigningCertificate
```

#### `newSigningCertificate`

``` purescript
newSigningCertificate :: CertificateBodyType' -> CertificateIdType' -> StatusType' -> UserNameType' -> SigningCertificate
```

Constructs SigningCertificate from required parameters

#### `newSigningCertificate'`

``` purescript
newSigningCertificate' :: CertificateBodyType' -> CertificateIdType' -> StatusType' -> UserNameType' -> ({ "UserName" :: UserNameType', "CertificateId" :: CertificateIdType', "CertificateBody" :: CertificateBodyType', "Status" :: StatusType', "UploadDate" :: Maybe (DateType') } -> { "UserName" :: UserNameType', "CertificateId" :: CertificateIdType', "CertificateBody" :: CertificateBodyType', "Status" :: StatusType', "UploadDate" :: Maybe (DateType') }) -> SigningCertificate
```

Constructs SigningCertificate's fields from required parameters

#### `SimulateCustomPolicyRequest`

``` purescript
newtype SimulateCustomPolicyRequest
  = SimulateCustomPolicyRequest { "PolicyInputList" :: SimulationPolicyListType, "ActionNames" :: ActionNameListType, "ResourceArns" :: Maybe (ResourceNameListType), "ResourcePolicy" :: Maybe (PolicyDocumentType'), "ResourceOwner" :: Maybe (ResourceNameType), "CallerArn" :: Maybe (ResourceNameType), "ContextEntries" :: Maybe (ContextEntryListType), "ResourceHandlingOption" :: Maybe (ResourceHandlingOptionType), "MaxItems" :: Maybe (MaxItemsType'), "Marker" :: Maybe (MarkerType') }
```

##### Instances
``` purescript
Newtype SimulateCustomPolicyRequest _
Generic SimulateCustomPolicyRequest _
Show SimulateCustomPolicyRequest
Decode SimulateCustomPolicyRequest
Encode SimulateCustomPolicyRequest
```

#### `newSimulateCustomPolicyRequest`

``` purescript
newSimulateCustomPolicyRequest :: ActionNameListType -> SimulationPolicyListType -> SimulateCustomPolicyRequest
```

Constructs SimulateCustomPolicyRequest from required parameters

#### `newSimulateCustomPolicyRequest'`

``` purescript
newSimulateCustomPolicyRequest' :: ActionNameListType -> SimulationPolicyListType -> ({ "PolicyInputList" :: SimulationPolicyListType, "ActionNames" :: ActionNameListType, "ResourceArns" :: Maybe (ResourceNameListType), "ResourcePolicy" :: Maybe (PolicyDocumentType'), "ResourceOwner" :: Maybe (ResourceNameType), "CallerArn" :: Maybe (ResourceNameType), "ContextEntries" :: Maybe (ContextEntryListType), "ResourceHandlingOption" :: Maybe (ResourceHandlingOptionType), "MaxItems" :: Maybe (MaxItemsType'), "Marker" :: Maybe (MarkerType') } -> { "PolicyInputList" :: SimulationPolicyListType, "ActionNames" :: ActionNameListType, "ResourceArns" :: Maybe (ResourceNameListType), "ResourcePolicy" :: Maybe (PolicyDocumentType'), "ResourceOwner" :: Maybe (ResourceNameType), "CallerArn" :: Maybe (ResourceNameType), "ContextEntries" :: Maybe (ContextEntryListType), "ResourceHandlingOption" :: Maybe (ResourceHandlingOptionType), "MaxItems" :: Maybe (MaxItemsType'), "Marker" :: Maybe (MarkerType') }) -> SimulateCustomPolicyRequest
```

Constructs SimulateCustomPolicyRequest's fields from required parameters

#### `SimulatePolicyResponse`

``` purescript
newtype SimulatePolicyResponse
  = SimulatePolicyResponse { "EvaluationResults" :: Maybe (EvaluationResultsListType), "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') }
```

<p>Contains the response to a successful <a>SimulatePrincipalPolicy</a> or <a>SimulateCustomPolicy</a> request.</p>

##### Instances
``` purescript
Newtype SimulatePolicyResponse _
Generic SimulatePolicyResponse _
Show SimulatePolicyResponse
Decode SimulatePolicyResponse
Encode SimulatePolicyResponse
```

#### `newSimulatePolicyResponse`

``` purescript
newSimulatePolicyResponse :: SimulatePolicyResponse
```

Constructs SimulatePolicyResponse from required parameters

#### `newSimulatePolicyResponse'`

``` purescript
newSimulatePolicyResponse' :: ({ "EvaluationResults" :: Maybe (EvaluationResultsListType), "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') } -> { "EvaluationResults" :: Maybe (EvaluationResultsListType), "IsTruncated" :: Maybe (BooleanType'), "Marker" :: Maybe (MarkerType') }) -> SimulatePolicyResponse
```

Constructs SimulatePolicyResponse's fields from required parameters

#### `SimulatePrincipalPolicyRequest`

``` purescript
newtype SimulatePrincipalPolicyRequest
  = SimulatePrincipalPolicyRequest { "PolicySourceArn" :: ArnType', "PolicyInputList" :: Maybe (SimulationPolicyListType), "ActionNames" :: ActionNameListType, "ResourceArns" :: Maybe (ResourceNameListType), "ResourcePolicy" :: Maybe (PolicyDocumentType'), "ResourceOwner" :: Maybe (ResourceNameType), "CallerArn" :: Maybe (ResourceNameType), "ContextEntries" :: Maybe (ContextEntryListType), "ResourceHandlingOption" :: Maybe (ResourceHandlingOptionType), "MaxItems" :: Maybe (MaxItemsType'), "Marker" :: Maybe (MarkerType') }
```

##### Instances
``` purescript
Newtype SimulatePrincipalPolicyRequest _
Generic SimulatePrincipalPolicyRequest _
Show SimulatePrincipalPolicyRequest
Decode SimulatePrincipalPolicyRequest
Encode SimulatePrincipalPolicyRequest
```

#### `newSimulatePrincipalPolicyRequest`

``` purescript
newSimulatePrincipalPolicyRequest :: ActionNameListType -> ArnType' -> SimulatePrincipalPolicyRequest
```

Constructs SimulatePrincipalPolicyRequest from required parameters

#### `newSimulatePrincipalPolicyRequest'`

``` purescript
newSimulatePrincipalPolicyRequest' :: ActionNameListType -> ArnType' -> ({ "PolicySourceArn" :: ArnType', "PolicyInputList" :: Maybe (SimulationPolicyListType), "ActionNames" :: ActionNameListType, "ResourceArns" :: Maybe (ResourceNameListType), "ResourcePolicy" :: Maybe (PolicyDocumentType'), "ResourceOwner" :: Maybe (ResourceNameType), "CallerArn" :: Maybe (ResourceNameType), "ContextEntries" :: Maybe (ContextEntryListType), "ResourceHandlingOption" :: Maybe (ResourceHandlingOptionType), "MaxItems" :: Maybe (MaxItemsType'), "Marker" :: Maybe (MarkerType') } -> { "PolicySourceArn" :: ArnType', "PolicyInputList" :: Maybe (SimulationPolicyListType), "ActionNames" :: ActionNameListType, "ResourceArns" :: Maybe (ResourceNameListType), "ResourcePolicy" :: Maybe (PolicyDocumentType'), "ResourceOwner" :: Maybe (ResourceNameType), "CallerArn" :: Maybe (ResourceNameType), "ContextEntries" :: Maybe (ContextEntryListType), "ResourceHandlingOption" :: Maybe (ResourceHandlingOptionType), "MaxItems" :: Maybe (MaxItemsType'), "Marker" :: Maybe (MarkerType') }) -> SimulatePrincipalPolicyRequest
```

Constructs SimulatePrincipalPolicyRequest's fields from required parameters

#### `SimulationPolicyListType`

``` purescript
newtype SimulationPolicyListType
  = SimulationPolicyListType (Array PolicyDocumentType')
```

##### Instances
``` purescript
Newtype SimulationPolicyListType _
Generic SimulationPolicyListType _
Show SimulationPolicyListType
Decode SimulationPolicyListType
Encode SimulationPolicyListType
```

#### `Statement`

``` purescript
newtype Statement
  = Statement { "SourcePolicyId" :: Maybe (PolicyIdentifierType), "SourcePolicyType" :: Maybe (PolicySourceType), "StartPosition" :: Maybe (Position), "EndPosition" :: Maybe (Position) }
```

<p>Contains a reference to a <code>Statement</code> element in a policy document that determines the result of the simulation.</p> <p>This data type is used by the <code>MatchedStatements</code> member of the <code> <a>EvaluationResult</a> </code> type.</p>

##### Instances
``` purescript
Newtype Statement _
Generic Statement _
Show Statement
Decode Statement
Encode Statement
```

#### `newStatement`

``` purescript
newStatement :: Statement
```

Constructs Statement from required parameters

#### `newStatement'`

``` purescript
newStatement' :: ({ "SourcePolicyId" :: Maybe (PolicyIdentifierType), "SourcePolicyType" :: Maybe (PolicySourceType), "StartPosition" :: Maybe (Position), "EndPosition" :: Maybe (Position) } -> { "SourcePolicyId" :: Maybe (PolicyIdentifierType), "SourcePolicyType" :: Maybe (PolicySourceType), "StartPosition" :: Maybe (Position), "EndPosition" :: Maybe (Position) }) -> Statement
```

Constructs Statement's fields from required parameters

#### `StatementListType`

``` purescript
newtype StatementListType
  = StatementListType (Array Statement)
```

##### Instances
``` purescript
Newtype StatementListType _
Generic StatementListType _
Show StatementListType
Decode StatementListType
Encode StatementListType
```

#### `UnmodifiableEntityException`

``` purescript
newtype UnmodifiableEntityException
  = UnmodifiableEntityException { message :: Maybe (UnmodifiableEntityMessage') }
```

<p>The request was rejected because only the service that depends on the service-linked role can modify or delete the role on your behalf. The error message includes the name of the service that depends on this service-linked role. You must request the change through that service.</p>

##### Instances
``` purescript
Newtype UnmodifiableEntityException _
Generic UnmodifiableEntityException _
Show UnmodifiableEntityException
Decode UnmodifiableEntityException
Encode UnmodifiableEntityException
```

#### `newUnmodifiableEntityException`

``` purescript
newUnmodifiableEntityException :: UnmodifiableEntityException
```

Constructs UnmodifiableEntityException from required parameters

#### `newUnmodifiableEntityException'`

``` purescript
newUnmodifiableEntityException' :: ({ message :: Maybe (UnmodifiableEntityMessage') } -> { message :: Maybe (UnmodifiableEntityMessage') }) -> UnmodifiableEntityException
```

Constructs UnmodifiableEntityException's fields from required parameters

#### `UnrecognizedPublicKeyEncodingException`

``` purescript
newtype UnrecognizedPublicKeyEncodingException
  = UnrecognizedPublicKeyEncodingException { message :: Maybe (UnrecognizedPublicKeyEncodingMessage') }
```

<p>The request was rejected because the public key encoding format is unsupported or unrecognized.</p>

##### Instances
``` purescript
Newtype UnrecognizedPublicKeyEncodingException _
Generic UnrecognizedPublicKeyEncodingException _
Show UnrecognizedPublicKeyEncodingException
Decode UnrecognizedPublicKeyEncodingException
Encode UnrecognizedPublicKeyEncodingException
```

#### `newUnrecognizedPublicKeyEncodingException`

``` purescript
newUnrecognizedPublicKeyEncodingException :: UnrecognizedPublicKeyEncodingException
```

Constructs UnrecognizedPublicKeyEncodingException from required parameters

#### `newUnrecognizedPublicKeyEncodingException'`

``` purescript
newUnrecognizedPublicKeyEncodingException' :: ({ message :: Maybe (UnrecognizedPublicKeyEncodingMessage') } -> { message :: Maybe (UnrecognizedPublicKeyEncodingMessage') }) -> UnrecognizedPublicKeyEncodingException
```

Constructs UnrecognizedPublicKeyEncodingException's fields from required parameters

#### `UpdateAccessKeyRequest`

``` purescript
newtype UpdateAccessKeyRequest
  = UpdateAccessKeyRequest { "UserName" :: Maybe (ExistingUserNameType'), "AccessKeyId" :: AccessKeyIdType', "Status" :: StatusType' }
```

##### Instances
``` purescript
Newtype UpdateAccessKeyRequest _
Generic UpdateAccessKeyRequest _
Show UpdateAccessKeyRequest
Decode UpdateAccessKeyRequest
Encode UpdateAccessKeyRequest
```

#### `newUpdateAccessKeyRequest`

``` purescript
newUpdateAccessKeyRequest :: AccessKeyIdType' -> StatusType' -> UpdateAccessKeyRequest
```

Constructs UpdateAccessKeyRequest from required parameters

#### `newUpdateAccessKeyRequest'`

``` purescript
newUpdateAccessKeyRequest' :: AccessKeyIdType' -> StatusType' -> ({ "UserName" :: Maybe (ExistingUserNameType'), "AccessKeyId" :: AccessKeyIdType', "Status" :: StatusType' } -> { "UserName" :: Maybe (ExistingUserNameType'), "AccessKeyId" :: AccessKeyIdType', "Status" :: StatusType' }) -> UpdateAccessKeyRequest
```

Constructs UpdateAccessKeyRequest's fields from required parameters

#### `UpdateAccountPasswordPolicyRequest`

``` purescript
newtype UpdateAccountPasswordPolicyRequest
  = UpdateAccountPasswordPolicyRequest { "MinimumPasswordLength" :: Maybe (MinimumPasswordLengthType'), "RequireSymbols" :: Maybe (BooleanType'), "RequireNumbers" :: Maybe (BooleanType'), "RequireUppercaseCharacters" :: Maybe (BooleanType'), "RequireLowercaseCharacters" :: Maybe (BooleanType'), "AllowUsersToChangePassword" :: Maybe (BooleanType'), "MaxPasswordAge" :: Maybe (MaxPasswordAgeType'), "PasswordReusePrevention" :: Maybe (PasswordReusePreventionType'), "HardExpiry" :: Maybe (BooleanObjectType') }
```

##### Instances
``` purescript
Newtype UpdateAccountPasswordPolicyRequest _
Generic UpdateAccountPasswordPolicyRequest _
Show UpdateAccountPasswordPolicyRequest
Decode UpdateAccountPasswordPolicyRequest
Encode UpdateAccountPasswordPolicyRequest
```

#### `newUpdateAccountPasswordPolicyRequest`

``` purescript
newUpdateAccountPasswordPolicyRequest :: UpdateAccountPasswordPolicyRequest
```

Constructs UpdateAccountPasswordPolicyRequest from required parameters

#### `newUpdateAccountPasswordPolicyRequest'`

``` purescript
newUpdateAccountPasswordPolicyRequest' :: ({ "MinimumPasswordLength" :: Maybe (MinimumPasswordLengthType'), "RequireSymbols" :: Maybe (BooleanType'), "RequireNumbers" :: Maybe (BooleanType'), "RequireUppercaseCharacters" :: Maybe (BooleanType'), "RequireLowercaseCharacters" :: Maybe (BooleanType'), "AllowUsersToChangePassword" :: Maybe (BooleanType'), "MaxPasswordAge" :: Maybe (MaxPasswordAgeType'), "PasswordReusePrevention" :: Maybe (PasswordReusePreventionType'), "HardExpiry" :: Maybe (BooleanObjectType') } -> { "MinimumPasswordLength" :: Maybe (MinimumPasswordLengthType'), "RequireSymbols" :: Maybe (BooleanType'), "RequireNumbers" :: Maybe (BooleanType'), "RequireUppercaseCharacters" :: Maybe (BooleanType'), "RequireLowercaseCharacters" :: Maybe (BooleanType'), "AllowUsersToChangePassword" :: Maybe (BooleanType'), "MaxPasswordAge" :: Maybe (MaxPasswordAgeType'), "PasswordReusePrevention" :: Maybe (PasswordReusePreventionType'), "HardExpiry" :: Maybe (BooleanObjectType') }) -> UpdateAccountPasswordPolicyRequest
```

Constructs UpdateAccountPasswordPolicyRequest's fields from required parameters

#### `UpdateAssumeRolePolicyRequest`

``` purescript
newtype UpdateAssumeRolePolicyRequest
  = UpdateAssumeRolePolicyRequest { "RoleName" :: RoleNameType', "PolicyDocument" :: PolicyDocumentType' }
```

##### Instances
``` purescript
Newtype UpdateAssumeRolePolicyRequest _
Generic UpdateAssumeRolePolicyRequest _
Show UpdateAssumeRolePolicyRequest
Decode UpdateAssumeRolePolicyRequest
Encode UpdateAssumeRolePolicyRequest
```

#### `newUpdateAssumeRolePolicyRequest`

``` purescript
newUpdateAssumeRolePolicyRequest :: PolicyDocumentType' -> RoleNameType' -> UpdateAssumeRolePolicyRequest
```

Constructs UpdateAssumeRolePolicyRequest from required parameters

#### `newUpdateAssumeRolePolicyRequest'`

``` purescript
newUpdateAssumeRolePolicyRequest' :: PolicyDocumentType' -> RoleNameType' -> ({ "RoleName" :: RoleNameType', "PolicyDocument" :: PolicyDocumentType' } -> { "RoleName" :: RoleNameType', "PolicyDocument" :: PolicyDocumentType' }) -> UpdateAssumeRolePolicyRequest
```

Constructs UpdateAssumeRolePolicyRequest's fields from required parameters

#### `UpdateGroupRequest`

``` purescript
newtype UpdateGroupRequest
  = UpdateGroupRequest { "GroupName" :: GroupNameType', "NewPath" :: Maybe (PathType'), "NewGroupName" :: Maybe (GroupNameType') }
```

##### Instances
``` purescript
Newtype UpdateGroupRequest _
Generic UpdateGroupRequest _
Show UpdateGroupRequest
Decode UpdateGroupRequest
Encode UpdateGroupRequest
```

#### `newUpdateGroupRequest`

``` purescript
newUpdateGroupRequest :: GroupNameType' -> UpdateGroupRequest
```

Constructs UpdateGroupRequest from required parameters

#### `newUpdateGroupRequest'`

``` purescript
newUpdateGroupRequest' :: GroupNameType' -> ({ "GroupName" :: GroupNameType', "NewPath" :: Maybe (PathType'), "NewGroupName" :: Maybe (GroupNameType') } -> { "GroupName" :: GroupNameType', "NewPath" :: Maybe (PathType'), "NewGroupName" :: Maybe (GroupNameType') }) -> UpdateGroupRequest
```

Constructs UpdateGroupRequest's fields from required parameters

#### `UpdateLoginProfileRequest`

``` purescript
newtype UpdateLoginProfileRequest
  = UpdateLoginProfileRequest { "UserName" :: UserNameType', "Password" :: Maybe (PasswordType'), "PasswordResetRequired" :: Maybe (BooleanObjectType') }
```

##### Instances
``` purescript
Newtype UpdateLoginProfileRequest _
Generic UpdateLoginProfileRequest _
Show UpdateLoginProfileRequest
Decode UpdateLoginProfileRequest
Encode UpdateLoginProfileRequest
```

#### `newUpdateLoginProfileRequest`

``` purescript
newUpdateLoginProfileRequest :: UserNameType' -> UpdateLoginProfileRequest
```

Constructs UpdateLoginProfileRequest from required parameters

#### `newUpdateLoginProfileRequest'`

``` purescript
newUpdateLoginProfileRequest' :: UserNameType' -> ({ "UserName" :: UserNameType', "Password" :: Maybe (PasswordType'), "PasswordResetRequired" :: Maybe (BooleanObjectType') } -> { "UserName" :: UserNameType', "Password" :: Maybe (PasswordType'), "PasswordResetRequired" :: Maybe (BooleanObjectType') }) -> UpdateLoginProfileRequest
```

Constructs UpdateLoginProfileRequest's fields from required parameters

#### `UpdateOpenIDConnectProviderThumbprintRequest`

``` purescript
newtype UpdateOpenIDConnectProviderThumbprintRequest
  = UpdateOpenIDConnectProviderThumbprintRequest { "OpenIDConnectProviderArn" :: ArnType', "ThumbprintList" :: ThumbprintListType' }
```

##### Instances
``` purescript
Newtype UpdateOpenIDConnectProviderThumbprintRequest _
Generic UpdateOpenIDConnectProviderThumbprintRequest _
Show UpdateOpenIDConnectProviderThumbprintRequest
Decode UpdateOpenIDConnectProviderThumbprintRequest
Encode UpdateOpenIDConnectProviderThumbprintRequest
```

#### `newUpdateOpenIDConnectProviderThumbprintRequest`

``` purescript
newUpdateOpenIDConnectProviderThumbprintRequest :: ArnType' -> ThumbprintListType' -> UpdateOpenIDConnectProviderThumbprintRequest
```

Constructs UpdateOpenIDConnectProviderThumbprintRequest from required parameters

#### `newUpdateOpenIDConnectProviderThumbprintRequest'`

``` purescript
newUpdateOpenIDConnectProviderThumbprintRequest' :: ArnType' -> ThumbprintListType' -> ({ "OpenIDConnectProviderArn" :: ArnType', "ThumbprintList" :: ThumbprintListType' } -> { "OpenIDConnectProviderArn" :: ArnType', "ThumbprintList" :: ThumbprintListType' }) -> UpdateOpenIDConnectProviderThumbprintRequest
```

Constructs UpdateOpenIDConnectProviderThumbprintRequest's fields from required parameters

#### `UpdateRoleDescriptionRequest`

``` purescript
newtype UpdateRoleDescriptionRequest
  = UpdateRoleDescriptionRequest { "RoleName" :: RoleNameType', "Description" :: RoleDescriptionType' }
```

##### Instances
``` purescript
Newtype UpdateRoleDescriptionRequest _
Generic UpdateRoleDescriptionRequest _
Show UpdateRoleDescriptionRequest
Decode UpdateRoleDescriptionRequest
Encode UpdateRoleDescriptionRequest
```

#### `newUpdateRoleDescriptionRequest`

``` purescript
newUpdateRoleDescriptionRequest :: RoleDescriptionType' -> RoleNameType' -> UpdateRoleDescriptionRequest
```

Constructs UpdateRoleDescriptionRequest from required parameters

#### `newUpdateRoleDescriptionRequest'`

``` purescript
newUpdateRoleDescriptionRequest' :: RoleDescriptionType' -> RoleNameType' -> ({ "RoleName" :: RoleNameType', "Description" :: RoleDescriptionType' } -> { "RoleName" :: RoleNameType', "Description" :: RoleDescriptionType' }) -> UpdateRoleDescriptionRequest
```

Constructs UpdateRoleDescriptionRequest's fields from required parameters

#### `UpdateRoleDescriptionResponse`

``` purescript
newtype UpdateRoleDescriptionResponse
  = UpdateRoleDescriptionResponse { "Role" :: Maybe (Role) }
```

##### Instances
``` purescript
Newtype UpdateRoleDescriptionResponse _
Generic UpdateRoleDescriptionResponse _
Show UpdateRoleDescriptionResponse
Decode UpdateRoleDescriptionResponse
Encode UpdateRoleDescriptionResponse
```

#### `newUpdateRoleDescriptionResponse`

``` purescript
newUpdateRoleDescriptionResponse :: UpdateRoleDescriptionResponse
```

Constructs UpdateRoleDescriptionResponse from required parameters

#### `newUpdateRoleDescriptionResponse'`

``` purescript
newUpdateRoleDescriptionResponse' :: ({ "Role" :: Maybe (Role) } -> { "Role" :: Maybe (Role) }) -> UpdateRoleDescriptionResponse
```

Constructs UpdateRoleDescriptionResponse's fields from required parameters

#### `UpdateSAMLProviderRequest`

``` purescript
newtype UpdateSAMLProviderRequest
  = UpdateSAMLProviderRequest { "SAMLMetadataDocument" :: SAMLMetadataDocumentType, "SAMLProviderArn" :: ArnType' }
```

##### Instances
``` purescript
Newtype UpdateSAMLProviderRequest _
Generic UpdateSAMLProviderRequest _
Show UpdateSAMLProviderRequest
Decode UpdateSAMLProviderRequest
Encode UpdateSAMLProviderRequest
```

#### `newUpdateSAMLProviderRequest`

``` purescript
newUpdateSAMLProviderRequest :: SAMLMetadataDocumentType -> ArnType' -> UpdateSAMLProviderRequest
```

Constructs UpdateSAMLProviderRequest from required parameters

#### `newUpdateSAMLProviderRequest'`

``` purescript
newUpdateSAMLProviderRequest' :: SAMLMetadataDocumentType -> ArnType' -> ({ "SAMLMetadataDocument" :: SAMLMetadataDocumentType, "SAMLProviderArn" :: ArnType' } -> { "SAMLMetadataDocument" :: SAMLMetadataDocumentType, "SAMLProviderArn" :: ArnType' }) -> UpdateSAMLProviderRequest
```

Constructs UpdateSAMLProviderRequest's fields from required parameters

#### `UpdateSAMLProviderResponse`

``` purescript
newtype UpdateSAMLProviderResponse
  = UpdateSAMLProviderResponse { "SAMLProviderArn" :: Maybe (ArnType') }
```

<p>Contains the response to a successful <a>UpdateSAMLProvider</a> request. </p>

##### Instances
``` purescript
Newtype UpdateSAMLProviderResponse _
Generic UpdateSAMLProviderResponse _
Show UpdateSAMLProviderResponse
Decode UpdateSAMLProviderResponse
Encode UpdateSAMLProviderResponse
```

#### `newUpdateSAMLProviderResponse`

``` purescript
newUpdateSAMLProviderResponse :: UpdateSAMLProviderResponse
```

Constructs UpdateSAMLProviderResponse from required parameters

#### `newUpdateSAMLProviderResponse'`

``` purescript
newUpdateSAMLProviderResponse' :: ({ "SAMLProviderArn" :: Maybe (ArnType') } -> { "SAMLProviderArn" :: Maybe (ArnType') }) -> UpdateSAMLProviderResponse
```

Constructs UpdateSAMLProviderResponse's fields from required parameters

#### `UpdateSSHPublicKeyRequest`

``` purescript
newtype UpdateSSHPublicKeyRequest
  = UpdateSSHPublicKeyRequest { "UserName" :: UserNameType', "SSHPublicKeyId" :: PublicKeyIdType', "Status" :: StatusType' }
```

##### Instances
``` purescript
Newtype UpdateSSHPublicKeyRequest _
Generic UpdateSSHPublicKeyRequest _
Show UpdateSSHPublicKeyRequest
Decode UpdateSSHPublicKeyRequest
Encode UpdateSSHPublicKeyRequest
```

#### `newUpdateSSHPublicKeyRequest`

``` purescript
newUpdateSSHPublicKeyRequest :: PublicKeyIdType' -> StatusType' -> UserNameType' -> UpdateSSHPublicKeyRequest
```

Constructs UpdateSSHPublicKeyRequest from required parameters

#### `newUpdateSSHPublicKeyRequest'`

``` purescript
newUpdateSSHPublicKeyRequest' :: PublicKeyIdType' -> StatusType' -> UserNameType' -> ({ "UserName" :: UserNameType', "SSHPublicKeyId" :: PublicKeyIdType', "Status" :: StatusType' } -> { "UserName" :: UserNameType', "SSHPublicKeyId" :: PublicKeyIdType', "Status" :: StatusType' }) -> UpdateSSHPublicKeyRequest
```

Constructs UpdateSSHPublicKeyRequest's fields from required parameters

#### `UpdateServerCertificateRequest`

``` purescript
newtype UpdateServerCertificateRequest
  = UpdateServerCertificateRequest { "ServerCertificateName" :: ServerCertificateNameType', "NewPath" :: Maybe (PathType'), "NewServerCertificateName" :: Maybe (ServerCertificateNameType') }
```

##### Instances
``` purescript
Newtype UpdateServerCertificateRequest _
Generic UpdateServerCertificateRequest _
Show UpdateServerCertificateRequest
Decode UpdateServerCertificateRequest
Encode UpdateServerCertificateRequest
```

#### `newUpdateServerCertificateRequest`

``` purescript
newUpdateServerCertificateRequest :: ServerCertificateNameType' -> UpdateServerCertificateRequest
```

Constructs UpdateServerCertificateRequest from required parameters

#### `newUpdateServerCertificateRequest'`

``` purescript
newUpdateServerCertificateRequest' :: ServerCertificateNameType' -> ({ "ServerCertificateName" :: ServerCertificateNameType', "NewPath" :: Maybe (PathType'), "NewServerCertificateName" :: Maybe (ServerCertificateNameType') } -> { "ServerCertificateName" :: ServerCertificateNameType', "NewPath" :: Maybe (PathType'), "NewServerCertificateName" :: Maybe (ServerCertificateNameType') }) -> UpdateServerCertificateRequest
```

Constructs UpdateServerCertificateRequest's fields from required parameters

#### `UpdateServiceSpecificCredentialRequest`

``` purescript
newtype UpdateServiceSpecificCredentialRequest
  = UpdateServiceSpecificCredentialRequest { "UserName" :: Maybe (UserNameType'), "ServiceSpecificCredentialId" :: ServiceSpecificCredentialId', "Status" :: StatusType' }
```

##### Instances
``` purescript
Newtype UpdateServiceSpecificCredentialRequest _
Generic UpdateServiceSpecificCredentialRequest _
Show UpdateServiceSpecificCredentialRequest
Decode UpdateServiceSpecificCredentialRequest
Encode UpdateServiceSpecificCredentialRequest
```

#### `newUpdateServiceSpecificCredentialRequest`

``` purescript
newUpdateServiceSpecificCredentialRequest :: ServiceSpecificCredentialId' -> StatusType' -> UpdateServiceSpecificCredentialRequest
```

Constructs UpdateServiceSpecificCredentialRequest from required parameters

#### `newUpdateServiceSpecificCredentialRequest'`

``` purescript
newUpdateServiceSpecificCredentialRequest' :: ServiceSpecificCredentialId' -> StatusType' -> ({ "UserName" :: Maybe (UserNameType'), "ServiceSpecificCredentialId" :: ServiceSpecificCredentialId', "Status" :: StatusType' } -> { "UserName" :: Maybe (UserNameType'), "ServiceSpecificCredentialId" :: ServiceSpecificCredentialId', "Status" :: StatusType' }) -> UpdateServiceSpecificCredentialRequest
```

Constructs UpdateServiceSpecificCredentialRequest's fields from required parameters

#### `UpdateSigningCertificateRequest`

``` purescript
newtype UpdateSigningCertificateRequest
  = UpdateSigningCertificateRequest { "UserName" :: Maybe (ExistingUserNameType'), "CertificateId" :: CertificateIdType', "Status" :: StatusType' }
```

##### Instances
``` purescript
Newtype UpdateSigningCertificateRequest _
Generic UpdateSigningCertificateRequest _
Show UpdateSigningCertificateRequest
Decode UpdateSigningCertificateRequest
Encode UpdateSigningCertificateRequest
```

#### `newUpdateSigningCertificateRequest`

``` purescript
newUpdateSigningCertificateRequest :: CertificateIdType' -> StatusType' -> UpdateSigningCertificateRequest
```

Constructs UpdateSigningCertificateRequest from required parameters

#### `newUpdateSigningCertificateRequest'`

``` purescript
newUpdateSigningCertificateRequest' :: CertificateIdType' -> StatusType' -> ({ "UserName" :: Maybe (ExistingUserNameType'), "CertificateId" :: CertificateIdType', "Status" :: StatusType' } -> { "UserName" :: Maybe (ExistingUserNameType'), "CertificateId" :: CertificateIdType', "Status" :: StatusType' }) -> UpdateSigningCertificateRequest
```

Constructs UpdateSigningCertificateRequest's fields from required parameters

#### `UpdateUserRequest`

``` purescript
newtype UpdateUserRequest
  = UpdateUserRequest { "UserName" :: ExistingUserNameType', "NewPath" :: Maybe (PathType'), "NewUserName" :: Maybe (UserNameType') }
```

##### Instances
``` purescript
Newtype UpdateUserRequest _
Generic UpdateUserRequest _
Show UpdateUserRequest
Decode UpdateUserRequest
Encode UpdateUserRequest
```

#### `newUpdateUserRequest`

``` purescript
newUpdateUserRequest :: ExistingUserNameType' -> UpdateUserRequest
```

Constructs UpdateUserRequest from required parameters

#### `newUpdateUserRequest'`

``` purescript
newUpdateUserRequest' :: ExistingUserNameType' -> ({ "UserName" :: ExistingUserNameType', "NewPath" :: Maybe (PathType'), "NewUserName" :: Maybe (UserNameType') } -> { "UserName" :: ExistingUserNameType', "NewPath" :: Maybe (PathType'), "NewUserName" :: Maybe (UserNameType') }) -> UpdateUserRequest
```

Constructs UpdateUserRequest's fields from required parameters

#### `UploadSSHPublicKeyRequest`

``` purescript
newtype UploadSSHPublicKeyRequest
  = UploadSSHPublicKeyRequest { "UserName" :: UserNameType', "SSHPublicKeyBody" :: PublicKeyMaterialType' }
```

##### Instances
``` purescript
Newtype UploadSSHPublicKeyRequest _
Generic UploadSSHPublicKeyRequest _
Show UploadSSHPublicKeyRequest
Decode UploadSSHPublicKeyRequest
Encode UploadSSHPublicKeyRequest
```

#### `newUploadSSHPublicKeyRequest`

``` purescript
newUploadSSHPublicKeyRequest :: PublicKeyMaterialType' -> UserNameType' -> UploadSSHPublicKeyRequest
```

Constructs UploadSSHPublicKeyRequest from required parameters

#### `newUploadSSHPublicKeyRequest'`

``` purescript
newUploadSSHPublicKeyRequest' :: PublicKeyMaterialType' -> UserNameType' -> ({ "UserName" :: UserNameType', "SSHPublicKeyBody" :: PublicKeyMaterialType' } -> { "UserName" :: UserNameType', "SSHPublicKeyBody" :: PublicKeyMaterialType' }) -> UploadSSHPublicKeyRequest
```

Constructs UploadSSHPublicKeyRequest's fields from required parameters

#### `UploadSSHPublicKeyResponse`

``` purescript
newtype UploadSSHPublicKeyResponse
  = UploadSSHPublicKeyResponse { "SSHPublicKey" :: Maybe (SSHPublicKey) }
```

<p>Contains the response to a successful <a>UploadSSHPublicKey</a> request.</p>

##### Instances
``` purescript
Newtype UploadSSHPublicKeyResponse _
Generic UploadSSHPublicKeyResponse _
Show UploadSSHPublicKeyResponse
Decode UploadSSHPublicKeyResponse
Encode UploadSSHPublicKeyResponse
```

#### `newUploadSSHPublicKeyResponse`

``` purescript
newUploadSSHPublicKeyResponse :: UploadSSHPublicKeyResponse
```

Constructs UploadSSHPublicKeyResponse from required parameters

#### `newUploadSSHPublicKeyResponse'`

``` purescript
newUploadSSHPublicKeyResponse' :: ({ "SSHPublicKey" :: Maybe (SSHPublicKey) } -> { "SSHPublicKey" :: Maybe (SSHPublicKey) }) -> UploadSSHPublicKeyResponse
```

Constructs UploadSSHPublicKeyResponse's fields from required parameters

#### `UploadServerCertificateRequest`

``` purescript
newtype UploadServerCertificateRequest
  = UploadServerCertificateRequest { "Path" :: Maybe (PathType'), "ServerCertificateName" :: ServerCertificateNameType', "CertificateBody" :: CertificateBodyType', "PrivateKey" :: PrivateKeyType', "CertificateChain" :: Maybe (CertificateChainType') }
```

##### Instances
``` purescript
Newtype UploadServerCertificateRequest _
Generic UploadServerCertificateRequest _
Show UploadServerCertificateRequest
Decode UploadServerCertificateRequest
Encode UploadServerCertificateRequest
```

#### `newUploadServerCertificateRequest`

``` purescript
newUploadServerCertificateRequest :: CertificateBodyType' -> PrivateKeyType' -> ServerCertificateNameType' -> UploadServerCertificateRequest
```

Constructs UploadServerCertificateRequest from required parameters

#### `newUploadServerCertificateRequest'`

``` purescript
newUploadServerCertificateRequest' :: CertificateBodyType' -> PrivateKeyType' -> ServerCertificateNameType' -> ({ "Path" :: Maybe (PathType'), "ServerCertificateName" :: ServerCertificateNameType', "CertificateBody" :: CertificateBodyType', "PrivateKey" :: PrivateKeyType', "CertificateChain" :: Maybe (CertificateChainType') } -> { "Path" :: Maybe (PathType'), "ServerCertificateName" :: ServerCertificateNameType', "CertificateBody" :: CertificateBodyType', "PrivateKey" :: PrivateKeyType', "CertificateChain" :: Maybe (CertificateChainType') }) -> UploadServerCertificateRequest
```

Constructs UploadServerCertificateRequest's fields from required parameters

#### `UploadServerCertificateResponse`

``` purescript
newtype UploadServerCertificateResponse
  = UploadServerCertificateResponse { "ServerCertificateMetadata" :: Maybe (ServerCertificateMetadata) }
```

<p>Contains the response to a successful <a>UploadServerCertificate</a> request. </p>

##### Instances
``` purescript
Newtype UploadServerCertificateResponse _
Generic UploadServerCertificateResponse _
Show UploadServerCertificateResponse
Decode UploadServerCertificateResponse
Encode UploadServerCertificateResponse
```

#### `newUploadServerCertificateResponse`

``` purescript
newUploadServerCertificateResponse :: UploadServerCertificateResponse
```

Constructs UploadServerCertificateResponse from required parameters

#### `newUploadServerCertificateResponse'`

``` purescript
newUploadServerCertificateResponse' :: ({ "ServerCertificateMetadata" :: Maybe (ServerCertificateMetadata) } -> { "ServerCertificateMetadata" :: Maybe (ServerCertificateMetadata) }) -> UploadServerCertificateResponse
```

Constructs UploadServerCertificateResponse's fields from required parameters

#### `UploadSigningCertificateRequest`

``` purescript
newtype UploadSigningCertificateRequest
  = UploadSigningCertificateRequest { "UserName" :: Maybe (ExistingUserNameType'), "CertificateBody" :: CertificateBodyType' }
```

##### Instances
``` purescript
Newtype UploadSigningCertificateRequest _
Generic UploadSigningCertificateRequest _
Show UploadSigningCertificateRequest
Decode UploadSigningCertificateRequest
Encode UploadSigningCertificateRequest
```

#### `newUploadSigningCertificateRequest`

``` purescript
newUploadSigningCertificateRequest :: CertificateBodyType' -> UploadSigningCertificateRequest
```

Constructs UploadSigningCertificateRequest from required parameters

#### `newUploadSigningCertificateRequest'`

``` purescript
newUploadSigningCertificateRequest' :: CertificateBodyType' -> ({ "UserName" :: Maybe (ExistingUserNameType'), "CertificateBody" :: CertificateBodyType' } -> { "UserName" :: Maybe (ExistingUserNameType'), "CertificateBody" :: CertificateBodyType' }) -> UploadSigningCertificateRequest
```

Constructs UploadSigningCertificateRequest's fields from required parameters

#### `UploadSigningCertificateResponse`

``` purescript
newtype UploadSigningCertificateResponse
  = UploadSigningCertificateResponse { "Certificate" :: SigningCertificate }
```

<p>Contains the response to a successful <a>UploadSigningCertificate</a> request. </p>

##### Instances
``` purescript
Newtype UploadSigningCertificateResponse _
Generic UploadSigningCertificateResponse _
Show UploadSigningCertificateResponse
Decode UploadSigningCertificateResponse
Encode UploadSigningCertificateResponse
```

#### `newUploadSigningCertificateResponse`

``` purescript
newUploadSigningCertificateResponse :: SigningCertificate -> UploadSigningCertificateResponse
```

Constructs UploadSigningCertificateResponse from required parameters

#### `newUploadSigningCertificateResponse'`

``` purescript
newUploadSigningCertificateResponse' :: SigningCertificate -> ({ "Certificate" :: SigningCertificate } -> { "Certificate" :: SigningCertificate }) -> UploadSigningCertificateResponse
```

Constructs UploadSigningCertificateResponse's fields from required parameters

#### `User`

``` purescript
newtype User
  = User { "Path" :: PathType', "UserName" :: UserNameType', "UserId" :: IdType', "Arn" :: ArnType', "CreateDate" :: DateType', "PasswordLastUsed" :: Maybe (DateType') }
```

<p>Contains information about an IAM user entity.</p> <p>This data type is used as a response element in the following actions:</p> <ul> <li> <p> <a>CreateUser</a> </p> </li> <li> <p> <a>GetUser</a> </p> </li> <li> <p> <a>ListUsers</a> </p> </li> </ul>

##### Instances
``` purescript
Newtype User _
Generic User _
Show User
Decode User
Encode User
```

#### `newUser`

``` purescript
newUser :: ArnType' -> DateType' -> PathType' -> IdType' -> UserNameType' -> User
```

Constructs User from required parameters

#### `newUser'`

``` purescript
newUser' :: ArnType' -> DateType' -> PathType' -> IdType' -> UserNameType' -> ({ "Path" :: PathType', "UserName" :: UserNameType', "UserId" :: IdType', "Arn" :: ArnType', "CreateDate" :: DateType', "PasswordLastUsed" :: Maybe (DateType') } -> { "Path" :: PathType', "UserName" :: UserNameType', "UserId" :: IdType', "Arn" :: ArnType', "CreateDate" :: DateType', "PasswordLastUsed" :: Maybe (DateType') }) -> User
```

Constructs User's fields from required parameters

#### `UserDetail`

``` purescript
newtype UserDetail
  = UserDetail { "Path" :: Maybe (PathType'), "UserName" :: Maybe (UserNameType'), "UserId" :: Maybe (IdType'), "Arn" :: Maybe (ArnType'), "CreateDate" :: Maybe (DateType'), "UserPolicyList" :: Maybe (PolicyDetailListType'), "GroupList" :: Maybe (GroupNameListType'), "AttachedManagedPolicies" :: Maybe (AttachedPoliciesListType') }
```

<p>Contains information about an IAM user, including all the user's policies and all the IAM groups the user is in.</p> <p>This data type is used as a response element in the <a>GetAccountAuthorizationDetails</a> action.</p>

##### Instances
``` purescript
Newtype UserDetail _
Generic UserDetail _
Show UserDetail
Decode UserDetail
Encode UserDetail
```

#### `newUserDetail`

``` purescript
newUserDetail :: UserDetail
```

Constructs UserDetail from required parameters

#### `newUserDetail'`

``` purescript
newUserDetail' :: ({ "Path" :: Maybe (PathType'), "UserName" :: Maybe (UserNameType'), "UserId" :: Maybe (IdType'), "Arn" :: Maybe (ArnType'), "CreateDate" :: Maybe (DateType'), "UserPolicyList" :: Maybe (PolicyDetailListType'), "GroupList" :: Maybe (GroupNameListType'), "AttachedManagedPolicies" :: Maybe (AttachedPoliciesListType') } -> { "Path" :: Maybe (PathType'), "UserName" :: Maybe (UserNameType'), "UserId" :: Maybe (IdType'), "Arn" :: Maybe (ArnType'), "CreateDate" :: Maybe (DateType'), "UserPolicyList" :: Maybe (PolicyDetailListType'), "GroupList" :: Maybe (GroupNameListType'), "AttachedManagedPolicies" :: Maybe (AttachedPoliciesListType') }) -> UserDetail
```

Constructs UserDetail's fields from required parameters

#### `VirtualMFADevice`

``` purescript
newtype VirtualMFADevice
  = VirtualMFADevice { "SerialNumber" :: SerialNumberType', "Base32StringSeed" :: Maybe (BootstrapDatum), "QRCodePNG" :: Maybe (BootstrapDatum), "User" :: Maybe (User), "EnableDate" :: Maybe (DateType') }
```

<p>Contains information about a virtual MFA device.</p>

##### Instances
``` purescript
Newtype VirtualMFADevice _
Generic VirtualMFADevice _
Show VirtualMFADevice
Decode VirtualMFADevice
Encode VirtualMFADevice
```

#### `newVirtualMFADevice`

``` purescript
newVirtualMFADevice :: SerialNumberType' -> VirtualMFADevice
```

Constructs VirtualMFADevice from required parameters

#### `newVirtualMFADevice'`

``` purescript
newVirtualMFADevice' :: SerialNumberType' -> ({ "SerialNumber" :: SerialNumberType', "Base32StringSeed" :: Maybe (BootstrapDatum), "QRCodePNG" :: Maybe (BootstrapDatum), "User" :: Maybe (User), "EnableDate" :: Maybe (DateType') } -> { "SerialNumber" :: SerialNumberType', "Base32StringSeed" :: Maybe (BootstrapDatum), "QRCodePNG" :: Maybe (BootstrapDatum), "User" :: Maybe (User), "EnableDate" :: Maybe (DateType') }) -> VirtualMFADevice
```

Constructs VirtualMFADevice's fields from required parameters

#### `AccessKeyIdType'`

``` purescript
newtype AccessKeyIdType'
  = AccessKeyIdType' String
```

##### Instances
``` purescript
Newtype AccessKeyIdType' _
Generic AccessKeyIdType' _
Show AccessKeyIdType'
Decode AccessKeyIdType'
Encode AccessKeyIdType'
```

#### `AccessKeyMetadataListType'`

``` purescript
newtype AccessKeyMetadataListType'
  = AccessKeyMetadataListType' (Array AccessKeyMetadata)
```

<p>Contains a list of access key metadata.</p> <p>This data type is used as a response element in the <a>ListAccessKeys</a> action.</p>

##### Instances
``` purescript
Newtype AccessKeyMetadataListType' _
Generic AccessKeyMetadataListType' _
Show AccessKeyMetadataListType'
Decode AccessKeyMetadataListType'
Encode AccessKeyMetadataListType'
```

#### `AccessKeySecretType'`

``` purescript
newtype AccessKeySecretType'
  = AccessKeySecretType' String
```

##### Instances
``` purescript
Newtype AccessKeySecretType' _
Generic AccessKeySecretType' _
Show AccessKeySecretType'
Decode AccessKeySecretType'
Encode AccessKeySecretType'
```

#### `AccountAliasListType'`

``` purescript
newtype AccountAliasListType'
  = AccountAliasListType' (Array AccountAliasType')
```

##### Instances
``` purescript
Newtype AccountAliasListType' _
Generic AccountAliasListType' _
Show AccountAliasListType'
Decode AccountAliasListType'
Encode AccountAliasListType'
```

#### `AccountAliasType'`

``` purescript
newtype AccountAliasType'
  = AccountAliasType' String
```

##### Instances
``` purescript
Newtype AccountAliasType' _
Generic AccountAliasType' _
Show AccountAliasType'
Decode AccountAliasType'
Encode AccountAliasType'
```

#### `ArnType'`

``` purescript
newtype ArnType'
  = ArnType' String
```

<p>The Amazon Resource Name (ARN). ARNs are unique identifiers for AWS resources.</p> <p>For more information about ARNs, go to <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>. </p>

##### Instances
``` purescript
Newtype ArnType' _
Generic ArnType' _
Show ArnType'
Decode ArnType'
Encode ArnType'
```

#### `AssignmentStatusType'`

``` purescript
newtype AssignmentStatusType'
  = AssignmentStatusType' String
```

##### Instances
``` purescript
Newtype AssignmentStatusType' _
Generic AssignmentStatusType' _
Show AssignmentStatusType'
Decode AssignmentStatusType'
Encode AssignmentStatusType'
```

#### `AttachedPoliciesListType'`

``` purescript
newtype AttachedPoliciesListType'
  = AttachedPoliciesListType' (Array AttachedPolicy)
```

##### Instances
``` purescript
Newtype AttachedPoliciesListType' _
Generic AttachedPoliciesListType' _
Show AttachedPoliciesListType'
Decode AttachedPoliciesListType'
Encode AttachedPoliciesListType'
```

#### `AttachmentCountType'`

``` purescript
newtype AttachmentCountType'
  = AttachmentCountType' Int
```

##### Instances
``` purescript
Newtype AttachmentCountType' _
Generic AttachmentCountType' _
Show AttachmentCountType'
Decode AttachmentCountType'
Encode AttachmentCountType'
```

#### `AuthenticationCodeType'`

``` purescript
newtype AuthenticationCodeType'
  = AuthenticationCodeType' String
```

##### Instances
``` purescript
Newtype AuthenticationCodeType' _
Generic AuthenticationCodeType' _
Show AuthenticationCodeType'
Decode AuthenticationCodeType'
Encode AuthenticationCodeType'
```

#### `BooleanObjectType'`

``` purescript
newtype BooleanObjectType'
  = BooleanObjectType' Boolean
```

##### Instances
``` purescript
Newtype BooleanObjectType' _
Generic BooleanObjectType' _
Show BooleanObjectType'
Decode BooleanObjectType'
Encode BooleanObjectType'
```

#### `BooleanType'`

``` purescript
newtype BooleanType'
  = BooleanType' Boolean
```

##### Instances
``` purescript
Newtype BooleanType' _
Generic BooleanType' _
Show BooleanType'
Decode BooleanType'
Encode BooleanType'
```

#### `CertificateBodyType'`

``` purescript
newtype CertificateBodyType'
  = CertificateBodyType' String
```

##### Instances
``` purescript
Newtype CertificateBodyType' _
Generic CertificateBodyType' _
Show CertificateBodyType'
Decode CertificateBodyType'
Encode CertificateBodyType'
```

#### `CertificateChainType'`

``` purescript
newtype CertificateChainType'
  = CertificateChainType' String
```

##### Instances
``` purescript
Newtype CertificateChainType' _
Generic CertificateChainType' _
Show CertificateChainType'
Decode CertificateChainType'
Encode CertificateChainType'
```

#### `CertificateIdType'`

``` purescript
newtype CertificateIdType'
  = CertificateIdType' String
```

##### Instances
``` purescript
Newtype CertificateIdType' _
Generic CertificateIdType' _
Show CertificateIdType'
Decode CertificateIdType'
Encode CertificateIdType'
```

#### `CertificateListType'`

``` purescript
newtype CertificateListType'
  = CertificateListType' (Array SigningCertificate)
```

<p>Contains a list of signing certificates.</p> <p>This data type is used as a response element in the <a>ListSigningCertificates</a> action.</p>

##### Instances
``` purescript
Newtype CertificateListType' _
Generic CertificateListType' _
Show CertificateListType'
Decode CertificateListType'
Encode CertificateListType'
```

#### `ClientIDListType'`

``` purescript
newtype ClientIDListType'
  = ClientIDListType' (Array ClientIDType')
```

##### Instances
``` purescript
Newtype ClientIDListType' _
Generic ClientIDListType' _
Show ClientIDListType'
Decode ClientIDListType'
Encode ClientIDListType'
```

#### `ClientIDType'`

``` purescript
newtype ClientIDType'
  = ClientIDType' String
```

##### Instances
``` purescript
Newtype ClientIDType' _
Generic ClientIDType' _
Show ClientIDType'
Decode ClientIDType'
Encode ClientIDType'
```

#### `CredentialReportExpiredExceptionMessage'`

``` purescript
newtype CredentialReportExpiredExceptionMessage'
  = CredentialReportExpiredExceptionMessage' String
```

##### Instances
``` purescript
Newtype CredentialReportExpiredExceptionMessage' _
Generic CredentialReportExpiredExceptionMessage' _
Show CredentialReportExpiredExceptionMessage'
Decode CredentialReportExpiredExceptionMessage'
Encode CredentialReportExpiredExceptionMessage'
```

#### `CredentialReportNotPresentExceptionMessage'`

``` purescript
newtype CredentialReportNotPresentExceptionMessage'
  = CredentialReportNotPresentExceptionMessage' String
```

##### Instances
``` purescript
Newtype CredentialReportNotPresentExceptionMessage' _
Generic CredentialReportNotPresentExceptionMessage' _
Show CredentialReportNotPresentExceptionMessage'
Decode CredentialReportNotPresentExceptionMessage'
Encode CredentialReportNotPresentExceptionMessage'
```

#### `CredentialReportNotReadyExceptionMessage'`

``` purescript
newtype CredentialReportNotReadyExceptionMessage'
  = CredentialReportNotReadyExceptionMessage' String
```

##### Instances
``` purescript
Newtype CredentialReportNotReadyExceptionMessage' _
Generic CredentialReportNotReadyExceptionMessage' _
Show CredentialReportNotReadyExceptionMessage'
Decode CredentialReportNotReadyExceptionMessage'
Encode CredentialReportNotReadyExceptionMessage'
```

#### `CustomSuffixType'`

``` purescript
newtype CustomSuffixType'
  = CustomSuffixType' String
```

##### Instances
``` purescript
Newtype CustomSuffixType' _
Generic CustomSuffixType' _
Show CustomSuffixType'
Decode CustomSuffixType'
Encode CustomSuffixType'
```

#### `DateType'`

``` purescript
newtype DateType'
  = DateType' Timestamp
```

##### Instances
``` purescript
Newtype DateType' _
Generic DateType' _
Show DateType'
Decode DateType'
Encode DateType'
```

#### `DeleteConflictMessage'`

``` purescript
newtype DeleteConflictMessage'
  = DeleteConflictMessage' String
```

##### Instances
``` purescript
Newtype DeleteConflictMessage' _
Generic DeleteConflictMessage' _
Show DeleteConflictMessage'
Decode DeleteConflictMessage'
Encode DeleteConflictMessage'
```

#### `DuplicateCertificateMessage'`

``` purescript
newtype DuplicateCertificateMessage'
  = DuplicateCertificateMessage' String
```

##### Instances
``` purescript
Newtype DuplicateCertificateMessage' _
Generic DuplicateCertificateMessage' _
Show DuplicateCertificateMessage'
Decode DuplicateCertificateMessage'
Encode DuplicateCertificateMessage'
```

#### `DuplicateSSHPublicKeyMessage'`

``` purescript
newtype DuplicateSSHPublicKeyMessage'
  = DuplicateSSHPublicKeyMessage' String
```

##### Instances
``` purescript
Newtype DuplicateSSHPublicKeyMessage' _
Generic DuplicateSSHPublicKeyMessage' _
Show DuplicateSSHPublicKeyMessage'
Decode DuplicateSSHPublicKeyMessage'
Encode DuplicateSSHPublicKeyMessage'
```

#### `EncodingType'`

``` purescript
newtype EncodingType'
  = EncodingType' String
```

##### Instances
``` purescript
Newtype EncodingType' _
Generic EncodingType' _
Show EncodingType'
Decode EncodingType'
Encode EncodingType'
```

#### `EntityAlreadyExistsMessage'`

``` purescript
newtype EntityAlreadyExistsMessage'
  = EntityAlreadyExistsMessage' String
```

##### Instances
``` purescript
Newtype EntityAlreadyExistsMessage' _
Generic EntityAlreadyExistsMessage' _
Show EntityAlreadyExistsMessage'
Decode EntityAlreadyExistsMessage'
Encode EntityAlreadyExistsMessage'
```

#### `EntityListType'`

``` purescript
newtype EntityListType'
  = EntityListType' (Array EntityType)
```

##### Instances
``` purescript
Newtype EntityListType' _
Generic EntityListType' _
Show EntityListType'
Decode EntityListType'
Encode EntityListType'
```

#### `EntityTemporarilyUnmodifiableMessage'`

``` purescript
newtype EntityTemporarilyUnmodifiableMessage'
  = EntityTemporarilyUnmodifiableMessage' String
```

##### Instances
``` purescript
Newtype EntityTemporarilyUnmodifiableMessage' _
Generic EntityTemporarilyUnmodifiableMessage' _
Show EntityTemporarilyUnmodifiableMessage'
Decode EntityTemporarilyUnmodifiableMessage'
Encode EntityTemporarilyUnmodifiableMessage'
```

#### `ExistingUserNameType'`

``` purescript
newtype ExistingUserNameType'
  = ExistingUserNameType' String
```

##### Instances
``` purescript
Newtype ExistingUserNameType' _
Generic ExistingUserNameType' _
Show ExistingUserNameType'
Decode ExistingUserNameType'
Encode ExistingUserNameType'
```

#### `GroupDetailListType'`

``` purescript
newtype GroupDetailListType'
  = GroupDetailListType' (Array GroupDetail)
```

##### Instances
``` purescript
Newtype GroupDetailListType' _
Generic GroupDetailListType' _
Show GroupDetailListType'
Decode GroupDetailListType'
Encode GroupDetailListType'
```

#### `GroupListType'`

``` purescript
newtype GroupListType'
  = GroupListType' (Array Group)
```

<p>Contains a list of IAM groups.</p> <p>This data type is used as a response element in the <a>ListGroups</a> action.</p>

##### Instances
``` purescript
Newtype GroupListType' _
Generic GroupListType' _
Show GroupListType'
Decode GroupListType'
Encode GroupListType'
```

#### `GroupNameListType'`

``` purescript
newtype GroupNameListType'
  = GroupNameListType' (Array GroupNameType')
```

##### Instances
``` purescript
Newtype GroupNameListType' _
Generic GroupNameListType' _
Show GroupNameListType'
Decode GroupNameListType'
Encode GroupNameListType'
```

#### `GroupNameType'`

``` purescript
newtype GroupNameType'
  = GroupNameType' String
```

##### Instances
``` purescript
Newtype GroupNameType' _
Generic GroupNameType' _
Show GroupNameType'
Decode GroupNameType'
Encode GroupNameType'
```

#### `IdType'`

``` purescript
newtype IdType'
  = IdType' String
```

##### Instances
``` purescript
Newtype IdType' _
Generic IdType' _
Show IdType'
Decode IdType'
Encode IdType'
```

#### `InstanceProfileListType'`

``` purescript
newtype InstanceProfileListType'
  = InstanceProfileListType' (Array InstanceProfile)
```

<p>Contains a list of instance profiles.</p>

##### Instances
``` purescript
Newtype InstanceProfileListType' _
Generic InstanceProfileListType' _
Show InstanceProfileListType'
Decode InstanceProfileListType'
Encode InstanceProfileListType'
```

#### `InstanceProfileNameType'`

``` purescript
newtype InstanceProfileNameType'
  = InstanceProfileNameType' String
```

##### Instances
``` purescript
Newtype InstanceProfileNameType' _
Generic InstanceProfileNameType' _
Show InstanceProfileNameType'
Decode InstanceProfileNameType'
Encode InstanceProfileNameType'
```

#### `InvalidAuthenticationCodeMessage'`

``` purescript
newtype InvalidAuthenticationCodeMessage'
  = InvalidAuthenticationCodeMessage' String
```

##### Instances
``` purescript
Newtype InvalidAuthenticationCodeMessage' _
Generic InvalidAuthenticationCodeMessage' _
Show InvalidAuthenticationCodeMessage'
Decode InvalidAuthenticationCodeMessage'
Encode InvalidAuthenticationCodeMessage'
```

#### `InvalidCertificateMessage'`

``` purescript
newtype InvalidCertificateMessage'
  = InvalidCertificateMessage' String
```

##### Instances
``` purescript
Newtype InvalidCertificateMessage' _
Generic InvalidCertificateMessage' _
Show InvalidCertificateMessage'
Decode InvalidCertificateMessage'
Encode InvalidCertificateMessage'
```

#### `InvalidInputMessage'`

``` purescript
newtype InvalidInputMessage'
  = InvalidInputMessage' String
```

##### Instances
``` purescript
Newtype InvalidInputMessage' _
Generic InvalidInputMessage' _
Show InvalidInputMessage'
Decode InvalidInputMessage'
Encode InvalidInputMessage'
```

#### `InvalidPublicKeyMessage'`

``` purescript
newtype InvalidPublicKeyMessage'
  = InvalidPublicKeyMessage' String
```

##### Instances
``` purescript
Newtype InvalidPublicKeyMessage' _
Generic InvalidPublicKeyMessage' _
Show InvalidPublicKeyMessage'
Decode InvalidPublicKeyMessage'
Encode InvalidPublicKeyMessage'
```

#### `InvalidUserTypeMessage'`

``` purescript
newtype InvalidUserTypeMessage'
  = InvalidUserTypeMessage' String
```

##### Instances
``` purescript
Newtype InvalidUserTypeMessage' _
Generic InvalidUserTypeMessage' _
Show InvalidUserTypeMessage'
Decode InvalidUserTypeMessage'
Encode InvalidUserTypeMessage'
```

#### `KeyPairMismatchMessage'`

``` purescript
newtype KeyPairMismatchMessage'
  = KeyPairMismatchMessage' String
```

##### Instances
``` purescript
Newtype KeyPairMismatchMessage' _
Generic KeyPairMismatchMessage' _
Show KeyPairMismatchMessage'
Decode KeyPairMismatchMessage'
Encode KeyPairMismatchMessage'
```

#### `LimitExceededMessage'`

``` purescript
newtype LimitExceededMessage'
  = LimitExceededMessage' String
```

##### Instances
``` purescript
Newtype LimitExceededMessage' _
Generic LimitExceededMessage' _
Show LimitExceededMessage'
Decode LimitExceededMessage'
Encode LimitExceededMessage'
```

#### `MalformedCertificateMessage'`

``` purescript
newtype MalformedCertificateMessage'
  = MalformedCertificateMessage' String
```

##### Instances
``` purescript
Newtype MalformedCertificateMessage' _
Generic MalformedCertificateMessage' _
Show MalformedCertificateMessage'
Decode MalformedCertificateMessage'
Encode MalformedCertificateMessage'
```

#### `MalformedPolicyDocumentMessage'`

``` purescript
newtype MalformedPolicyDocumentMessage'
  = MalformedPolicyDocumentMessage' String
```

##### Instances
``` purescript
Newtype MalformedPolicyDocumentMessage' _
Generic MalformedPolicyDocumentMessage' _
Show MalformedPolicyDocumentMessage'
Decode MalformedPolicyDocumentMessage'
Encode MalformedPolicyDocumentMessage'
```

#### `MarkerType'`

``` purescript
newtype MarkerType'
  = MarkerType' String
```

##### Instances
``` purescript
Newtype MarkerType' _
Generic MarkerType' _
Show MarkerType'
Decode MarkerType'
Encode MarkerType'
```

#### `MaxItemsType'`

``` purescript
newtype MaxItemsType'
  = MaxItemsType' Int
```

##### Instances
``` purescript
Newtype MaxItemsType' _
Generic MaxItemsType' _
Show MaxItemsType'
Decode MaxItemsType'
Encode MaxItemsType'
```

#### `MaxPasswordAgeType'`

``` purescript
newtype MaxPasswordAgeType'
  = MaxPasswordAgeType' Int
```

##### Instances
``` purescript
Newtype MaxPasswordAgeType' _
Generic MaxPasswordAgeType' _
Show MaxPasswordAgeType'
Decode MaxPasswordAgeType'
Encode MaxPasswordAgeType'
```

#### `MfaDeviceListType'`

``` purescript
newtype MfaDeviceListType'
  = MfaDeviceListType' (Array MFADevice)
```

<p>Contains a list of MFA devices.</p> <p>This data type is used as a response element in the <a>ListMFADevices</a> and <a>ListVirtualMFADevices</a> actions. </p>

##### Instances
``` purescript
Newtype MfaDeviceListType' _
Generic MfaDeviceListType' _
Show MfaDeviceListType'
Decode MfaDeviceListType'
Encode MfaDeviceListType'
```

#### `MinimumPasswordLengthType'`

``` purescript
newtype MinimumPasswordLengthType'
  = MinimumPasswordLengthType' Int
```

##### Instances
``` purescript
Newtype MinimumPasswordLengthType' _
Generic MinimumPasswordLengthType' _
Show MinimumPasswordLengthType'
Decode MinimumPasswordLengthType'
Encode MinimumPasswordLengthType'
```

#### `NoSuchEntityMessage'`

``` purescript
newtype NoSuchEntityMessage'
  = NoSuchEntityMessage' String
```

##### Instances
``` purescript
Newtype NoSuchEntityMessage' _
Generic NoSuchEntityMessage' _
Show NoSuchEntityMessage'
Decode NoSuchEntityMessage'
Encode NoSuchEntityMessage'
```

#### `PasswordPolicyViolationMessage'`

``` purescript
newtype PasswordPolicyViolationMessage'
  = PasswordPolicyViolationMessage' String
```

##### Instances
``` purescript
Newtype PasswordPolicyViolationMessage' _
Generic PasswordPolicyViolationMessage' _
Show PasswordPolicyViolationMessage'
Decode PasswordPolicyViolationMessage'
Encode PasswordPolicyViolationMessage'
```

#### `PasswordReusePreventionType'`

``` purescript
newtype PasswordReusePreventionType'
  = PasswordReusePreventionType' Int
```

##### Instances
``` purescript
Newtype PasswordReusePreventionType' _
Generic PasswordReusePreventionType' _
Show PasswordReusePreventionType'
Decode PasswordReusePreventionType'
Encode PasswordReusePreventionType'
```

#### `PasswordType'`

``` purescript
newtype PasswordType'
  = PasswordType' String
```

##### Instances
``` purescript
Newtype PasswordType' _
Generic PasswordType' _
Show PasswordType'
Decode PasswordType'
Encode PasswordType'
```

#### `PathPrefixType'`

``` purescript
newtype PathPrefixType'
  = PathPrefixType' String
```

##### Instances
``` purescript
Newtype PathPrefixType' _
Generic PathPrefixType' _
Show PathPrefixType'
Decode PathPrefixType'
Encode PathPrefixType'
```

#### `PathType'`

``` purescript
newtype PathType'
  = PathType' String
```

##### Instances
``` purescript
Newtype PathType' _
Generic PathType' _
Show PathType'
Decode PathType'
Encode PathType'
```

#### `PolicyDescriptionType'`

``` purescript
newtype PolicyDescriptionType'
  = PolicyDescriptionType' String
```

##### Instances
``` purescript
Newtype PolicyDescriptionType' _
Generic PolicyDescriptionType' _
Show PolicyDescriptionType'
Decode PolicyDescriptionType'
Encode PolicyDescriptionType'
```

#### `PolicyDetailListType'`

``` purescript
newtype PolicyDetailListType'
  = PolicyDetailListType' (Array PolicyDetail)
```

##### Instances
``` purescript
Newtype PolicyDetailListType' _
Generic PolicyDetailListType' _
Show PolicyDetailListType'
Decode PolicyDetailListType'
Encode PolicyDetailListType'
```

#### `PolicyDocumentType'`

``` purescript
newtype PolicyDocumentType'
  = PolicyDocumentType' String
```

##### Instances
``` purescript
Newtype PolicyDocumentType' _
Generic PolicyDocumentType' _
Show PolicyDocumentType'
Decode PolicyDocumentType'
Encode PolicyDocumentType'
```

#### `PolicyDocumentVersionListType'`

``` purescript
newtype PolicyDocumentVersionListType'
  = PolicyDocumentVersionListType' (Array PolicyVersion)
```

##### Instances
``` purescript
Newtype PolicyDocumentVersionListType' _
Generic PolicyDocumentVersionListType' _
Show PolicyDocumentVersionListType'
Decode PolicyDocumentVersionListType'
Encode PolicyDocumentVersionListType'
```

#### `PolicyEvaluationErrorMessage'`

``` purescript
newtype PolicyEvaluationErrorMessage'
  = PolicyEvaluationErrorMessage' String
```

##### Instances
``` purescript
Newtype PolicyEvaluationErrorMessage' _
Generic PolicyEvaluationErrorMessage' _
Show PolicyEvaluationErrorMessage'
Decode PolicyEvaluationErrorMessage'
Encode PolicyEvaluationErrorMessage'
```

#### `PolicyListType'`

``` purescript
newtype PolicyListType'
  = PolicyListType' (Array Policy)
```

##### Instances
``` purescript
Newtype PolicyListType' _
Generic PolicyListType' _
Show PolicyListType'
Decode PolicyListType'
Encode PolicyListType'
```

#### `PolicyNameListType'`

``` purescript
newtype PolicyNameListType'
  = PolicyNameListType' (Array PolicyNameType')
```

<p>Contains a list of policy names.</p> <p>This data type is used as a response element in the <a>ListPolicies</a> action.</p>

##### Instances
``` purescript
Newtype PolicyNameListType' _
Generic PolicyNameListType' _
Show PolicyNameListType'
Decode PolicyNameListType'
Encode PolicyNameListType'
```

#### `PolicyNameType'`

``` purescript
newtype PolicyNameType'
  = PolicyNameType' String
```

##### Instances
``` purescript
Newtype PolicyNameType' _
Generic PolicyNameType' _
Show PolicyNameType'
Decode PolicyNameType'
Encode PolicyNameType'
```

#### `PolicyNotAttachableMessage'`

``` purescript
newtype PolicyNotAttachableMessage'
  = PolicyNotAttachableMessage' String
```

##### Instances
``` purescript
Newtype PolicyNotAttachableMessage' _
Generic PolicyNotAttachableMessage' _
Show PolicyNotAttachableMessage'
Decode PolicyNotAttachableMessage'
Encode PolicyNotAttachableMessage'
```

#### `PolicyPathType'`

``` purescript
newtype PolicyPathType'
  = PolicyPathType' String
```

##### Instances
``` purescript
Newtype PolicyPathType' _
Generic PolicyPathType' _
Show PolicyPathType'
Decode PolicyPathType'
Encode PolicyPathType'
```

#### `PolicyScopeType'`

``` purescript
newtype PolicyScopeType'
  = PolicyScopeType' String
```

##### Instances
``` purescript
Newtype PolicyScopeType' _
Generic PolicyScopeType' _
Show PolicyScopeType'
Decode PolicyScopeType'
Encode PolicyScopeType'
```

#### `PolicyVersionIdType'`

``` purescript
newtype PolicyVersionIdType'
  = PolicyVersionIdType' String
```

##### Instances
``` purescript
Newtype PolicyVersionIdType' _
Generic PolicyVersionIdType' _
Show PolicyVersionIdType'
Decode PolicyVersionIdType'
Encode PolicyVersionIdType'
```

#### `PrivateKeyType'`

``` purescript
newtype PrivateKeyType'
  = PrivateKeyType' String
```

##### Instances
``` purescript
Newtype PrivateKeyType' _
Generic PrivateKeyType' _
Show PrivateKeyType'
Decode PrivateKeyType'
Encode PrivateKeyType'
```

#### `PublicKeyFingerprintType'`

``` purescript
newtype PublicKeyFingerprintType'
  = PublicKeyFingerprintType' String
```

##### Instances
``` purescript
Newtype PublicKeyFingerprintType' _
Generic PublicKeyFingerprintType' _
Show PublicKeyFingerprintType'
Decode PublicKeyFingerprintType'
Encode PublicKeyFingerprintType'
```

#### `PublicKeyIdType'`

``` purescript
newtype PublicKeyIdType'
  = PublicKeyIdType' String
```

##### Instances
``` purescript
Newtype PublicKeyIdType' _
Generic PublicKeyIdType' _
Show PublicKeyIdType'
Decode PublicKeyIdType'
Encode PublicKeyIdType'
```

#### `PublicKeyMaterialType'`

``` purescript
newtype PublicKeyMaterialType'
  = PublicKeyMaterialType' String
```

##### Instances
``` purescript
Newtype PublicKeyMaterialType' _
Generic PublicKeyMaterialType' _
Show PublicKeyMaterialType'
Decode PublicKeyMaterialType'
Encode PublicKeyMaterialType'
```

#### `RoleDescriptionType'`

``` purescript
newtype RoleDescriptionType'
  = RoleDescriptionType' String
```

##### Instances
``` purescript
Newtype RoleDescriptionType' _
Generic RoleDescriptionType' _
Show RoleDescriptionType'
Decode RoleDescriptionType'
Encode RoleDescriptionType'
```

#### `RoleDetailListType'`

``` purescript
newtype RoleDetailListType'
  = RoleDetailListType' (Array RoleDetail)
```

##### Instances
``` purescript
Newtype RoleDetailListType' _
Generic RoleDetailListType' _
Show RoleDetailListType'
Decode RoleDetailListType'
Encode RoleDetailListType'
```

#### `RoleListType'`

``` purescript
newtype RoleListType'
  = RoleListType' (Array Role)
```

<p>Contains a list of IAM roles.</p> <p>This data type is used as a response element in the <a>ListRoles</a> action.</p>

##### Instances
``` purescript
Newtype RoleListType' _
Generic RoleListType' _
Show RoleListType'
Decode RoleListType'
Encode RoleListType'
```

#### `RoleNameType'`

``` purescript
newtype RoleNameType'
  = RoleNameType' String
```

##### Instances
``` purescript
Newtype RoleNameType' _
Generic RoleNameType' _
Show RoleNameType'
Decode RoleNameType'
Encode RoleNameType'
```

#### `SerialNumberType'`

``` purescript
newtype SerialNumberType'
  = SerialNumberType' String
```

##### Instances
``` purescript
Newtype SerialNumberType' _
Generic SerialNumberType' _
Show SerialNumberType'
Decode SerialNumberType'
Encode SerialNumberType'
```

#### `ServerCertificateMetadataListType'`

``` purescript
newtype ServerCertificateMetadataListType'
  = ServerCertificateMetadataListType' (Array ServerCertificateMetadata)
```

##### Instances
``` purescript
Newtype ServerCertificateMetadataListType' _
Generic ServerCertificateMetadataListType' _
Show ServerCertificateMetadataListType'
Decode ServerCertificateMetadataListType'
Encode ServerCertificateMetadataListType'
```

#### `ServerCertificateNameType'`

``` purescript
newtype ServerCertificateNameType'
  = ServerCertificateNameType' String
```

##### Instances
``` purescript
Newtype ServerCertificateNameType' _
Generic ServerCertificateNameType' _
Show ServerCertificateNameType'
Decode ServerCertificateNameType'
Encode ServerCertificateNameType'
```

#### `ServiceFailureExceptionMessage'`

``` purescript
newtype ServiceFailureExceptionMessage'
  = ServiceFailureExceptionMessage' String
```

##### Instances
``` purescript
Newtype ServiceFailureExceptionMessage' _
Generic ServiceFailureExceptionMessage' _
Show ServiceFailureExceptionMessage'
Decode ServiceFailureExceptionMessage'
Encode ServiceFailureExceptionMessage'
```

#### `ServiceName'`

``` purescript
newtype ServiceName'
  = ServiceName' String
```

##### Instances
``` purescript
Newtype ServiceName' _
Generic ServiceName' _
Show ServiceName'
Decode ServiceName'
Encode ServiceName'
```

#### `ServiceNotSupportedMessage'`

``` purescript
newtype ServiceNotSupportedMessage'
  = ServiceNotSupportedMessage' String
```

##### Instances
``` purescript
Newtype ServiceNotSupportedMessage' _
Generic ServiceNotSupportedMessage' _
Show ServiceNotSupportedMessage'
Decode ServiceNotSupportedMessage'
Encode ServiceNotSupportedMessage'
```

#### `ServicePassword'`

``` purescript
newtype ServicePassword'
  = ServicePassword' String
```

##### Instances
``` purescript
Newtype ServicePassword' _
Generic ServicePassword' _
Show ServicePassword'
Decode ServicePassword'
Encode ServicePassword'
```

#### `ServiceSpecificCredentialId'`

``` purescript
newtype ServiceSpecificCredentialId'
  = ServiceSpecificCredentialId' String
```

##### Instances
``` purescript
Newtype ServiceSpecificCredentialId' _
Generic ServiceSpecificCredentialId' _
Show ServiceSpecificCredentialId'
Decode ServiceSpecificCredentialId'
Encode ServiceSpecificCredentialId'
```

#### `ServiceUserName'`

``` purescript
newtype ServiceUserName'
  = ServiceUserName' String
```

##### Instances
``` purescript
Newtype ServiceUserName' _
Generic ServiceUserName' _
Show ServiceUserName'
Decode ServiceUserName'
Encode ServiceUserName'
```

#### `StatusType'`

``` purescript
newtype StatusType'
  = StatusType' String
```

##### Instances
``` purescript
Newtype StatusType' _
Generic StatusType' _
Show StatusType'
Decode StatusType'
Encode StatusType'
```

#### `StringType'`

``` purescript
newtype StringType'
  = StringType' String
```

##### Instances
``` purescript
Newtype StringType' _
Generic StringType' _
Show StringType'
Decode StringType'
Encode StringType'
```

#### `SummaryKeyType'`

``` purescript
newtype SummaryKeyType'
  = SummaryKeyType' String
```

##### Instances
``` purescript
Newtype SummaryKeyType' _
Generic SummaryKeyType' _
Show SummaryKeyType'
Decode SummaryKeyType'
Encode SummaryKeyType'
```

#### `SummaryMapType'`

``` purescript
newtype SummaryMapType'
  = SummaryMapType' (StrMap SummaryValueType')
```

##### Instances
``` purescript
Newtype SummaryMapType' _
Generic SummaryMapType' _
Show SummaryMapType'
Decode SummaryMapType'
Encode SummaryMapType'
```

#### `SummaryValueType'`

``` purescript
newtype SummaryValueType'
  = SummaryValueType' Int
```

##### Instances
``` purescript
Newtype SummaryValueType' _
Generic SummaryValueType' _
Show SummaryValueType'
Decode SummaryValueType'
Encode SummaryValueType'
```

#### `ThumbprintListType'`

``` purescript
newtype ThumbprintListType'
  = ThumbprintListType' (Array ThumbprintType')
```

<p>Contains a list of thumbprints of identity provider server certificates.</p>

##### Instances
``` purescript
Newtype ThumbprintListType' _
Generic ThumbprintListType' _
Show ThumbprintListType'
Decode ThumbprintListType'
Encode ThumbprintListType'
```

#### `ThumbprintType'`

``` purescript
newtype ThumbprintType'
  = ThumbprintType' String
```

<p>Contains a thumbprint for an identity provider's server certificate.</p> <p>The identity provider's server certificate thumbprint is the hex-encoded SHA-1 hash value of the self-signed X.509 certificate used by the domain where the OpenID Connect provider makes its keys available. It is always a 40-character string.</p>

##### Instances
``` purescript
Newtype ThumbprintType' _
Generic ThumbprintType' _
Show ThumbprintType'
Decode ThumbprintType'
Encode ThumbprintType'
```

#### `UnmodifiableEntityMessage'`

``` purescript
newtype UnmodifiableEntityMessage'
  = UnmodifiableEntityMessage' String
```

##### Instances
``` purescript
Newtype UnmodifiableEntityMessage' _
Generic UnmodifiableEntityMessage' _
Show UnmodifiableEntityMessage'
Decode UnmodifiableEntityMessage'
Encode UnmodifiableEntityMessage'
```

#### `UnrecognizedPublicKeyEncodingMessage'`

``` purescript
newtype UnrecognizedPublicKeyEncodingMessage'
  = UnrecognizedPublicKeyEncodingMessage' String
```

##### Instances
``` purescript
Newtype UnrecognizedPublicKeyEncodingMessage' _
Generic UnrecognizedPublicKeyEncodingMessage' _
Show UnrecognizedPublicKeyEncodingMessage'
Decode UnrecognizedPublicKeyEncodingMessage'
Encode UnrecognizedPublicKeyEncodingMessage'
```

#### `UserDetailListType'`

``` purescript
newtype UserDetailListType'
  = UserDetailListType' (Array UserDetail)
```

##### Instances
``` purescript
Newtype UserDetailListType' _
Generic UserDetailListType' _
Show UserDetailListType'
Decode UserDetailListType'
Encode UserDetailListType'
```

#### `UserListType'`

``` purescript
newtype UserListType'
  = UserListType' (Array User)
```

<p>Contains a list of users.</p> <p>This data type is used as a response element in the <a>GetGroup</a> and <a>ListUsers</a> actions. </p>

##### Instances
``` purescript
Newtype UserListType' _
Generic UserListType' _
Show UserListType'
Decode UserListType'
Encode UserListType'
```

#### `UserNameType'`

``` purescript
newtype UserNameType'
  = UserNameType' String
```

##### Instances
``` purescript
Newtype UserNameType' _
Generic UserNameType' _
Show UserNameType'
Decode UserNameType'
Encode UserNameType'
```

#### `VirtualMFADeviceListType'`

``` purescript
newtype VirtualMFADeviceListType'
  = VirtualMFADeviceListType' (Array VirtualMFADevice)
```

##### Instances
``` purescript
Newtype VirtualMFADeviceListType' _
Generic VirtualMFADeviceListType' _
Show VirtualMFADeviceListType'
Decode VirtualMFADeviceListType'
Encode VirtualMFADeviceListType'
```

#### `VirtualMFADeviceName'`

``` purescript
newtype VirtualMFADeviceName'
  = VirtualMFADeviceName' String
```

##### Instances
``` purescript
Newtype VirtualMFADeviceName' _
Generic VirtualMFADeviceName' _
Show VirtualMFADeviceName'
Decode VirtualMFADeviceName'
Encode VirtualMFADeviceName'
```


