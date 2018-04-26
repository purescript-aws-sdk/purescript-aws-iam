
module AWS.IAM.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


-- | <p>Contains information about an AWS access key.</p> <p> This data type is used as a response element in the <a>CreateAccessKey</a> and <a>ListAccessKeys</a> actions. </p> <note> <p>The <code>SecretAccessKey</code> value is returned only in response to <a>CreateAccessKey</a>. You can get a secret access key only when you first create an access key; you cannot recover the secret access key later. If you lose a secret access key, you must create a new access key.</p> </note>
newtype AccessKey = AccessKey 
  { "UserName" :: (UserNameType')
  , "AccessKeyId" :: (AccessKeyIdType')
  , "Status" :: (StatusType')
  , "SecretAccessKey" :: (AccessKeySecretType')
  , "CreateDate" :: Maybe (DateType')
  }
derive instance newtypeAccessKey :: Newtype AccessKey _
derive instance repGenericAccessKey :: Generic AccessKey _
instance showAccessKey :: Show AccessKey where show = genericShow
instance decodeAccessKey :: Decode AccessKey where decode = genericDecode options
instance encodeAccessKey :: Encode AccessKey where encode = genericEncode options

-- | Constructs AccessKey from required parameters
newAccessKey :: AccessKeyIdType' -> AccessKeySecretType' -> StatusType' -> UserNameType' -> AccessKey
newAccessKey _AccessKeyId _SecretAccessKey _Status _UserName = AccessKey { "AccessKeyId": _AccessKeyId, "SecretAccessKey": _SecretAccessKey, "Status": _Status, "UserName": _UserName, "CreateDate": Nothing }

-- | Constructs AccessKey's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAccessKey' :: AccessKeyIdType' -> AccessKeySecretType' -> StatusType' -> UserNameType' -> ( { "UserName" :: (UserNameType') , "AccessKeyId" :: (AccessKeyIdType') , "Status" :: (StatusType') , "SecretAccessKey" :: (AccessKeySecretType') , "CreateDate" :: Maybe (DateType') } -> {"UserName" :: (UserNameType') , "AccessKeyId" :: (AccessKeyIdType') , "Status" :: (StatusType') , "SecretAccessKey" :: (AccessKeySecretType') , "CreateDate" :: Maybe (DateType') } ) -> AccessKey
newAccessKey' _AccessKeyId _SecretAccessKey _Status _UserName customize = (AccessKey <<< customize) { "AccessKeyId": _AccessKeyId, "SecretAccessKey": _SecretAccessKey, "Status": _Status, "UserName": _UserName, "CreateDate": Nothing }



-- | <p>Contains information about the last time an AWS access key was used.</p> <p>This data type is used as a response element in the <a>GetAccessKeyLastUsed</a> action.</p>
newtype AccessKeyLastUsed = AccessKeyLastUsed 
  { "LastUsedDate" :: (DateType')
  , "ServiceName" :: (StringType')
  , "Region" :: (StringType')
  }
derive instance newtypeAccessKeyLastUsed :: Newtype AccessKeyLastUsed _
derive instance repGenericAccessKeyLastUsed :: Generic AccessKeyLastUsed _
instance showAccessKeyLastUsed :: Show AccessKeyLastUsed where show = genericShow
instance decodeAccessKeyLastUsed :: Decode AccessKeyLastUsed where decode = genericDecode options
instance encodeAccessKeyLastUsed :: Encode AccessKeyLastUsed where encode = genericEncode options

-- | Constructs AccessKeyLastUsed from required parameters
newAccessKeyLastUsed :: DateType' -> StringType' -> StringType' -> AccessKeyLastUsed
newAccessKeyLastUsed _LastUsedDate _Region _ServiceName = AccessKeyLastUsed { "LastUsedDate": _LastUsedDate, "Region": _Region, "ServiceName": _ServiceName }

-- | Constructs AccessKeyLastUsed's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAccessKeyLastUsed' :: DateType' -> StringType' -> StringType' -> ( { "LastUsedDate" :: (DateType') , "ServiceName" :: (StringType') , "Region" :: (StringType') } -> {"LastUsedDate" :: (DateType') , "ServiceName" :: (StringType') , "Region" :: (StringType') } ) -> AccessKeyLastUsed
newAccessKeyLastUsed' _LastUsedDate _Region _ServiceName customize = (AccessKeyLastUsed <<< customize) { "LastUsedDate": _LastUsedDate, "Region": _Region, "ServiceName": _ServiceName }



-- | <p>Contains information about an AWS access key, without its secret key.</p> <p>This data type is used as a response element in the <a>ListAccessKeys</a> action.</p>
newtype AccessKeyMetadata = AccessKeyMetadata 
  { "UserName" :: Maybe (UserNameType')
  , "AccessKeyId" :: Maybe (AccessKeyIdType')
  , "Status" :: Maybe (StatusType')
  , "CreateDate" :: Maybe (DateType')
  }
derive instance newtypeAccessKeyMetadata :: Newtype AccessKeyMetadata _
derive instance repGenericAccessKeyMetadata :: Generic AccessKeyMetadata _
instance showAccessKeyMetadata :: Show AccessKeyMetadata where show = genericShow
instance decodeAccessKeyMetadata :: Decode AccessKeyMetadata where decode = genericDecode options
instance encodeAccessKeyMetadata :: Encode AccessKeyMetadata where encode = genericEncode options

-- | Constructs AccessKeyMetadata from required parameters
newAccessKeyMetadata :: AccessKeyMetadata
newAccessKeyMetadata  = AccessKeyMetadata { "AccessKeyId": Nothing, "CreateDate": Nothing, "Status": Nothing, "UserName": Nothing }

-- | Constructs AccessKeyMetadata's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAccessKeyMetadata' :: ( { "UserName" :: Maybe (UserNameType') , "AccessKeyId" :: Maybe (AccessKeyIdType') , "Status" :: Maybe (StatusType') , "CreateDate" :: Maybe (DateType') } -> {"UserName" :: Maybe (UserNameType') , "AccessKeyId" :: Maybe (AccessKeyIdType') , "Status" :: Maybe (StatusType') , "CreateDate" :: Maybe (DateType') } ) -> AccessKeyMetadata
newAccessKeyMetadata'  customize = (AccessKeyMetadata <<< customize) { "AccessKeyId": Nothing, "CreateDate": Nothing, "Status": Nothing, "UserName": Nothing }



newtype ActionNameListType = ActionNameListType (Array ActionNameType)
derive instance newtypeActionNameListType :: Newtype ActionNameListType _
derive instance repGenericActionNameListType :: Generic ActionNameListType _
instance showActionNameListType :: Show ActionNameListType where show = genericShow
instance decodeActionNameListType :: Decode ActionNameListType where decode = genericDecode options
instance encodeActionNameListType :: Encode ActionNameListType where encode = genericEncode options



newtype ActionNameType = ActionNameType String
derive instance newtypeActionNameType :: Newtype ActionNameType _
derive instance repGenericActionNameType :: Generic ActionNameType _
instance showActionNameType :: Show ActionNameType where show = genericShow
instance decodeActionNameType :: Decode ActionNameType where decode = genericDecode options
instance encodeActionNameType :: Encode ActionNameType where encode = genericEncode options



newtype AddClientIDToOpenIDConnectProviderRequest = AddClientIDToOpenIDConnectProviderRequest 
  { "OpenIDConnectProviderArn" :: (ArnType')
  , "ClientID" :: (ClientIDType')
  }
derive instance newtypeAddClientIDToOpenIDConnectProviderRequest :: Newtype AddClientIDToOpenIDConnectProviderRequest _
derive instance repGenericAddClientIDToOpenIDConnectProviderRequest :: Generic AddClientIDToOpenIDConnectProviderRequest _
instance showAddClientIDToOpenIDConnectProviderRequest :: Show AddClientIDToOpenIDConnectProviderRequest where show = genericShow
instance decodeAddClientIDToOpenIDConnectProviderRequest :: Decode AddClientIDToOpenIDConnectProviderRequest where decode = genericDecode options
instance encodeAddClientIDToOpenIDConnectProviderRequest :: Encode AddClientIDToOpenIDConnectProviderRequest where encode = genericEncode options

-- | Constructs AddClientIDToOpenIDConnectProviderRequest from required parameters
newAddClientIDToOpenIDConnectProviderRequest :: ClientIDType' -> ArnType' -> AddClientIDToOpenIDConnectProviderRequest
newAddClientIDToOpenIDConnectProviderRequest _ClientID _OpenIDConnectProviderArn = AddClientIDToOpenIDConnectProviderRequest { "ClientID": _ClientID, "OpenIDConnectProviderArn": _OpenIDConnectProviderArn }

-- | Constructs AddClientIDToOpenIDConnectProviderRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAddClientIDToOpenIDConnectProviderRequest' :: ClientIDType' -> ArnType' -> ( { "OpenIDConnectProviderArn" :: (ArnType') , "ClientID" :: (ClientIDType') } -> {"OpenIDConnectProviderArn" :: (ArnType') , "ClientID" :: (ClientIDType') } ) -> AddClientIDToOpenIDConnectProviderRequest
newAddClientIDToOpenIDConnectProviderRequest' _ClientID _OpenIDConnectProviderArn customize = (AddClientIDToOpenIDConnectProviderRequest <<< customize) { "ClientID": _ClientID, "OpenIDConnectProviderArn": _OpenIDConnectProviderArn }



newtype AddRoleToInstanceProfileRequest = AddRoleToInstanceProfileRequest 
  { "InstanceProfileName" :: (InstanceProfileNameType')
  , "RoleName" :: (RoleNameType')
  }
derive instance newtypeAddRoleToInstanceProfileRequest :: Newtype AddRoleToInstanceProfileRequest _
derive instance repGenericAddRoleToInstanceProfileRequest :: Generic AddRoleToInstanceProfileRequest _
instance showAddRoleToInstanceProfileRequest :: Show AddRoleToInstanceProfileRequest where show = genericShow
instance decodeAddRoleToInstanceProfileRequest :: Decode AddRoleToInstanceProfileRequest where decode = genericDecode options
instance encodeAddRoleToInstanceProfileRequest :: Encode AddRoleToInstanceProfileRequest where encode = genericEncode options

-- | Constructs AddRoleToInstanceProfileRequest from required parameters
newAddRoleToInstanceProfileRequest :: InstanceProfileNameType' -> RoleNameType' -> AddRoleToInstanceProfileRequest
newAddRoleToInstanceProfileRequest _InstanceProfileName _RoleName = AddRoleToInstanceProfileRequest { "InstanceProfileName": _InstanceProfileName, "RoleName": _RoleName }

-- | Constructs AddRoleToInstanceProfileRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAddRoleToInstanceProfileRequest' :: InstanceProfileNameType' -> RoleNameType' -> ( { "InstanceProfileName" :: (InstanceProfileNameType') , "RoleName" :: (RoleNameType') } -> {"InstanceProfileName" :: (InstanceProfileNameType') , "RoleName" :: (RoleNameType') } ) -> AddRoleToInstanceProfileRequest
newAddRoleToInstanceProfileRequest' _InstanceProfileName _RoleName customize = (AddRoleToInstanceProfileRequest <<< customize) { "InstanceProfileName": _InstanceProfileName, "RoleName": _RoleName }



newtype AddUserToGroupRequest = AddUserToGroupRequest 
  { "GroupName" :: (GroupNameType')
  , "UserName" :: (ExistingUserNameType')
  }
derive instance newtypeAddUserToGroupRequest :: Newtype AddUserToGroupRequest _
derive instance repGenericAddUserToGroupRequest :: Generic AddUserToGroupRequest _
instance showAddUserToGroupRequest :: Show AddUserToGroupRequest where show = genericShow
instance decodeAddUserToGroupRequest :: Decode AddUserToGroupRequest where decode = genericDecode options
instance encodeAddUserToGroupRequest :: Encode AddUserToGroupRequest where encode = genericEncode options

-- | Constructs AddUserToGroupRequest from required parameters
newAddUserToGroupRequest :: GroupNameType' -> ExistingUserNameType' -> AddUserToGroupRequest
newAddUserToGroupRequest _GroupName _UserName = AddUserToGroupRequest { "GroupName": _GroupName, "UserName": _UserName }

-- | Constructs AddUserToGroupRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAddUserToGroupRequest' :: GroupNameType' -> ExistingUserNameType' -> ( { "GroupName" :: (GroupNameType') , "UserName" :: (ExistingUserNameType') } -> {"GroupName" :: (GroupNameType') , "UserName" :: (ExistingUserNameType') } ) -> AddUserToGroupRequest
newAddUserToGroupRequest' _GroupName _UserName customize = (AddUserToGroupRequest <<< customize) { "GroupName": _GroupName, "UserName": _UserName }



newtype ArnListType = ArnListType (Array ArnType')
derive instance newtypeArnListType :: Newtype ArnListType _
derive instance repGenericArnListType :: Generic ArnListType _
instance showArnListType :: Show ArnListType where show = genericShow
instance decodeArnListType :: Decode ArnListType where decode = genericDecode options
instance encodeArnListType :: Encode ArnListType where encode = genericEncode options



newtype AttachGroupPolicyRequest = AttachGroupPolicyRequest 
  { "GroupName" :: (GroupNameType')
  , "PolicyArn" :: (ArnType')
  }
derive instance newtypeAttachGroupPolicyRequest :: Newtype AttachGroupPolicyRequest _
derive instance repGenericAttachGroupPolicyRequest :: Generic AttachGroupPolicyRequest _
instance showAttachGroupPolicyRequest :: Show AttachGroupPolicyRequest where show = genericShow
instance decodeAttachGroupPolicyRequest :: Decode AttachGroupPolicyRequest where decode = genericDecode options
instance encodeAttachGroupPolicyRequest :: Encode AttachGroupPolicyRequest where encode = genericEncode options

-- | Constructs AttachGroupPolicyRequest from required parameters
newAttachGroupPolicyRequest :: GroupNameType' -> ArnType' -> AttachGroupPolicyRequest
newAttachGroupPolicyRequest _GroupName _PolicyArn = AttachGroupPolicyRequest { "GroupName": _GroupName, "PolicyArn": _PolicyArn }

-- | Constructs AttachGroupPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAttachGroupPolicyRequest' :: GroupNameType' -> ArnType' -> ( { "GroupName" :: (GroupNameType') , "PolicyArn" :: (ArnType') } -> {"GroupName" :: (GroupNameType') , "PolicyArn" :: (ArnType') } ) -> AttachGroupPolicyRequest
newAttachGroupPolicyRequest' _GroupName _PolicyArn customize = (AttachGroupPolicyRequest <<< customize) { "GroupName": _GroupName, "PolicyArn": _PolicyArn }



newtype AttachRolePolicyRequest = AttachRolePolicyRequest 
  { "RoleName" :: (RoleNameType')
  , "PolicyArn" :: (ArnType')
  }
derive instance newtypeAttachRolePolicyRequest :: Newtype AttachRolePolicyRequest _
derive instance repGenericAttachRolePolicyRequest :: Generic AttachRolePolicyRequest _
instance showAttachRolePolicyRequest :: Show AttachRolePolicyRequest where show = genericShow
instance decodeAttachRolePolicyRequest :: Decode AttachRolePolicyRequest where decode = genericDecode options
instance encodeAttachRolePolicyRequest :: Encode AttachRolePolicyRequest where encode = genericEncode options

-- | Constructs AttachRolePolicyRequest from required parameters
newAttachRolePolicyRequest :: ArnType' -> RoleNameType' -> AttachRolePolicyRequest
newAttachRolePolicyRequest _PolicyArn _RoleName = AttachRolePolicyRequest { "PolicyArn": _PolicyArn, "RoleName": _RoleName }

-- | Constructs AttachRolePolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAttachRolePolicyRequest' :: ArnType' -> RoleNameType' -> ( { "RoleName" :: (RoleNameType') , "PolicyArn" :: (ArnType') } -> {"RoleName" :: (RoleNameType') , "PolicyArn" :: (ArnType') } ) -> AttachRolePolicyRequest
newAttachRolePolicyRequest' _PolicyArn _RoleName customize = (AttachRolePolicyRequest <<< customize) { "PolicyArn": _PolicyArn, "RoleName": _RoleName }



newtype AttachUserPolicyRequest = AttachUserPolicyRequest 
  { "UserName" :: (UserNameType')
  , "PolicyArn" :: (ArnType')
  }
derive instance newtypeAttachUserPolicyRequest :: Newtype AttachUserPolicyRequest _
derive instance repGenericAttachUserPolicyRequest :: Generic AttachUserPolicyRequest _
instance showAttachUserPolicyRequest :: Show AttachUserPolicyRequest where show = genericShow
instance decodeAttachUserPolicyRequest :: Decode AttachUserPolicyRequest where decode = genericDecode options
instance encodeAttachUserPolicyRequest :: Encode AttachUserPolicyRequest where encode = genericEncode options

-- | Constructs AttachUserPolicyRequest from required parameters
newAttachUserPolicyRequest :: ArnType' -> UserNameType' -> AttachUserPolicyRequest
newAttachUserPolicyRequest _PolicyArn _UserName = AttachUserPolicyRequest { "PolicyArn": _PolicyArn, "UserName": _UserName }

-- | Constructs AttachUserPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAttachUserPolicyRequest' :: ArnType' -> UserNameType' -> ( { "UserName" :: (UserNameType') , "PolicyArn" :: (ArnType') } -> {"UserName" :: (UserNameType') , "PolicyArn" :: (ArnType') } ) -> AttachUserPolicyRequest
newAttachUserPolicyRequest' _PolicyArn _UserName customize = (AttachUserPolicyRequest <<< customize) { "PolicyArn": _PolicyArn, "UserName": _UserName }



-- | <p>Contains information about an attached policy.</p> <p>An attached policy is a managed policy that has been attached to a user, group, or role. This data type is used as a response element in the <a>ListAttachedGroupPolicies</a>, <a>ListAttachedRolePolicies</a>, <a>ListAttachedUserPolicies</a>, and <a>GetAccountAuthorizationDetails</a> actions. </p> <p>For more information about managed policies, refer to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>Using IAM</i> guide. </p>
newtype AttachedPolicy = AttachedPolicy 
  { "PolicyName" :: Maybe (PolicyNameType')
  , "PolicyArn" :: Maybe (ArnType')
  }
derive instance newtypeAttachedPolicy :: Newtype AttachedPolicy _
derive instance repGenericAttachedPolicy :: Generic AttachedPolicy _
instance showAttachedPolicy :: Show AttachedPolicy where show = genericShow
instance decodeAttachedPolicy :: Decode AttachedPolicy where decode = genericDecode options
instance encodeAttachedPolicy :: Encode AttachedPolicy where encode = genericEncode options

-- | Constructs AttachedPolicy from required parameters
newAttachedPolicy :: AttachedPolicy
newAttachedPolicy  = AttachedPolicy { "PolicyArn": Nothing, "PolicyName": Nothing }

-- | Constructs AttachedPolicy's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAttachedPolicy' :: ( { "PolicyName" :: Maybe (PolicyNameType') , "PolicyArn" :: Maybe (ArnType') } -> {"PolicyName" :: Maybe (PolicyNameType') , "PolicyArn" :: Maybe (ArnType') } ) -> AttachedPolicy
newAttachedPolicy'  customize = (AttachedPolicy <<< customize) { "PolicyArn": Nothing, "PolicyName": Nothing }



newtype BootstrapDatum = BootstrapDatum String
derive instance newtypeBootstrapDatum :: Newtype BootstrapDatum _
derive instance repGenericBootstrapDatum :: Generic BootstrapDatum _
instance showBootstrapDatum :: Show BootstrapDatum where show = genericShow
instance decodeBootstrapDatum :: Decode BootstrapDatum where decode = genericDecode options
instance encodeBootstrapDatum :: Encode BootstrapDatum where encode = genericEncode options



newtype ChangePasswordRequest = ChangePasswordRequest 
  { "OldPassword" :: (PasswordType')
  , "NewPassword" :: (PasswordType')
  }
derive instance newtypeChangePasswordRequest :: Newtype ChangePasswordRequest _
derive instance repGenericChangePasswordRequest :: Generic ChangePasswordRequest _
instance showChangePasswordRequest :: Show ChangePasswordRequest where show = genericShow
instance decodeChangePasswordRequest :: Decode ChangePasswordRequest where decode = genericDecode options
instance encodeChangePasswordRequest :: Encode ChangePasswordRequest where encode = genericEncode options

-- | Constructs ChangePasswordRequest from required parameters
newChangePasswordRequest :: PasswordType' -> PasswordType' -> ChangePasswordRequest
newChangePasswordRequest _NewPassword _OldPassword = ChangePasswordRequest { "NewPassword": _NewPassword, "OldPassword": _OldPassword }

-- | Constructs ChangePasswordRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newChangePasswordRequest' :: PasswordType' -> PasswordType' -> ( { "OldPassword" :: (PasswordType') , "NewPassword" :: (PasswordType') } -> {"OldPassword" :: (PasswordType') , "NewPassword" :: (PasswordType') } ) -> ChangePasswordRequest
newChangePasswordRequest' _NewPassword _OldPassword customize = (ChangePasswordRequest <<< customize) { "NewPassword": _NewPassword, "OldPassword": _OldPassword }



newtype ColumnNumber = ColumnNumber Int
derive instance newtypeColumnNumber :: Newtype ColumnNumber _
derive instance repGenericColumnNumber :: Generic ColumnNumber _
instance showColumnNumber :: Show ColumnNumber where show = genericShow
instance decodeColumnNumber :: Decode ColumnNumber where decode = genericDecode options
instance encodeColumnNumber :: Encode ColumnNumber where encode = genericEncode options



-- | <p>Contains information about a condition context key. It includes the name of the key and specifies the value (or values, if the context key supports multiple values) to use in the simulation. This information is used when evaluating the <code>Condition</code> elements of the input policies.</p> <p>This data type is used as an input parameter to <code> <a>SimulateCustomPolicy</a> </code> and <code> <a>SimulateCustomPolicy</a> </code>.</p>
newtype ContextEntry = ContextEntry 
  { "ContextKeyName" :: Maybe (ContextKeyNameType)
  , "ContextKeyValues" :: Maybe (ContextKeyValueListType)
  , "ContextKeyType" :: Maybe (ContextKeyTypeEnum)
  }
derive instance newtypeContextEntry :: Newtype ContextEntry _
derive instance repGenericContextEntry :: Generic ContextEntry _
instance showContextEntry :: Show ContextEntry where show = genericShow
instance decodeContextEntry :: Decode ContextEntry where decode = genericDecode options
instance encodeContextEntry :: Encode ContextEntry where encode = genericEncode options

-- | Constructs ContextEntry from required parameters
newContextEntry :: ContextEntry
newContextEntry  = ContextEntry { "ContextKeyName": Nothing, "ContextKeyType": Nothing, "ContextKeyValues": Nothing }

-- | Constructs ContextEntry's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newContextEntry' :: ( { "ContextKeyName" :: Maybe (ContextKeyNameType) , "ContextKeyValues" :: Maybe (ContextKeyValueListType) , "ContextKeyType" :: Maybe (ContextKeyTypeEnum) } -> {"ContextKeyName" :: Maybe (ContextKeyNameType) , "ContextKeyValues" :: Maybe (ContextKeyValueListType) , "ContextKeyType" :: Maybe (ContextKeyTypeEnum) } ) -> ContextEntry
newContextEntry'  customize = (ContextEntry <<< customize) { "ContextKeyName": Nothing, "ContextKeyType": Nothing, "ContextKeyValues": Nothing }



newtype ContextEntryListType = ContextEntryListType (Array ContextEntry)
derive instance newtypeContextEntryListType :: Newtype ContextEntryListType _
derive instance repGenericContextEntryListType :: Generic ContextEntryListType _
instance showContextEntryListType :: Show ContextEntryListType where show = genericShow
instance decodeContextEntryListType :: Decode ContextEntryListType where decode = genericDecode options
instance encodeContextEntryListType :: Encode ContextEntryListType where encode = genericEncode options



newtype ContextKeyNameType = ContextKeyNameType String
derive instance newtypeContextKeyNameType :: Newtype ContextKeyNameType _
derive instance repGenericContextKeyNameType :: Generic ContextKeyNameType _
instance showContextKeyNameType :: Show ContextKeyNameType where show = genericShow
instance decodeContextKeyNameType :: Decode ContextKeyNameType where decode = genericDecode options
instance encodeContextKeyNameType :: Encode ContextKeyNameType where encode = genericEncode options



newtype ContextKeyNamesResultListType = ContextKeyNamesResultListType (Array ContextKeyNameType)
derive instance newtypeContextKeyNamesResultListType :: Newtype ContextKeyNamesResultListType _
derive instance repGenericContextKeyNamesResultListType :: Generic ContextKeyNamesResultListType _
instance showContextKeyNamesResultListType :: Show ContextKeyNamesResultListType where show = genericShow
instance decodeContextKeyNamesResultListType :: Decode ContextKeyNamesResultListType where decode = genericDecode options
instance encodeContextKeyNamesResultListType :: Encode ContextKeyNamesResultListType where encode = genericEncode options



newtype ContextKeyTypeEnum = ContextKeyTypeEnum String
derive instance newtypeContextKeyTypeEnum :: Newtype ContextKeyTypeEnum _
derive instance repGenericContextKeyTypeEnum :: Generic ContextKeyTypeEnum _
instance showContextKeyTypeEnum :: Show ContextKeyTypeEnum where show = genericShow
instance decodeContextKeyTypeEnum :: Decode ContextKeyTypeEnum where decode = genericDecode options
instance encodeContextKeyTypeEnum :: Encode ContextKeyTypeEnum where encode = genericEncode options



newtype ContextKeyValueListType = ContextKeyValueListType (Array ContextKeyValueType)
derive instance newtypeContextKeyValueListType :: Newtype ContextKeyValueListType _
derive instance repGenericContextKeyValueListType :: Generic ContextKeyValueListType _
instance showContextKeyValueListType :: Show ContextKeyValueListType where show = genericShow
instance decodeContextKeyValueListType :: Decode ContextKeyValueListType where decode = genericDecode options
instance encodeContextKeyValueListType :: Encode ContextKeyValueListType where encode = genericEncode options



newtype ContextKeyValueType = ContextKeyValueType String
derive instance newtypeContextKeyValueType :: Newtype ContextKeyValueType _
derive instance repGenericContextKeyValueType :: Generic ContextKeyValueType _
instance showContextKeyValueType :: Show ContextKeyValueType where show = genericShow
instance decodeContextKeyValueType :: Decode ContextKeyValueType where decode = genericDecode options
instance encodeContextKeyValueType :: Encode ContextKeyValueType where encode = genericEncode options



newtype CreateAccessKeyRequest = CreateAccessKeyRequest 
  { "UserName" :: Maybe (ExistingUserNameType')
  }
derive instance newtypeCreateAccessKeyRequest :: Newtype CreateAccessKeyRequest _
derive instance repGenericCreateAccessKeyRequest :: Generic CreateAccessKeyRequest _
instance showCreateAccessKeyRequest :: Show CreateAccessKeyRequest where show = genericShow
instance decodeCreateAccessKeyRequest :: Decode CreateAccessKeyRequest where decode = genericDecode options
instance encodeCreateAccessKeyRequest :: Encode CreateAccessKeyRequest where encode = genericEncode options

-- | Constructs CreateAccessKeyRequest from required parameters
newCreateAccessKeyRequest :: CreateAccessKeyRequest
newCreateAccessKeyRequest  = CreateAccessKeyRequest { "UserName": Nothing }

-- | Constructs CreateAccessKeyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateAccessKeyRequest' :: ( { "UserName" :: Maybe (ExistingUserNameType') } -> {"UserName" :: Maybe (ExistingUserNameType') } ) -> CreateAccessKeyRequest
newCreateAccessKeyRequest'  customize = (CreateAccessKeyRequest <<< customize) { "UserName": Nothing }



-- | <p>Contains the response to a successful <a>CreateAccessKey</a> request. </p>
newtype CreateAccessKeyResponse = CreateAccessKeyResponse 
  { "AccessKey" :: (AccessKey)
  }
derive instance newtypeCreateAccessKeyResponse :: Newtype CreateAccessKeyResponse _
derive instance repGenericCreateAccessKeyResponse :: Generic CreateAccessKeyResponse _
instance showCreateAccessKeyResponse :: Show CreateAccessKeyResponse where show = genericShow
instance decodeCreateAccessKeyResponse :: Decode CreateAccessKeyResponse where decode = genericDecode options
instance encodeCreateAccessKeyResponse :: Encode CreateAccessKeyResponse where encode = genericEncode options

-- | Constructs CreateAccessKeyResponse from required parameters
newCreateAccessKeyResponse :: AccessKey -> CreateAccessKeyResponse
newCreateAccessKeyResponse _AccessKey = CreateAccessKeyResponse { "AccessKey": _AccessKey }

-- | Constructs CreateAccessKeyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateAccessKeyResponse' :: AccessKey -> ( { "AccessKey" :: (AccessKey) } -> {"AccessKey" :: (AccessKey) } ) -> CreateAccessKeyResponse
newCreateAccessKeyResponse' _AccessKey customize = (CreateAccessKeyResponse <<< customize) { "AccessKey": _AccessKey }



newtype CreateAccountAliasRequest = CreateAccountAliasRequest 
  { "AccountAlias" :: (AccountAliasType')
  }
derive instance newtypeCreateAccountAliasRequest :: Newtype CreateAccountAliasRequest _
derive instance repGenericCreateAccountAliasRequest :: Generic CreateAccountAliasRequest _
instance showCreateAccountAliasRequest :: Show CreateAccountAliasRequest where show = genericShow
instance decodeCreateAccountAliasRequest :: Decode CreateAccountAliasRequest where decode = genericDecode options
instance encodeCreateAccountAliasRequest :: Encode CreateAccountAliasRequest where encode = genericEncode options

-- | Constructs CreateAccountAliasRequest from required parameters
newCreateAccountAliasRequest :: AccountAliasType' -> CreateAccountAliasRequest
newCreateAccountAliasRequest _AccountAlias = CreateAccountAliasRequest { "AccountAlias": _AccountAlias }

-- | Constructs CreateAccountAliasRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateAccountAliasRequest' :: AccountAliasType' -> ( { "AccountAlias" :: (AccountAliasType') } -> {"AccountAlias" :: (AccountAliasType') } ) -> CreateAccountAliasRequest
newCreateAccountAliasRequest' _AccountAlias customize = (CreateAccountAliasRequest <<< customize) { "AccountAlias": _AccountAlias }



newtype CreateGroupRequest = CreateGroupRequest 
  { "Path" :: Maybe (PathType')
  , "GroupName" :: (GroupNameType')
  }
derive instance newtypeCreateGroupRequest :: Newtype CreateGroupRequest _
derive instance repGenericCreateGroupRequest :: Generic CreateGroupRequest _
instance showCreateGroupRequest :: Show CreateGroupRequest where show = genericShow
instance decodeCreateGroupRequest :: Decode CreateGroupRequest where decode = genericDecode options
instance encodeCreateGroupRequest :: Encode CreateGroupRequest where encode = genericEncode options

-- | Constructs CreateGroupRequest from required parameters
newCreateGroupRequest :: GroupNameType' -> CreateGroupRequest
newCreateGroupRequest _GroupName = CreateGroupRequest { "GroupName": _GroupName, "Path": Nothing }

-- | Constructs CreateGroupRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateGroupRequest' :: GroupNameType' -> ( { "Path" :: Maybe (PathType') , "GroupName" :: (GroupNameType') } -> {"Path" :: Maybe (PathType') , "GroupName" :: (GroupNameType') } ) -> CreateGroupRequest
newCreateGroupRequest' _GroupName customize = (CreateGroupRequest <<< customize) { "GroupName": _GroupName, "Path": Nothing }



-- | <p>Contains the response to a successful <a>CreateGroup</a> request. </p>
newtype CreateGroupResponse = CreateGroupResponse 
  { "Group" :: (Group)
  }
derive instance newtypeCreateGroupResponse :: Newtype CreateGroupResponse _
derive instance repGenericCreateGroupResponse :: Generic CreateGroupResponse _
instance showCreateGroupResponse :: Show CreateGroupResponse where show = genericShow
instance decodeCreateGroupResponse :: Decode CreateGroupResponse where decode = genericDecode options
instance encodeCreateGroupResponse :: Encode CreateGroupResponse where encode = genericEncode options

-- | Constructs CreateGroupResponse from required parameters
newCreateGroupResponse :: Group -> CreateGroupResponse
newCreateGroupResponse _Group = CreateGroupResponse { "Group": _Group }

-- | Constructs CreateGroupResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateGroupResponse' :: Group -> ( { "Group" :: (Group) } -> {"Group" :: (Group) } ) -> CreateGroupResponse
newCreateGroupResponse' _Group customize = (CreateGroupResponse <<< customize) { "Group": _Group }



newtype CreateInstanceProfileRequest = CreateInstanceProfileRequest 
  { "InstanceProfileName" :: (InstanceProfileNameType')
  , "Path" :: Maybe (PathType')
  }
derive instance newtypeCreateInstanceProfileRequest :: Newtype CreateInstanceProfileRequest _
derive instance repGenericCreateInstanceProfileRequest :: Generic CreateInstanceProfileRequest _
instance showCreateInstanceProfileRequest :: Show CreateInstanceProfileRequest where show = genericShow
instance decodeCreateInstanceProfileRequest :: Decode CreateInstanceProfileRequest where decode = genericDecode options
instance encodeCreateInstanceProfileRequest :: Encode CreateInstanceProfileRequest where encode = genericEncode options

-- | Constructs CreateInstanceProfileRequest from required parameters
newCreateInstanceProfileRequest :: InstanceProfileNameType' -> CreateInstanceProfileRequest
newCreateInstanceProfileRequest _InstanceProfileName = CreateInstanceProfileRequest { "InstanceProfileName": _InstanceProfileName, "Path": Nothing }

-- | Constructs CreateInstanceProfileRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateInstanceProfileRequest' :: InstanceProfileNameType' -> ( { "InstanceProfileName" :: (InstanceProfileNameType') , "Path" :: Maybe (PathType') } -> {"InstanceProfileName" :: (InstanceProfileNameType') , "Path" :: Maybe (PathType') } ) -> CreateInstanceProfileRequest
newCreateInstanceProfileRequest' _InstanceProfileName customize = (CreateInstanceProfileRequest <<< customize) { "InstanceProfileName": _InstanceProfileName, "Path": Nothing }



-- | <p>Contains the response to a successful <a>CreateInstanceProfile</a> request. </p>
newtype CreateInstanceProfileResponse = CreateInstanceProfileResponse 
  { "InstanceProfile" :: (InstanceProfile)
  }
derive instance newtypeCreateInstanceProfileResponse :: Newtype CreateInstanceProfileResponse _
derive instance repGenericCreateInstanceProfileResponse :: Generic CreateInstanceProfileResponse _
instance showCreateInstanceProfileResponse :: Show CreateInstanceProfileResponse where show = genericShow
instance decodeCreateInstanceProfileResponse :: Decode CreateInstanceProfileResponse where decode = genericDecode options
instance encodeCreateInstanceProfileResponse :: Encode CreateInstanceProfileResponse where encode = genericEncode options

-- | Constructs CreateInstanceProfileResponse from required parameters
newCreateInstanceProfileResponse :: InstanceProfile -> CreateInstanceProfileResponse
newCreateInstanceProfileResponse _InstanceProfile = CreateInstanceProfileResponse { "InstanceProfile": _InstanceProfile }

-- | Constructs CreateInstanceProfileResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateInstanceProfileResponse' :: InstanceProfile -> ( { "InstanceProfile" :: (InstanceProfile) } -> {"InstanceProfile" :: (InstanceProfile) } ) -> CreateInstanceProfileResponse
newCreateInstanceProfileResponse' _InstanceProfile customize = (CreateInstanceProfileResponse <<< customize) { "InstanceProfile": _InstanceProfile }



newtype CreateLoginProfileRequest = CreateLoginProfileRequest 
  { "UserName" :: (UserNameType')
  , "Password" :: (PasswordType')
  , "PasswordResetRequired" :: Maybe (BooleanType')
  }
derive instance newtypeCreateLoginProfileRequest :: Newtype CreateLoginProfileRequest _
derive instance repGenericCreateLoginProfileRequest :: Generic CreateLoginProfileRequest _
instance showCreateLoginProfileRequest :: Show CreateLoginProfileRequest where show = genericShow
instance decodeCreateLoginProfileRequest :: Decode CreateLoginProfileRequest where decode = genericDecode options
instance encodeCreateLoginProfileRequest :: Encode CreateLoginProfileRequest where encode = genericEncode options

-- | Constructs CreateLoginProfileRequest from required parameters
newCreateLoginProfileRequest :: PasswordType' -> UserNameType' -> CreateLoginProfileRequest
newCreateLoginProfileRequest _Password _UserName = CreateLoginProfileRequest { "Password": _Password, "UserName": _UserName, "PasswordResetRequired": Nothing }

-- | Constructs CreateLoginProfileRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateLoginProfileRequest' :: PasswordType' -> UserNameType' -> ( { "UserName" :: (UserNameType') , "Password" :: (PasswordType') , "PasswordResetRequired" :: Maybe (BooleanType') } -> {"UserName" :: (UserNameType') , "Password" :: (PasswordType') , "PasswordResetRequired" :: Maybe (BooleanType') } ) -> CreateLoginProfileRequest
newCreateLoginProfileRequest' _Password _UserName customize = (CreateLoginProfileRequest <<< customize) { "Password": _Password, "UserName": _UserName, "PasswordResetRequired": Nothing }



-- | <p>Contains the response to a successful <a>CreateLoginProfile</a> request. </p>
newtype CreateLoginProfileResponse = CreateLoginProfileResponse 
  { "LoginProfile" :: (LoginProfile)
  }
derive instance newtypeCreateLoginProfileResponse :: Newtype CreateLoginProfileResponse _
derive instance repGenericCreateLoginProfileResponse :: Generic CreateLoginProfileResponse _
instance showCreateLoginProfileResponse :: Show CreateLoginProfileResponse where show = genericShow
instance decodeCreateLoginProfileResponse :: Decode CreateLoginProfileResponse where decode = genericDecode options
instance encodeCreateLoginProfileResponse :: Encode CreateLoginProfileResponse where encode = genericEncode options

-- | Constructs CreateLoginProfileResponse from required parameters
newCreateLoginProfileResponse :: LoginProfile -> CreateLoginProfileResponse
newCreateLoginProfileResponse _LoginProfile = CreateLoginProfileResponse { "LoginProfile": _LoginProfile }

-- | Constructs CreateLoginProfileResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateLoginProfileResponse' :: LoginProfile -> ( { "LoginProfile" :: (LoginProfile) } -> {"LoginProfile" :: (LoginProfile) } ) -> CreateLoginProfileResponse
newCreateLoginProfileResponse' _LoginProfile customize = (CreateLoginProfileResponse <<< customize) { "LoginProfile": _LoginProfile }



newtype CreateOpenIDConnectProviderRequest = CreateOpenIDConnectProviderRequest 
  { "Url" :: (OpenIDConnectProviderUrlType)
  , "ClientIDList" :: Maybe (ClientIDListType')
  , "ThumbprintList" :: (ThumbprintListType')
  }
derive instance newtypeCreateOpenIDConnectProviderRequest :: Newtype CreateOpenIDConnectProviderRequest _
derive instance repGenericCreateOpenIDConnectProviderRequest :: Generic CreateOpenIDConnectProviderRequest _
instance showCreateOpenIDConnectProviderRequest :: Show CreateOpenIDConnectProviderRequest where show = genericShow
instance decodeCreateOpenIDConnectProviderRequest :: Decode CreateOpenIDConnectProviderRequest where decode = genericDecode options
instance encodeCreateOpenIDConnectProviderRequest :: Encode CreateOpenIDConnectProviderRequest where encode = genericEncode options

-- | Constructs CreateOpenIDConnectProviderRequest from required parameters
newCreateOpenIDConnectProviderRequest :: ThumbprintListType' -> OpenIDConnectProviderUrlType -> CreateOpenIDConnectProviderRequest
newCreateOpenIDConnectProviderRequest _ThumbprintList _Url = CreateOpenIDConnectProviderRequest { "ThumbprintList": _ThumbprintList, "Url": _Url, "ClientIDList": Nothing }

-- | Constructs CreateOpenIDConnectProviderRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateOpenIDConnectProviderRequest' :: ThumbprintListType' -> OpenIDConnectProviderUrlType -> ( { "Url" :: (OpenIDConnectProviderUrlType) , "ClientIDList" :: Maybe (ClientIDListType') , "ThumbprintList" :: (ThumbprintListType') } -> {"Url" :: (OpenIDConnectProviderUrlType) , "ClientIDList" :: Maybe (ClientIDListType') , "ThumbprintList" :: (ThumbprintListType') } ) -> CreateOpenIDConnectProviderRequest
newCreateOpenIDConnectProviderRequest' _ThumbprintList _Url customize = (CreateOpenIDConnectProviderRequest <<< customize) { "ThumbprintList": _ThumbprintList, "Url": _Url, "ClientIDList": Nothing }



-- | <p>Contains the response to a successful <a>CreateOpenIDConnectProvider</a> request. </p>
newtype CreateOpenIDConnectProviderResponse = CreateOpenIDConnectProviderResponse 
  { "OpenIDConnectProviderArn" :: Maybe (ArnType')
  }
derive instance newtypeCreateOpenIDConnectProviderResponse :: Newtype CreateOpenIDConnectProviderResponse _
derive instance repGenericCreateOpenIDConnectProviderResponse :: Generic CreateOpenIDConnectProviderResponse _
instance showCreateOpenIDConnectProviderResponse :: Show CreateOpenIDConnectProviderResponse where show = genericShow
instance decodeCreateOpenIDConnectProviderResponse :: Decode CreateOpenIDConnectProviderResponse where decode = genericDecode options
instance encodeCreateOpenIDConnectProviderResponse :: Encode CreateOpenIDConnectProviderResponse where encode = genericEncode options

-- | Constructs CreateOpenIDConnectProviderResponse from required parameters
newCreateOpenIDConnectProviderResponse :: CreateOpenIDConnectProviderResponse
newCreateOpenIDConnectProviderResponse  = CreateOpenIDConnectProviderResponse { "OpenIDConnectProviderArn": Nothing }

-- | Constructs CreateOpenIDConnectProviderResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateOpenIDConnectProviderResponse' :: ( { "OpenIDConnectProviderArn" :: Maybe (ArnType') } -> {"OpenIDConnectProviderArn" :: Maybe (ArnType') } ) -> CreateOpenIDConnectProviderResponse
newCreateOpenIDConnectProviderResponse'  customize = (CreateOpenIDConnectProviderResponse <<< customize) { "OpenIDConnectProviderArn": Nothing }



newtype CreatePolicyRequest = CreatePolicyRequest 
  { "PolicyName" :: (PolicyNameType')
  , "Path" :: Maybe (PolicyPathType')
  , "PolicyDocument" :: (PolicyDocumentType')
  , "Description" :: Maybe (PolicyDescriptionType')
  }
derive instance newtypeCreatePolicyRequest :: Newtype CreatePolicyRequest _
derive instance repGenericCreatePolicyRequest :: Generic CreatePolicyRequest _
instance showCreatePolicyRequest :: Show CreatePolicyRequest where show = genericShow
instance decodeCreatePolicyRequest :: Decode CreatePolicyRequest where decode = genericDecode options
instance encodeCreatePolicyRequest :: Encode CreatePolicyRequest where encode = genericEncode options

-- | Constructs CreatePolicyRequest from required parameters
newCreatePolicyRequest :: PolicyDocumentType' -> PolicyNameType' -> CreatePolicyRequest
newCreatePolicyRequest _PolicyDocument _PolicyName = CreatePolicyRequest { "PolicyDocument": _PolicyDocument, "PolicyName": _PolicyName, "Description": Nothing, "Path": Nothing }

-- | Constructs CreatePolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreatePolicyRequest' :: PolicyDocumentType' -> PolicyNameType' -> ( { "PolicyName" :: (PolicyNameType') , "Path" :: Maybe (PolicyPathType') , "PolicyDocument" :: (PolicyDocumentType') , "Description" :: Maybe (PolicyDescriptionType') } -> {"PolicyName" :: (PolicyNameType') , "Path" :: Maybe (PolicyPathType') , "PolicyDocument" :: (PolicyDocumentType') , "Description" :: Maybe (PolicyDescriptionType') } ) -> CreatePolicyRequest
newCreatePolicyRequest' _PolicyDocument _PolicyName customize = (CreatePolicyRequest <<< customize) { "PolicyDocument": _PolicyDocument, "PolicyName": _PolicyName, "Description": Nothing, "Path": Nothing }



-- | <p>Contains the response to a successful <a>CreatePolicy</a> request. </p>
newtype CreatePolicyResponse = CreatePolicyResponse 
  { "Policy" :: Maybe (Policy)
  }
derive instance newtypeCreatePolicyResponse :: Newtype CreatePolicyResponse _
derive instance repGenericCreatePolicyResponse :: Generic CreatePolicyResponse _
instance showCreatePolicyResponse :: Show CreatePolicyResponse where show = genericShow
instance decodeCreatePolicyResponse :: Decode CreatePolicyResponse where decode = genericDecode options
instance encodeCreatePolicyResponse :: Encode CreatePolicyResponse where encode = genericEncode options

-- | Constructs CreatePolicyResponse from required parameters
newCreatePolicyResponse :: CreatePolicyResponse
newCreatePolicyResponse  = CreatePolicyResponse { "Policy": Nothing }

-- | Constructs CreatePolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreatePolicyResponse' :: ( { "Policy" :: Maybe (Policy) } -> {"Policy" :: Maybe (Policy) } ) -> CreatePolicyResponse
newCreatePolicyResponse'  customize = (CreatePolicyResponse <<< customize) { "Policy": Nothing }



newtype CreatePolicyVersionRequest = CreatePolicyVersionRequest 
  { "PolicyArn" :: (ArnType')
  , "PolicyDocument" :: (PolicyDocumentType')
  , "SetAsDefault" :: Maybe (BooleanType')
  }
derive instance newtypeCreatePolicyVersionRequest :: Newtype CreatePolicyVersionRequest _
derive instance repGenericCreatePolicyVersionRequest :: Generic CreatePolicyVersionRequest _
instance showCreatePolicyVersionRequest :: Show CreatePolicyVersionRequest where show = genericShow
instance decodeCreatePolicyVersionRequest :: Decode CreatePolicyVersionRequest where decode = genericDecode options
instance encodeCreatePolicyVersionRequest :: Encode CreatePolicyVersionRequest where encode = genericEncode options

-- | Constructs CreatePolicyVersionRequest from required parameters
newCreatePolicyVersionRequest :: ArnType' -> PolicyDocumentType' -> CreatePolicyVersionRequest
newCreatePolicyVersionRequest _PolicyArn _PolicyDocument = CreatePolicyVersionRequest { "PolicyArn": _PolicyArn, "PolicyDocument": _PolicyDocument, "SetAsDefault": Nothing }

-- | Constructs CreatePolicyVersionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreatePolicyVersionRequest' :: ArnType' -> PolicyDocumentType' -> ( { "PolicyArn" :: (ArnType') , "PolicyDocument" :: (PolicyDocumentType') , "SetAsDefault" :: Maybe (BooleanType') } -> {"PolicyArn" :: (ArnType') , "PolicyDocument" :: (PolicyDocumentType') , "SetAsDefault" :: Maybe (BooleanType') } ) -> CreatePolicyVersionRequest
newCreatePolicyVersionRequest' _PolicyArn _PolicyDocument customize = (CreatePolicyVersionRequest <<< customize) { "PolicyArn": _PolicyArn, "PolicyDocument": _PolicyDocument, "SetAsDefault": Nothing }



-- | <p>Contains the response to a successful <a>CreatePolicyVersion</a> request. </p>
newtype CreatePolicyVersionResponse = CreatePolicyVersionResponse 
  { "PolicyVersion" :: Maybe (PolicyVersion)
  }
derive instance newtypeCreatePolicyVersionResponse :: Newtype CreatePolicyVersionResponse _
derive instance repGenericCreatePolicyVersionResponse :: Generic CreatePolicyVersionResponse _
instance showCreatePolicyVersionResponse :: Show CreatePolicyVersionResponse where show = genericShow
instance decodeCreatePolicyVersionResponse :: Decode CreatePolicyVersionResponse where decode = genericDecode options
instance encodeCreatePolicyVersionResponse :: Encode CreatePolicyVersionResponse where encode = genericEncode options

-- | Constructs CreatePolicyVersionResponse from required parameters
newCreatePolicyVersionResponse :: CreatePolicyVersionResponse
newCreatePolicyVersionResponse  = CreatePolicyVersionResponse { "PolicyVersion": Nothing }

-- | Constructs CreatePolicyVersionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreatePolicyVersionResponse' :: ( { "PolicyVersion" :: Maybe (PolicyVersion) } -> {"PolicyVersion" :: Maybe (PolicyVersion) } ) -> CreatePolicyVersionResponse
newCreatePolicyVersionResponse'  customize = (CreatePolicyVersionResponse <<< customize) { "PolicyVersion": Nothing }



newtype CreateRoleRequest = CreateRoleRequest 
  { "Path" :: Maybe (PathType')
  , "RoleName" :: (RoleNameType')
  , "AssumeRolePolicyDocument" :: (PolicyDocumentType')
  , "Description" :: Maybe (RoleDescriptionType')
  }
derive instance newtypeCreateRoleRequest :: Newtype CreateRoleRequest _
derive instance repGenericCreateRoleRequest :: Generic CreateRoleRequest _
instance showCreateRoleRequest :: Show CreateRoleRequest where show = genericShow
instance decodeCreateRoleRequest :: Decode CreateRoleRequest where decode = genericDecode options
instance encodeCreateRoleRequest :: Encode CreateRoleRequest where encode = genericEncode options

-- | Constructs CreateRoleRequest from required parameters
newCreateRoleRequest :: PolicyDocumentType' -> RoleNameType' -> CreateRoleRequest
newCreateRoleRequest _AssumeRolePolicyDocument _RoleName = CreateRoleRequest { "AssumeRolePolicyDocument": _AssumeRolePolicyDocument, "RoleName": _RoleName, "Description": Nothing, "Path": Nothing }

-- | Constructs CreateRoleRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateRoleRequest' :: PolicyDocumentType' -> RoleNameType' -> ( { "Path" :: Maybe (PathType') , "RoleName" :: (RoleNameType') , "AssumeRolePolicyDocument" :: (PolicyDocumentType') , "Description" :: Maybe (RoleDescriptionType') } -> {"Path" :: Maybe (PathType') , "RoleName" :: (RoleNameType') , "AssumeRolePolicyDocument" :: (PolicyDocumentType') , "Description" :: Maybe (RoleDescriptionType') } ) -> CreateRoleRequest
newCreateRoleRequest' _AssumeRolePolicyDocument _RoleName customize = (CreateRoleRequest <<< customize) { "AssumeRolePolicyDocument": _AssumeRolePolicyDocument, "RoleName": _RoleName, "Description": Nothing, "Path": Nothing }



-- | <p>Contains the response to a successful <a>CreateRole</a> request. </p>
newtype CreateRoleResponse = CreateRoleResponse 
  { "Role" :: (Role)
  }
derive instance newtypeCreateRoleResponse :: Newtype CreateRoleResponse _
derive instance repGenericCreateRoleResponse :: Generic CreateRoleResponse _
instance showCreateRoleResponse :: Show CreateRoleResponse where show = genericShow
instance decodeCreateRoleResponse :: Decode CreateRoleResponse where decode = genericDecode options
instance encodeCreateRoleResponse :: Encode CreateRoleResponse where encode = genericEncode options

-- | Constructs CreateRoleResponse from required parameters
newCreateRoleResponse :: Role -> CreateRoleResponse
newCreateRoleResponse _Role = CreateRoleResponse { "Role": _Role }

-- | Constructs CreateRoleResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateRoleResponse' :: Role -> ( { "Role" :: (Role) } -> {"Role" :: (Role) } ) -> CreateRoleResponse
newCreateRoleResponse' _Role customize = (CreateRoleResponse <<< customize) { "Role": _Role }



newtype CreateSAMLProviderRequest = CreateSAMLProviderRequest 
  { "SAMLMetadataDocument" :: (SAMLMetadataDocumentType)
  , "Name" :: (SAMLProviderNameType)
  }
derive instance newtypeCreateSAMLProviderRequest :: Newtype CreateSAMLProviderRequest _
derive instance repGenericCreateSAMLProviderRequest :: Generic CreateSAMLProviderRequest _
instance showCreateSAMLProviderRequest :: Show CreateSAMLProviderRequest where show = genericShow
instance decodeCreateSAMLProviderRequest :: Decode CreateSAMLProviderRequest where decode = genericDecode options
instance encodeCreateSAMLProviderRequest :: Encode CreateSAMLProviderRequest where encode = genericEncode options

-- | Constructs CreateSAMLProviderRequest from required parameters
newCreateSAMLProviderRequest :: SAMLProviderNameType -> SAMLMetadataDocumentType -> CreateSAMLProviderRequest
newCreateSAMLProviderRequest _Name _SAMLMetadataDocument = CreateSAMLProviderRequest { "Name": _Name, "SAMLMetadataDocument": _SAMLMetadataDocument }

-- | Constructs CreateSAMLProviderRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateSAMLProviderRequest' :: SAMLProviderNameType -> SAMLMetadataDocumentType -> ( { "SAMLMetadataDocument" :: (SAMLMetadataDocumentType) , "Name" :: (SAMLProviderNameType) } -> {"SAMLMetadataDocument" :: (SAMLMetadataDocumentType) , "Name" :: (SAMLProviderNameType) } ) -> CreateSAMLProviderRequest
newCreateSAMLProviderRequest' _Name _SAMLMetadataDocument customize = (CreateSAMLProviderRequest <<< customize) { "Name": _Name, "SAMLMetadataDocument": _SAMLMetadataDocument }



-- | <p>Contains the response to a successful <a>CreateSAMLProvider</a> request. </p>
newtype CreateSAMLProviderResponse = CreateSAMLProviderResponse 
  { "SAMLProviderArn" :: Maybe (ArnType')
  }
derive instance newtypeCreateSAMLProviderResponse :: Newtype CreateSAMLProviderResponse _
derive instance repGenericCreateSAMLProviderResponse :: Generic CreateSAMLProviderResponse _
instance showCreateSAMLProviderResponse :: Show CreateSAMLProviderResponse where show = genericShow
instance decodeCreateSAMLProviderResponse :: Decode CreateSAMLProviderResponse where decode = genericDecode options
instance encodeCreateSAMLProviderResponse :: Encode CreateSAMLProviderResponse where encode = genericEncode options

-- | Constructs CreateSAMLProviderResponse from required parameters
newCreateSAMLProviderResponse :: CreateSAMLProviderResponse
newCreateSAMLProviderResponse  = CreateSAMLProviderResponse { "SAMLProviderArn": Nothing }

-- | Constructs CreateSAMLProviderResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateSAMLProviderResponse' :: ( { "SAMLProviderArn" :: Maybe (ArnType') } -> {"SAMLProviderArn" :: Maybe (ArnType') } ) -> CreateSAMLProviderResponse
newCreateSAMLProviderResponse'  customize = (CreateSAMLProviderResponse <<< customize) { "SAMLProviderArn": Nothing }



newtype CreateServiceLinkedRoleRequest = CreateServiceLinkedRoleRequest 
  { "AWSServiceName" :: (GroupNameType')
  , "Description" :: Maybe (RoleDescriptionType')
  , "CustomSuffix" :: Maybe (CustomSuffixType')
  }
derive instance newtypeCreateServiceLinkedRoleRequest :: Newtype CreateServiceLinkedRoleRequest _
derive instance repGenericCreateServiceLinkedRoleRequest :: Generic CreateServiceLinkedRoleRequest _
instance showCreateServiceLinkedRoleRequest :: Show CreateServiceLinkedRoleRequest where show = genericShow
instance decodeCreateServiceLinkedRoleRequest :: Decode CreateServiceLinkedRoleRequest where decode = genericDecode options
instance encodeCreateServiceLinkedRoleRequest :: Encode CreateServiceLinkedRoleRequest where encode = genericEncode options

-- | Constructs CreateServiceLinkedRoleRequest from required parameters
newCreateServiceLinkedRoleRequest :: GroupNameType' -> CreateServiceLinkedRoleRequest
newCreateServiceLinkedRoleRequest _AWSServiceName = CreateServiceLinkedRoleRequest { "AWSServiceName": _AWSServiceName, "CustomSuffix": Nothing, "Description": Nothing }

-- | Constructs CreateServiceLinkedRoleRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateServiceLinkedRoleRequest' :: GroupNameType' -> ( { "AWSServiceName" :: (GroupNameType') , "Description" :: Maybe (RoleDescriptionType') , "CustomSuffix" :: Maybe (CustomSuffixType') } -> {"AWSServiceName" :: (GroupNameType') , "Description" :: Maybe (RoleDescriptionType') , "CustomSuffix" :: Maybe (CustomSuffixType') } ) -> CreateServiceLinkedRoleRequest
newCreateServiceLinkedRoleRequest' _AWSServiceName customize = (CreateServiceLinkedRoleRequest <<< customize) { "AWSServiceName": _AWSServiceName, "CustomSuffix": Nothing, "Description": Nothing }



newtype CreateServiceLinkedRoleResponse = CreateServiceLinkedRoleResponse 
  { "Role" :: Maybe (Role)
  }
derive instance newtypeCreateServiceLinkedRoleResponse :: Newtype CreateServiceLinkedRoleResponse _
derive instance repGenericCreateServiceLinkedRoleResponse :: Generic CreateServiceLinkedRoleResponse _
instance showCreateServiceLinkedRoleResponse :: Show CreateServiceLinkedRoleResponse where show = genericShow
instance decodeCreateServiceLinkedRoleResponse :: Decode CreateServiceLinkedRoleResponse where decode = genericDecode options
instance encodeCreateServiceLinkedRoleResponse :: Encode CreateServiceLinkedRoleResponse where encode = genericEncode options

-- | Constructs CreateServiceLinkedRoleResponse from required parameters
newCreateServiceLinkedRoleResponse :: CreateServiceLinkedRoleResponse
newCreateServiceLinkedRoleResponse  = CreateServiceLinkedRoleResponse { "Role": Nothing }

-- | Constructs CreateServiceLinkedRoleResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateServiceLinkedRoleResponse' :: ( { "Role" :: Maybe (Role) } -> {"Role" :: Maybe (Role) } ) -> CreateServiceLinkedRoleResponse
newCreateServiceLinkedRoleResponse'  customize = (CreateServiceLinkedRoleResponse <<< customize) { "Role": Nothing }



newtype CreateServiceSpecificCredentialRequest = CreateServiceSpecificCredentialRequest 
  { "UserName" :: (UserNameType')
  , "ServiceName" :: (ServiceName')
  }
derive instance newtypeCreateServiceSpecificCredentialRequest :: Newtype CreateServiceSpecificCredentialRequest _
derive instance repGenericCreateServiceSpecificCredentialRequest :: Generic CreateServiceSpecificCredentialRequest _
instance showCreateServiceSpecificCredentialRequest :: Show CreateServiceSpecificCredentialRequest where show = genericShow
instance decodeCreateServiceSpecificCredentialRequest :: Decode CreateServiceSpecificCredentialRequest where decode = genericDecode options
instance encodeCreateServiceSpecificCredentialRequest :: Encode CreateServiceSpecificCredentialRequest where encode = genericEncode options

-- | Constructs CreateServiceSpecificCredentialRequest from required parameters
newCreateServiceSpecificCredentialRequest :: ServiceName' -> UserNameType' -> CreateServiceSpecificCredentialRequest
newCreateServiceSpecificCredentialRequest _ServiceName _UserName = CreateServiceSpecificCredentialRequest { "ServiceName": _ServiceName, "UserName": _UserName }

-- | Constructs CreateServiceSpecificCredentialRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateServiceSpecificCredentialRequest' :: ServiceName' -> UserNameType' -> ( { "UserName" :: (UserNameType') , "ServiceName" :: (ServiceName') } -> {"UserName" :: (UserNameType') , "ServiceName" :: (ServiceName') } ) -> CreateServiceSpecificCredentialRequest
newCreateServiceSpecificCredentialRequest' _ServiceName _UserName customize = (CreateServiceSpecificCredentialRequest <<< customize) { "ServiceName": _ServiceName, "UserName": _UserName }



newtype CreateServiceSpecificCredentialResponse = CreateServiceSpecificCredentialResponse 
  { "ServiceSpecificCredential" :: Maybe (ServiceSpecificCredential)
  }
derive instance newtypeCreateServiceSpecificCredentialResponse :: Newtype CreateServiceSpecificCredentialResponse _
derive instance repGenericCreateServiceSpecificCredentialResponse :: Generic CreateServiceSpecificCredentialResponse _
instance showCreateServiceSpecificCredentialResponse :: Show CreateServiceSpecificCredentialResponse where show = genericShow
instance decodeCreateServiceSpecificCredentialResponse :: Decode CreateServiceSpecificCredentialResponse where decode = genericDecode options
instance encodeCreateServiceSpecificCredentialResponse :: Encode CreateServiceSpecificCredentialResponse where encode = genericEncode options

-- | Constructs CreateServiceSpecificCredentialResponse from required parameters
newCreateServiceSpecificCredentialResponse :: CreateServiceSpecificCredentialResponse
newCreateServiceSpecificCredentialResponse  = CreateServiceSpecificCredentialResponse { "ServiceSpecificCredential": Nothing }

-- | Constructs CreateServiceSpecificCredentialResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateServiceSpecificCredentialResponse' :: ( { "ServiceSpecificCredential" :: Maybe (ServiceSpecificCredential) } -> {"ServiceSpecificCredential" :: Maybe (ServiceSpecificCredential) } ) -> CreateServiceSpecificCredentialResponse
newCreateServiceSpecificCredentialResponse'  customize = (CreateServiceSpecificCredentialResponse <<< customize) { "ServiceSpecificCredential": Nothing }



newtype CreateUserRequest = CreateUserRequest 
  { "Path" :: Maybe (PathType')
  , "UserName" :: (UserNameType')
  }
derive instance newtypeCreateUserRequest :: Newtype CreateUserRequest _
derive instance repGenericCreateUserRequest :: Generic CreateUserRequest _
instance showCreateUserRequest :: Show CreateUserRequest where show = genericShow
instance decodeCreateUserRequest :: Decode CreateUserRequest where decode = genericDecode options
instance encodeCreateUserRequest :: Encode CreateUserRequest where encode = genericEncode options

-- | Constructs CreateUserRequest from required parameters
newCreateUserRequest :: UserNameType' -> CreateUserRequest
newCreateUserRequest _UserName = CreateUserRequest { "UserName": _UserName, "Path": Nothing }

-- | Constructs CreateUserRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateUserRequest' :: UserNameType' -> ( { "Path" :: Maybe (PathType') , "UserName" :: (UserNameType') } -> {"Path" :: Maybe (PathType') , "UserName" :: (UserNameType') } ) -> CreateUserRequest
newCreateUserRequest' _UserName customize = (CreateUserRequest <<< customize) { "UserName": _UserName, "Path": Nothing }



-- | <p>Contains the response to a successful <a>CreateUser</a> request. </p>
newtype CreateUserResponse = CreateUserResponse 
  { "User" :: Maybe (User)
  }
derive instance newtypeCreateUserResponse :: Newtype CreateUserResponse _
derive instance repGenericCreateUserResponse :: Generic CreateUserResponse _
instance showCreateUserResponse :: Show CreateUserResponse where show = genericShow
instance decodeCreateUserResponse :: Decode CreateUserResponse where decode = genericDecode options
instance encodeCreateUserResponse :: Encode CreateUserResponse where encode = genericEncode options

-- | Constructs CreateUserResponse from required parameters
newCreateUserResponse :: CreateUserResponse
newCreateUserResponse  = CreateUserResponse { "User": Nothing }

-- | Constructs CreateUserResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateUserResponse' :: ( { "User" :: Maybe (User) } -> {"User" :: Maybe (User) } ) -> CreateUserResponse
newCreateUserResponse'  customize = (CreateUserResponse <<< customize) { "User": Nothing }



newtype CreateVirtualMFADeviceRequest = CreateVirtualMFADeviceRequest 
  { "Path" :: Maybe (PathType')
  , "VirtualMFADeviceName" :: (VirtualMFADeviceName')
  }
derive instance newtypeCreateVirtualMFADeviceRequest :: Newtype CreateVirtualMFADeviceRequest _
derive instance repGenericCreateVirtualMFADeviceRequest :: Generic CreateVirtualMFADeviceRequest _
instance showCreateVirtualMFADeviceRequest :: Show CreateVirtualMFADeviceRequest where show = genericShow
instance decodeCreateVirtualMFADeviceRequest :: Decode CreateVirtualMFADeviceRequest where decode = genericDecode options
instance encodeCreateVirtualMFADeviceRequest :: Encode CreateVirtualMFADeviceRequest where encode = genericEncode options

-- | Constructs CreateVirtualMFADeviceRequest from required parameters
newCreateVirtualMFADeviceRequest :: VirtualMFADeviceName' -> CreateVirtualMFADeviceRequest
newCreateVirtualMFADeviceRequest _VirtualMFADeviceName = CreateVirtualMFADeviceRequest { "VirtualMFADeviceName": _VirtualMFADeviceName, "Path": Nothing }

-- | Constructs CreateVirtualMFADeviceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateVirtualMFADeviceRequest' :: VirtualMFADeviceName' -> ( { "Path" :: Maybe (PathType') , "VirtualMFADeviceName" :: (VirtualMFADeviceName') } -> {"Path" :: Maybe (PathType') , "VirtualMFADeviceName" :: (VirtualMFADeviceName') } ) -> CreateVirtualMFADeviceRequest
newCreateVirtualMFADeviceRequest' _VirtualMFADeviceName customize = (CreateVirtualMFADeviceRequest <<< customize) { "VirtualMFADeviceName": _VirtualMFADeviceName, "Path": Nothing }



-- | <p>Contains the response to a successful <a>CreateVirtualMFADevice</a> request. </p>
newtype CreateVirtualMFADeviceResponse = CreateVirtualMFADeviceResponse 
  { "VirtualMFADevice" :: (VirtualMFADevice)
  }
derive instance newtypeCreateVirtualMFADeviceResponse :: Newtype CreateVirtualMFADeviceResponse _
derive instance repGenericCreateVirtualMFADeviceResponse :: Generic CreateVirtualMFADeviceResponse _
instance showCreateVirtualMFADeviceResponse :: Show CreateVirtualMFADeviceResponse where show = genericShow
instance decodeCreateVirtualMFADeviceResponse :: Decode CreateVirtualMFADeviceResponse where decode = genericDecode options
instance encodeCreateVirtualMFADeviceResponse :: Encode CreateVirtualMFADeviceResponse where encode = genericEncode options

-- | Constructs CreateVirtualMFADeviceResponse from required parameters
newCreateVirtualMFADeviceResponse :: VirtualMFADevice -> CreateVirtualMFADeviceResponse
newCreateVirtualMFADeviceResponse _VirtualMFADevice = CreateVirtualMFADeviceResponse { "VirtualMFADevice": _VirtualMFADevice }

-- | Constructs CreateVirtualMFADeviceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateVirtualMFADeviceResponse' :: VirtualMFADevice -> ( { "VirtualMFADevice" :: (VirtualMFADevice) } -> {"VirtualMFADevice" :: (VirtualMFADevice) } ) -> CreateVirtualMFADeviceResponse
newCreateVirtualMFADeviceResponse' _VirtualMFADevice customize = (CreateVirtualMFADeviceResponse <<< customize) { "VirtualMFADevice": _VirtualMFADevice }



-- | <p>The request was rejected because the most recent credential report has expired. To generate a new credential report, use <a>GenerateCredentialReport</a>. For more information about credential report expiration, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html">Getting Credential Reports</a> in the <i>IAM User Guide</i>.</p>
newtype CredentialReportExpiredException = CredentialReportExpiredException 
  { "message" :: Maybe (CredentialReportExpiredExceptionMessage')
  }
derive instance newtypeCredentialReportExpiredException :: Newtype CredentialReportExpiredException _
derive instance repGenericCredentialReportExpiredException :: Generic CredentialReportExpiredException _
instance showCredentialReportExpiredException :: Show CredentialReportExpiredException where show = genericShow
instance decodeCredentialReportExpiredException :: Decode CredentialReportExpiredException where decode = genericDecode options
instance encodeCredentialReportExpiredException :: Encode CredentialReportExpiredException where encode = genericEncode options

-- | Constructs CredentialReportExpiredException from required parameters
newCredentialReportExpiredException :: CredentialReportExpiredException
newCredentialReportExpiredException  = CredentialReportExpiredException { "message": Nothing }

-- | Constructs CredentialReportExpiredException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCredentialReportExpiredException' :: ( { "message" :: Maybe (CredentialReportExpiredExceptionMessage') } -> {"message" :: Maybe (CredentialReportExpiredExceptionMessage') } ) -> CredentialReportExpiredException
newCredentialReportExpiredException'  customize = (CredentialReportExpiredException <<< customize) { "message": Nothing }



-- | <p>The request was rejected because the credential report does not exist. To generate a credential report, use <a>GenerateCredentialReport</a>.</p>
newtype CredentialReportNotPresentException = CredentialReportNotPresentException 
  { "message" :: Maybe (CredentialReportNotPresentExceptionMessage')
  }
derive instance newtypeCredentialReportNotPresentException :: Newtype CredentialReportNotPresentException _
derive instance repGenericCredentialReportNotPresentException :: Generic CredentialReportNotPresentException _
instance showCredentialReportNotPresentException :: Show CredentialReportNotPresentException where show = genericShow
instance decodeCredentialReportNotPresentException :: Decode CredentialReportNotPresentException where decode = genericDecode options
instance encodeCredentialReportNotPresentException :: Encode CredentialReportNotPresentException where encode = genericEncode options

-- | Constructs CredentialReportNotPresentException from required parameters
newCredentialReportNotPresentException :: CredentialReportNotPresentException
newCredentialReportNotPresentException  = CredentialReportNotPresentException { "message": Nothing }

-- | Constructs CredentialReportNotPresentException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCredentialReportNotPresentException' :: ( { "message" :: Maybe (CredentialReportNotPresentExceptionMessage') } -> {"message" :: Maybe (CredentialReportNotPresentExceptionMessage') } ) -> CredentialReportNotPresentException
newCredentialReportNotPresentException'  customize = (CredentialReportNotPresentException <<< customize) { "message": Nothing }



-- | <p>The request was rejected because the credential report is still being generated.</p>
newtype CredentialReportNotReadyException = CredentialReportNotReadyException 
  { "message" :: Maybe (CredentialReportNotReadyExceptionMessage')
  }
derive instance newtypeCredentialReportNotReadyException :: Newtype CredentialReportNotReadyException _
derive instance repGenericCredentialReportNotReadyException :: Generic CredentialReportNotReadyException _
instance showCredentialReportNotReadyException :: Show CredentialReportNotReadyException where show = genericShow
instance decodeCredentialReportNotReadyException :: Decode CredentialReportNotReadyException where decode = genericDecode options
instance encodeCredentialReportNotReadyException :: Encode CredentialReportNotReadyException where encode = genericEncode options

-- | Constructs CredentialReportNotReadyException from required parameters
newCredentialReportNotReadyException :: CredentialReportNotReadyException
newCredentialReportNotReadyException  = CredentialReportNotReadyException { "message": Nothing }

-- | Constructs CredentialReportNotReadyException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCredentialReportNotReadyException' :: ( { "message" :: Maybe (CredentialReportNotReadyExceptionMessage') } -> {"message" :: Maybe (CredentialReportNotReadyExceptionMessage') } ) -> CredentialReportNotReadyException
newCredentialReportNotReadyException'  customize = (CredentialReportNotReadyException <<< customize) { "message": Nothing }



newtype DeactivateMFADeviceRequest = DeactivateMFADeviceRequest 
  { "UserName" :: (ExistingUserNameType')
  , "SerialNumber" :: (SerialNumberType')
  }
derive instance newtypeDeactivateMFADeviceRequest :: Newtype DeactivateMFADeviceRequest _
derive instance repGenericDeactivateMFADeviceRequest :: Generic DeactivateMFADeviceRequest _
instance showDeactivateMFADeviceRequest :: Show DeactivateMFADeviceRequest where show = genericShow
instance decodeDeactivateMFADeviceRequest :: Decode DeactivateMFADeviceRequest where decode = genericDecode options
instance encodeDeactivateMFADeviceRequest :: Encode DeactivateMFADeviceRequest where encode = genericEncode options

-- | Constructs DeactivateMFADeviceRequest from required parameters
newDeactivateMFADeviceRequest :: SerialNumberType' -> ExistingUserNameType' -> DeactivateMFADeviceRequest
newDeactivateMFADeviceRequest _SerialNumber _UserName = DeactivateMFADeviceRequest { "SerialNumber": _SerialNumber, "UserName": _UserName }

-- | Constructs DeactivateMFADeviceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeactivateMFADeviceRequest' :: SerialNumberType' -> ExistingUserNameType' -> ( { "UserName" :: (ExistingUserNameType') , "SerialNumber" :: (SerialNumberType') } -> {"UserName" :: (ExistingUserNameType') , "SerialNumber" :: (SerialNumberType') } ) -> DeactivateMFADeviceRequest
newDeactivateMFADeviceRequest' _SerialNumber _UserName customize = (DeactivateMFADeviceRequest <<< customize) { "SerialNumber": _SerialNumber, "UserName": _UserName }



newtype DeleteAccessKeyRequest = DeleteAccessKeyRequest 
  { "UserName" :: Maybe (ExistingUserNameType')
  , "AccessKeyId" :: (AccessKeyIdType')
  }
derive instance newtypeDeleteAccessKeyRequest :: Newtype DeleteAccessKeyRequest _
derive instance repGenericDeleteAccessKeyRequest :: Generic DeleteAccessKeyRequest _
instance showDeleteAccessKeyRequest :: Show DeleteAccessKeyRequest where show = genericShow
instance decodeDeleteAccessKeyRequest :: Decode DeleteAccessKeyRequest where decode = genericDecode options
instance encodeDeleteAccessKeyRequest :: Encode DeleteAccessKeyRequest where encode = genericEncode options

-- | Constructs DeleteAccessKeyRequest from required parameters
newDeleteAccessKeyRequest :: AccessKeyIdType' -> DeleteAccessKeyRequest
newDeleteAccessKeyRequest _AccessKeyId = DeleteAccessKeyRequest { "AccessKeyId": _AccessKeyId, "UserName": Nothing }

-- | Constructs DeleteAccessKeyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteAccessKeyRequest' :: AccessKeyIdType' -> ( { "UserName" :: Maybe (ExistingUserNameType') , "AccessKeyId" :: (AccessKeyIdType') } -> {"UserName" :: Maybe (ExistingUserNameType') , "AccessKeyId" :: (AccessKeyIdType') } ) -> DeleteAccessKeyRequest
newDeleteAccessKeyRequest' _AccessKeyId customize = (DeleteAccessKeyRequest <<< customize) { "AccessKeyId": _AccessKeyId, "UserName": Nothing }



newtype DeleteAccountAliasRequest = DeleteAccountAliasRequest 
  { "AccountAlias" :: (AccountAliasType')
  }
derive instance newtypeDeleteAccountAliasRequest :: Newtype DeleteAccountAliasRequest _
derive instance repGenericDeleteAccountAliasRequest :: Generic DeleteAccountAliasRequest _
instance showDeleteAccountAliasRequest :: Show DeleteAccountAliasRequest where show = genericShow
instance decodeDeleteAccountAliasRequest :: Decode DeleteAccountAliasRequest where decode = genericDecode options
instance encodeDeleteAccountAliasRequest :: Encode DeleteAccountAliasRequest where encode = genericEncode options

-- | Constructs DeleteAccountAliasRequest from required parameters
newDeleteAccountAliasRequest :: AccountAliasType' -> DeleteAccountAliasRequest
newDeleteAccountAliasRequest _AccountAlias = DeleteAccountAliasRequest { "AccountAlias": _AccountAlias }

-- | Constructs DeleteAccountAliasRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteAccountAliasRequest' :: AccountAliasType' -> ( { "AccountAlias" :: (AccountAliasType') } -> {"AccountAlias" :: (AccountAliasType') } ) -> DeleteAccountAliasRequest
newDeleteAccountAliasRequest' _AccountAlias customize = (DeleteAccountAliasRequest <<< customize) { "AccountAlias": _AccountAlias }



-- | <p>The request was rejected because it attempted to delete a resource that has attached subordinate entities. The error message describes these entities.</p>
newtype DeleteConflictException = DeleteConflictException 
  { "message" :: Maybe (DeleteConflictMessage')
  }
derive instance newtypeDeleteConflictException :: Newtype DeleteConflictException _
derive instance repGenericDeleteConflictException :: Generic DeleteConflictException _
instance showDeleteConflictException :: Show DeleteConflictException where show = genericShow
instance decodeDeleteConflictException :: Decode DeleteConflictException where decode = genericDecode options
instance encodeDeleteConflictException :: Encode DeleteConflictException where encode = genericEncode options

-- | Constructs DeleteConflictException from required parameters
newDeleteConflictException :: DeleteConflictException
newDeleteConflictException  = DeleteConflictException { "message": Nothing }

-- | Constructs DeleteConflictException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteConflictException' :: ( { "message" :: Maybe (DeleteConflictMessage') } -> {"message" :: Maybe (DeleteConflictMessage') } ) -> DeleteConflictException
newDeleteConflictException'  customize = (DeleteConflictException <<< customize) { "message": Nothing }



newtype DeleteGroupPolicyRequest = DeleteGroupPolicyRequest 
  { "GroupName" :: (GroupNameType')
  , "PolicyName" :: (PolicyNameType')
  }
derive instance newtypeDeleteGroupPolicyRequest :: Newtype DeleteGroupPolicyRequest _
derive instance repGenericDeleteGroupPolicyRequest :: Generic DeleteGroupPolicyRequest _
instance showDeleteGroupPolicyRequest :: Show DeleteGroupPolicyRequest where show = genericShow
instance decodeDeleteGroupPolicyRequest :: Decode DeleteGroupPolicyRequest where decode = genericDecode options
instance encodeDeleteGroupPolicyRequest :: Encode DeleteGroupPolicyRequest where encode = genericEncode options

-- | Constructs DeleteGroupPolicyRequest from required parameters
newDeleteGroupPolicyRequest :: GroupNameType' -> PolicyNameType' -> DeleteGroupPolicyRequest
newDeleteGroupPolicyRequest _GroupName _PolicyName = DeleteGroupPolicyRequest { "GroupName": _GroupName, "PolicyName": _PolicyName }

-- | Constructs DeleteGroupPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteGroupPolicyRequest' :: GroupNameType' -> PolicyNameType' -> ( { "GroupName" :: (GroupNameType') , "PolicyName" :: (PolicyNameType') } -> {"GroupName" :: (GroupNameType') , "PolicyName" :: (PolicyNameType') } ) -> DeleteGroupPolicyRequest
newDeleteGroupPolicyRequest' _GroupName _PolicyName customize = (DeleteGroupPolicyRequest <<< customize) { "GroupName": _GroupName, "PolicyName": _PolicyName }



newtype DeleteGroupRequest = DeleteGroupRequest 
  { "GroupName" :: (GroupNameType')
  }
derive instance newtypeDeleteGroupRequest :: Newtype DeleteGroupRequest _
derive instance repGenericDeleteGroupRequest :: Generic DeleteGroupRequest _
instance showDeleteGroupRequest :: Show DeleteGroupRequest where show = genericShow
instance decodeDeleteGroupRequest :: Decode DeleteGroupRequest where decode = genericDecode options
instance encodeDeleteGroupRequest :: Encode DeleteGroupRequest where encode = genericEncode options

-- | Constructs DeleteGroupRequest from required parameters
newDeleteGroupRequest :: GroupNameType' -> DeleteGroupRequest
newDeleteGroupRequest _GroupName = DeleteGroupRequest { "GroupName": _GroupName }

-- | Constructs DeleteGroupRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteGroupRequest' :: GroupNameType' -> ( { "GroupName" :: (GroupNameType') } -> {"GroupName" :: (GroupNameType') } ) -> DeleteGroupRequest
newDeleteGroupRequest' _GroupName customize = (DeleteGroupRequest <<< customize) { "GroupName": _GroupName }



newtype DeleteInstanceProfileRequest = DeleteInstanceProfileRequest 
  { "InstanceProfileName" :: (InstanceProfileNameType')
  }
derive instance newtypeDeleteInstanceProfileRequest :: Newtype DeleteInstanceProfileRequest _
derive instance repGenericDeleteInstanceProfileRequest :: Generic DeleteInstanceProfileRequest _
instance showDeleteInstanceProfileRequest :: Show DeleteInstanceProfileRequest where show = genericShow
instance decodeDeleteInstanceProfileRequest :: Decode DeleteInstanceProfileRequest where decode = genericDecode options
instance encodeDeleteInstanceProfileRequest :: Encode DeleteInstanceProfileRequest where encode = genericEncode options

-- | Constructs DeleteInstanceProfileRequest from required parameters
newDeleteInstanceProfileRequest :: InstanceProfileNameType' -> DeleteInstanceProfileRequest
newDeleteInstanceProfileRequest _InstanceProfileName = DeleteInstanceProfileRequest { "InstanceProfileName": _InstanceProfileName }

-- | Constructs DeleteInstanceProfileRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteInstanceProfileRequest' :: InstanceProfileNameType' -> ( { "InstanceProfileName" :: (InstanceProfileNameType') } -> {"InstanceProfileName" :: (InstanceProfileNameType') } ) -> DeleteInstanceProfileRequest
newDeleteInstanceProfileRequest' _InstanceProfileName customize = (DeleteInstanceProfileRequest <<< customize) { "InstanceProfileName": _InstanceProfileName }



newtype DeleteLoginProfileRequest = DeleteLoginProfileRequest 
  { "UserName" :: (UserNameType')
  }
derive instance newtypeDeleteLoginProfileRequest :: Newtype DeleteLoginProfileRequest _
derive instance repGenericDeleteLoginProfileRequest :: Generic DeleteLoginProfileRequest _
instance showDeleteLoginProfileRequest :: Show DeleteLoginProfileRequest where show = genericShow
instance decodeDeleteLoginProfileRequest :: Decode DeleteLoginProfileRequest where decode = genericDecode options
instance encodeDeleteLoginProfileRequest :: Encode DeleteLoginProfileRequest where encode = genericEncode options

-- | Constructs DeleteLoginProfileRequest from required parameters
newDeleteLoginProfileRequest :: UserNameType' -> DeleteLoginProfileRequest
newDeleteLoginProfileRequest _UserName = DeleteLoginProfileRequest { "UserName": _UserName }

-- | Constructs DeleteLoginProfileRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteLoginProfileRequest' :: UserNameType' -> ( { "UserName" :: (UserNameType') } -> {"UserName" :: (UserNameType') } ) -> DeleteLoginProfileRequest
newDeleteLoginProfileRequest' _UserName customize = (DeleteLoginProfileRequest <<< customize) { "UserName": _UserName }



newtype DeleteOpenIDConnectProviderRequest = DeleteOpenIDConnectProviderRequest 
  { "OpenIDConnectProviderArn" :: (ArnType')
  }
derive instance newtypeDeleteOpenIDConnectProviderRequest :: Newtype DeleteOpenIDConnectProviderRequest _
derive instance repGenericDeleteOpenIDConnectProviderRequest :: Generic DeleteOpenIDConnectProviderRequest _
instance showDeleteOpenIDConnectProviderRequest :: Show DeleteOpenIDConnectProviderRequest where show = genericShow
instance decodeDeleteOpenIDConnectProviderRequest :: Decode DeleteOpenIDConnectProviderRequest where decode = genericDecode options
instance encodeDeleteOpenIDConnectProviderRequest :: Encode DeleteOpenIDConnectProviderRequest where encode = genericEncode options

-- | Constructs DeleteOpenIDConnectProviderRequest from required parameters
newDeleteOpenIDConnectProviderRequest :: ArnType' -> DeleteOpenIDConnectProviderRequest
newDeleteOpenIDConnectProviderRequest _OpenIDConnectProviderArn = DeleteOpenIDConnectProviderRequest { "OpenIDConnectProviderArn": _OpenIDConnectProviderArn }

-- | Constructs DeleteOpenIDConnectProviderRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteOpenIDConnectProviderRequest' :: ArnType' -> ( { "OpenIDConnectProviderArn" :: (ArnType') } -> {"OpenIDConnectProviderArn" :: (ArnType') } ) -> DeleteOpenIDConnectProviderRequest
newDeleteOpenIDConnectProviderRequest' _OpenIDConnectProviderArn customize = (DeleteOpenIDConnectProviderRequest <<< customize) { "OpenIDConnectProviderArn": _OpenIDConnectProviderArn }



newtype DeletePolicyRequest = DeletePolicyRequest 
  { "PolicyArn" :: (ArnType')
  }
derive instance newtypeDeletePolicyRequest :: Newtype DeletePolicyRequest _
derive instance repGenericDeletePolicyRequest :: Generic DeletePolicyRequest _
instance showDeletePolicyRequest :: Show DeletePolicyRequest where show = genericShow
instance decodeDeletePolicyRequest :: Decode DeletePolicyRequest where decode = genericDecode options
instance encodeDeletePolicyRequest :: Encode DeletePolicyRequest where encode = genericEncode options

-- | Constructs DeletePolicyRequest from required parameters
newDeletePolicyRequest :: ArnType' -> DeletePolicyRequest
newDeletePolicyRequest _PolicyArn = DeletePolicyRequest { "PolicyArn": _PolicyArn }

-- | Constructs DeletePolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeletePolicyRequest' :: ArnType' -> ( { "PolicyArn" :: (ArnType') } -> {"PolicyArn" :: (ArnType') } ) -> DeletePolicyRequest
newDeletePolicyRequest' _PolicyArn customize = (DeletePolicyRequest <<< customize) { "PolicyArn": _PolicyArn }



newtype DeletePolicyVersionRequest = DeletePolicyVersionRequest 
  { "PolicyArn" :: (ArnType')
  , "VersionId" :: (PolicyVersionIdType')
  }
derive instance newtypeDeletePolicyVersionRequest :: Newtype DeletePolicyVersionRequest _
derive instance repGenericDeletePolicyVersionRequest :: Generic DeletePolicyVersionRequest _
instance showDeletePolicyVersionRequest :: Show DeletePolicyVersionRequest where show = genericShow
instance decodeDeletePolicyVersionRequest :: Decode DeletePolicyVersionRequest where decode = genericDecode options
instance encodeDeletePolicyVersionRequest :: Encode DeletePolicyVersionRequest where encode = genericEncode options

-- | Constructs DeletePolicyVersionRequest from required parameters
newDeletePolicyVersionRequest :: ArnType' -> PolicyVersionIdType' -> DeletePolicyVersionRequest
newDeletePolicyVersionRequest _PolicyArn _VersionId = DeletePolicyVersionRequest { "PolicyArn": _PolicyArn, "VersionId": _VersionId }

-- | Constructs DeletePolicyVersionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeletePolicyVersionRequest' :: ArnType' -> PolicyVersionIdType' -> ( { "PolicyArn" :: (ArnType') , "VersionId" :: (PolicyVersionIdType') } -> {"PolicyArn" :: (ArnType') , "VersionId" :: (PolicyVersionIdType') } ) -> DeletePolicyVersionRequest
newDeletePolicyVersionRequest' _PolicyArn _VersionId customize = (DeletePolicyVersionRequest <<< customize) { "PolicyArn": _PolicyArn, "VersionId": _VersionId }



newtype DeleteRolePolicyRequest = DeleteRolePolicyRequest 
  { "RoleName" :: (RoleNameType')
  , "PolicyName" :: (PolicyNameType')
  }
derive instance newtypeDeleteRolePolicyRequest :: Newtype DeleteRolePolicyRequest _
derive instance repGenericDeleteRolePolicyRequest :: Generic DeleteRolePolicyRequest _
instance showDeleteRolePolicyRequest :: Show DeleteRolePolicyRequest where show = genericShow
instance decodeDeleteRolePolicyRequest :: Decode DeleteRolePolicyRequest where decode = genericDecode options
instance encodeDeleteRolePolicyRequest :: Encode DeleteRolePolicyRequest where encode = genericEncode options

-- | Constructs DeleteRolePolicyRequest from required parameters
newDeleteRolePolicyRequest :: PolicyNameType' -> RoleNameType' -> DeleteRolePolicyRequest
newDeleteRolePolicyRequest _PolicyName _RoleName = DeleteRolePolicyRequest { "PolicyName": _PolicyName, "RoleName": _RoleName }

-- | Constructs DeleteRolePolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteRolePolicyRequest' :: PolicyNameType' -> RoleNameType' -> ( { "RoleName" :: (RoleNameType') , "PolicyName" :: (PolicyNameType') } -> {"RoleName" :: (RoleNameType') , "PolicyName" :: (PolicyNameType') } ) -> DeleteRolePolicyRequest
newDeleteRolePolicyRequest' _PolicyName _RoleName customize = (DeleteRolePolicyRequest <<< customize) { "PolicyName": _PolicyName, "RoleName": _RoleName }



newtype DeleteRoleRequest = DeleteRoleRequest 
  { "RoleName" :: (RoleNameType')
  }
derive instance newtypeDeleteRoleRequest :: Newtype DeleteRoleRequest _
derive instance repGenericDeleteRoleRequest :: Generic DeleteRoleRequest _
instance showDeleteRoleRequest :: Show DeleteRoleRequest where show = genericShow
instance decodeDeleteRoleRequest :: Decode DeleteRoleRequest where decode = genericDecode options
instance encodeDeleteRoleRequest :: Encode DeleteRoleRequest where encode = genericEncode options

-- | Constructs DeleteRoleRequest from required parameters
newDeleteRoleRequest :: RoleNameType' -> DeleteRoleRequest
newDeleteRoleRequest _RoleName = DeleteRoleRequest { "RoleName": _RoleName }

-- | Constructs DeleteRoleRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteRoleRequest' :: RoleNameType' -> ( { "RoleName" :: (RoleNameType') } -> {"RoleName" :: (RoleNameType') } ) -> DeleteRoleRequest
newDeleteRoleRequest' _RoleName customize = (DeleteRoleRequest <<< customize) { "RoleName": _RoleName }



newtype DeleteSAMLProviderRequest = DeleteSAMLProviderRequest 
  { "SAMLProviderArn" :: (ArnType')
  }
derive instance newtypeDeleteSAMLProviderRequest :: Newtype DeleteSAMLProviderRequest _
derive instance repGenericDeleteSAMLProviderRequest :: Generic DeleteSAMLProviderRequest _
instance showDeleteSAMLProviderRequest :: Show DeleteSAMLProviderRequest where show = genericShow
instance decodeDeleteSAMLProviderRequest :: Decode DeleteSAMLProviderRequest where decode = genericDecode options
instance encodeDeleteSAMLProviderRequest :: Encode DeleteSAMLProviderRequest where encode = genericEncode options

-- | Constructs DeleteSAMLProviderRequest from required parameters
newDeleteSAMLProviderRequest :: ArnType' -> DeleteSAMLProviderRequest
newDeleteSAMLProviderRequest _SAMLProviderArn = DeleteSAMLProviderRequest { "SAMLProviderArn": _SAMLProviderArn }

-- | Constructs DeleteSAMLProviderRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteSAMLProviderRequest' :: ArnType' -> ( { "SAMLProviderArn" :: (ArnType') } -> {"SAMLProviderArn" :: (ArnType') } ) -> DeleteSAMLProviderRequest
newDeleteSAMLProviderRequest' _SAMLProviderArn customize = (DeleteSAMLProviderRequest <<< customize) { "SAMLProviderArn": _SAMLProviderArn }



newtype DeleteSSHPublicKeyRequest = DeleteSSHPublicKeyRequest 
  { "UserName" :: (UserNameType')
  , "SSHPublicKeyId" :: (PublicKeyIdType')
  }
derive instance newtypeDeleteSSHPublicKeyRequest :: Newtype DeleteSSHPublicKeyRequest _
derive instance repGenericDeleteSSHPublicKeyRequest :: Generic DeleteSSHPublicKeyRequest _
instance showDeleteSSHPublicKeyRequest :: Show DeleteSSHPublicKeyRequest where show = genericShow
instance decodeDeleteSSHPublicKeyRequest :: Decode DeleteSSHPublicKeyRequest where decode = genericDecode options
instance encodeDeleteSSHPublicKeyRequest :: Encode DeleteSSHPublicKeyRequest where encode = genericEncode options

-- | Constructs DeleteSSHPublicKeyRequest from required parameters
newDeleteSSHPublicKeyRequest :: PublicKeyIdType' -> UserNameType' -> DeleteSSHPublicKeyRequest
newDeleteSSHPublicKeyRequest _SSHPublicKeyId _UserName = DeleteSSHPublicKeyRequest { "SSHPublicKeyId": _SSHPublicKeyId, "UserName": _UserName }

-- | Constructs DeleteSSHPublicKeyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteSSHPublicKeyRequest' :: PublicKeyIdType' -> UserNameType' -> ( { "UserName" :: (UserNameType') , "SSHPublicKeyId" :: (PublicKeyIdType') } -> {"UserName" :: (UserNameType') , "SSHPublicKeyId" :: (PublicKeyIdType') } ) -> DeleteSSHPublicKeyRequest
newDeleteSSHPublicKeyRequest' _SSHPublicKeyId _UserName customize = (DeleteSSHPublicKeyRequest <<< customize) { "SSHPublicKeyId": _SSHPublicKeyId, "UserName": _UserName }



newtype DeleteServerCertificateRequest = DeleteServerCertificateRequest 
  { "ServerCertificateName" :: (ServerCertificateNameType')
  }
derive instance newtypeDeleteServerCertificateRequest :: Newtype DeleteServerCertificateRequest _
derive instance repGenericDeleteServerCertificateRequest :: Generic DeleteServerCertificateRequest _
instance showDeleteServerCertificateRequest :: Show DeleteServerCertificateRequest where show = genericShow
instance decodeDeleteServerCertificateRequest :: Decode DeleteServerCertificateRequest where decode = genericDecode options
instance encodeDeleteServerCertificateRequest :: Encode DeleteServerCertificateRequest where encode = genericEncode options

-- | Constructs DeleteServerCertificateRequest from required parameters
newDeleteServerCertificateRequest :: ServerCertificateNameType' -> DeleteServerCertificateRequest
newDeleteServerCertificateRequest _ServerCertificateName = DeleteServerCertificateRequest { "ServerCertificateName": _ServerCertificateName }

-- | Constructs DeleteServerCertificateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteServerCertificateRequest' :: ServerCertificateNameType' -> ( { "ServerCertificateName" :: (ServerCertificateNameType') } -> {"ServerCertificateName" :: (ServerCertificateNameType') } ) -> DeleteServerCertificateRequest
newDeleteServerCertificateRequest' _ServerCertificateName customize = (DeleteServerCertificateRequest <<< customize) { "ServerCertificateName": _ServerCertificateName }



newtype DeleteServiceLinkedRoleRequest = DeleteServiceLinkedRoleRequest 
  { "RoleName" :: (RoleNameType')
  }
derive instance newtypeDeleteServiceLinkedRoleRequest :: Newtype DeleteServiceLinkedRoleRequest _
derive instance repGenericDeleteServiceLinkedRoleRequest :: Generic DeleteServiceLinkedRoleRequest _
instance showDeleteServiceLinkedRoleRequest :: Show DeleteServiceLinkedRoleRequest where show = genericShow
instance decodeDeleteServiceLinkedRoleRequest :: Decode DeleteServiceLinkedRoleRequest where decode = genericDecode options
instance encodeDeleteServiceLinkedRoleRequest :: Encode DeleteServiceLinkedRoleRequest where encode = genericEncode options

-- | Constructs DeleteServiceLinkedRoleRequest from required parameters
newDeleteServiceLinkedRoleRequest :: RoleNameType' -> DeleteServiceLinkedRoleRequest
newDeleteServiceLinkedRoleRequest _RoleName = DeleteServiceLinkedRoleRequest { "RoleName": _RoleName }

-- | Constructs DeleteServiceLinkedRoleRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteServiceLinkedRoleRequest' :: RoleNameType' -> ( { "RoleName" :: (RoleNameType') } -> {"RoleName" :: (RoleNameType') } ) -> DeleteServiceLinkedRoleRequest
newDeleteServiceLinkedRoleRequest' _RoleName customize = (DeleteServiceLinkedRoleRequest <<< customize) { "RoleName": _RoleName }



newtype DeleteServiceLinkedRoleResponse = DeleteServiceLinkedRoleResponse 
  { "DeletionTaskId" :: (DeletionTaskIdType)
  }
derive instance newtypeDeleteServiceLinkedRoleResponse :: Newtype DeleteServiceLinkedRoleResponse _
derive instance repGenericDeleteServiceLinkedRoleResponse :: Generic DeleteServiceLinkedRoleResponse _
instance showDeleteServiceLinkedRoleResponse :: Show DeleteServiceLinkedRoleResponse where show = genericShow
instance decodeDeleteServiceLinkedRoleResponse :: Decode DeleteServiceLinkedRoleResponse where decode = genericDecode options
instance encodeDeleteServiceLinkedRoleResponse :: Encode DeleteServiceLinkedRoleResponse where encode = genericEncode options

-- | Constructs DeleteServiceLinkedRoleResponse from required parameters
newDeleteServiceLinkedRoleResponse :: DeletionTaskIdType -> DeleteServiceLinkedRoleResponse
newDeleteServiceLinkedRoleResponse _DeletionTaskId = DeleteServiceLinkedRoleResponse { "DeletionTaskId": _DeletionTaskId }

-- | Constructs DeleteServiceLinkedRoleResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteServiceLinkedRoleResponse' :: DeletionTaskIdType -> ( { "DeletionTaskId" :: (DeletionTaskIdType) } -> {"DeletionTaskId" :: (DeletionTaskIdType) } ) -> DeleteServiceLinkedRoleResponse
newDeleteServiceLinkedRoleResponse' _DeletionTaskId customize = (DeleteServiceLinkedRoleResponse <<< customize) { "DeletionTaskId": _DeletionTaskId }



newtype DeleteServiceSpecificCredentialRequest = DeleteServiceSpecificCredentialRequest 
  { "UserName" :: Maybe (UserNameType')
  , "ServiceSpecificCredentialId" :: (ServiceSpecificCredentialId')
  }
derive instance newtypeDeleteServiceSpecificCredentialRequest :: Newtype DeleteServiceSpecificCredentialRequest _
derive instance repGenericDeleteServiceSpecificCredentialRequest :: Generic DeleteServiceSpecificCredentialRequest _
instance showDeleteServiceSpecificCredentialRequest :: Show DeleteServiceSpecificCredentialRequest where show = genericShow
instance decodeDeleteServiceSpecificCredentialRequest :: Decode DeleteServiceSpecificCredentialRequest where decode = genericDecode options
instance encodeDeleteServiceSpecificCredentialRequest :: Encode DeleteServiceSpecificCredentialRequest where encode = genericEncode options

-- | Constructs DeleteServiceSpecificCredentialRequest from required parameters
newDeleteServiceSpecificCredentialRequest :: ServiceSpecificCredentialId' -> DeleteServiceSpecificCredentialRequest
newDeleteServiceSpecificCredentialRequest _ServiceSpecificCredentialId = DeleteServiceSpecificCredentialRequest { "ServiceSpecificCredentialId": _ServiceSpecificCredentialId, "UserName": Nothing }

-- | Constructs DeleteServiceSpecificCredentialRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteServiceSpecificCredentialRequest' :: ServiceSpecificCredentialId' -> ( { "UserName" :: Maybe (UserNameType') , "ServiceSpecificCredentialId" :: (ServiceSpecificCredentialId') } -> {"UserName" :: Maybe (UserNameType') , "ServiceSpecificCredentialId" :: (ServiceSpecificCredentialId') } ) -> DeleteServiceSpecificCredentialRequest
newDeleteServiceSpecificCredentialRequest' _ServiceSpecificCredentialId customize = (DeleteServiceSpecificCredentialRequest <<< customize) { "ServiceSpecificCredentialId": _ServiceSpecificCredentialId, "UserName": Nothing }



newtype DeleteSigningCertificateRequest = DeleteSigningCertificateRequest 
  { "UserName" :: Maybe (ExistingUserNameType')
  , "CertificateId" :: (CertificateIdType')
  }
derive instance newtypeDeleteSigningCertificateRequest :: Newtype DeleteSigningCertificateRequest _
derive instance repGenericDeleteSigningCertificateRequest :: Generic DeleteSigningCertificateRequest _
instance showDeleteSigningCertificateRequest :: Show DeleteSigningCertificateRequest where show = genericShow
instance decodeDeleteSigningCertificateRequest :: Decode DeleteSigningCertificateRequest where decode = genericDecode options
instance encodeDeleteSigningCertificateRequest :: Encode DeleteSigningCertificateRequest where encode = genericEncode options

-- | Constructs DeleteSigningCertificateRequest from required parameters
newDeleteSigningCertificateRequest :: CertificateIdType' -> DeleteSigningCertificateRequest
newDeleteSigningCertificateRequest _CertificateId = DeleteSigningCertificateRequest { "CertificateId": _CertificateId, "UserName": Nothing }

-- | Constructs DeleteSigningCertificateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteSigningCertificateRequest' :: CertificateIdType' -> ( { "UserName" :: Maybe (ExistingUserNameType') , "CertificateId" :: (CertificateIdType') } -> {"UserName" :: Maybe (ExistingUserNameType') , "CertificateId" :: (CertificateIdType') } ) -> DeleteSigningCertificateRequest
newDeleteSigningCertificateRequest' _CertificateId customize = (DeleteSigningCertificateRequest <<< customize) { "CertificateId": _CertificateId, "UserName": Nothing }



newtype DeleteUserPolicyRequest = DeleteUserPolicyRequest 
  { "UserName" :: (ExistingUserNameType')
  , "PolicyName" :: (PolicyNameType')
  }
derive instance newtypeDeleteUserPolicyRequest :: Newtype DeleteUserPolicyRequest _
derive instance repGenericDeleteUserPolicyRequest :: Generic DeleteUserPolicyRequest _
instance showDeleteUserPolicyRequest :: Show DeleteUserPolicyRequest where show = genericShow
instance decodeDeleteUserPolicyRequest :: Decode DeleteUserPolicyRequest where decode = genericDecode options
instance encodeDeleteUserPolicyRequest :: Encode DeleteUserPolicyRequest where encode = genericEncode options

-- | Constructs DeleteUserPolicyRequest from required parameters
newDeleteUserPolicyRequest :: PolicyNameType' -> ExistingUserNameType' -> DeleteUserPolicyRequest
newDeleteUserPolicyRequest _PolicyName _UserName = DeleteUserPolicyRequest { "PolicyName": _PolicyName, "UserName": _UserName }

-- | Constructs DeleteUserPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteUserPolicyRequest' :: PolicyNameType' -> ExistingUserNameType' -> ( { "UserName" :: (ExistingUserNameType') , "PolicyName" :: (PolicyNameType') } -> {"UserName" :: (ExistingUserNameType') , "PolicyName" :: (PolicyNameType') } ) -> DeleteUserPolicyRequest
newDeleteUserPolicyRequest' _PolicyName _UserName customize = (DeleteUserPolicyRequest <<< customize) { "PolicyName": _PolicyName, "UserName": _UserName }



newtype DeleteUserRequest = DeleteUserRequest 
  { "UserName" :: (ExistingUserNameType')
  }
derive instance newtypeDeleteUserRequest :: Newtype DeleteUserRequest _
derive instance repGenericDeleteUserRequest :: Generic DeleteUserRequest _
instance showDeleteUserRequest :: Show DeleteUserRequest where show = genericShow
instance decodeDeleteUserRequest :: Decode DeleteUserRequest where decode = genericDecode options
instance encodeDeleteUserRequest :: Encode DeleteUserRequest where encode = genericEncode options

-- | Constructs DeleteUserRequest from required parameters
newDeleteUserRequest :: ExistingUserNameType' -> DeleteUserRequest
newDeleteUserRequest _UserName = DeleteUserRequest { "UserName": _UserName }

-- | Constructs DeleteUserRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteUserRequest' :: ExistingUserNameType' -> ( { "UserName" :: (ExistingUserNameType') } -> {"UserName" :: (ExistingUserNameType') } ) -> DeleteUserRequest
newDeleteUserRequest' _UserName customize = (DeleteUserRequest <<< customize) { "UserName": _UserName }



newtype DeleteVirtualMFADeviceRequest = DeleteVirtualMFADeviceRequest 
  { "SerialNumber" :: (SerialNumberType')
  }
derive instance newtypeDeleteVirtualMFADeviceRequest :: Newtype DeleteVirtualMFADeviceRequest _
derive instance repGenericDeleteVirtualMFADeviceRequest :: Generic DeleteVirtualMFADeviceRequest _
instance showDeleteVirtualMFADeviceRequest :: Show DeleteVirtualMFADeviceRequest where show = genericShow
instance decodeDeleteVirtualMFADeviceRequest :: Decode DeleteVirtualMFADeviceRequest where decode = genericDecode options
instance encodeDeleteVirtualMFADeviceRequest :: Encode DeleteVirtualMFADeviceRequest where encode = genericEncode options

-- | Constructs DeleteVirtualMFADeviceRequest from required parameters
newDeleteVirtualMFADeviceRequest :: SerialNumberType' -> DeleteVirtualMFADeviceRequest
newDeleteVirtualMFADeviceRequest _SerialNumber = DeleteVirtualMFADeviceRequest { "SerialNumber": _SerialNumber }

-- | Constructs DeleteVirtualMFADeviceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteVirtualMFADeviceRequest' :: SerialNumberType' -> ( { "SerialNumber" :: (SerialNumberType') } -> {"SerialNumber" :: (SerialNumberType') } ) -> DeleteVirtualMFADeviceRequest
newDeleteVirtualMFADeviceRequest' _SerialNumber customize = (DeleteVirtualMFADeviceRequest <<< customize) { "SerialNumber": _SerialNumber }



-- | <p>The reason that the service-linked role deletion failed.</p> <p>This data type is used as a response element in the <a>GetServiceLinkedRoleDeletionStatus</a> operation.</p>
newtype DeletionTaskFailureReasonType = DeletionTaskFailureReasonType 
  { "Reason" :: Maybe (ReasonType)
  , "RoleUsageList" :: Maybe (RoleUsageListType)
  }
derive instance newtypeDeletionTaskFailureReasonType :: Newtype DeletionTaskFailureReasonType _
derive instance repGenericDeletionTaskFailureReasonType :: Generic DeletionTaskFailureReasonType _
instance showDeletionTaskFailureReasonType :: Show DeletionTaskFailureReasonType where show = genericShow
instance decodeDeletionTaskFailureReasonType :: Decode DeletionTaskFailureReasonType where decode = genericDecode options
instance encodeDeletionTaskFailureReasonType :: Encode DeletionTaskFailureReasonType where encode = genericEncode options

-- | Constructs DeletionTaskFailureReasonType from required parameters
newDeletionTaskFailureReasonType :: DeletionTaskFailureReasonType
newDeletionTaskFailureReasonType  = DeletionTaskFailureReasonType { "Reason": Nothing, "RoleUsageList": Nothing }

-- | Constructs DeletionTaskFailureReasonType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeletionTaskFailureReasonType' :: ( { "Reason" :: Maybe (ReasonType) , "RoleUsageList" :: Maybe (RoleUsageListType) } -> {"Reason" :: Maybe (ReasonType) , "RoleUsageList" :: Maybe (RoleUsageListType) } ) -> DeletionTaskFailureReasonType
newDeletionTaskFailureReasonType'  customize = (DeletionTaskFailureReasonType <<< customize) { "Reason": Nothing, "RoleUsageList": Nothing }



newtype DeletionTaskIdType = DeletionTaskIdType String
derive instance newtypeDeletionTaskIdType :: Newtype DeletionTaskIdType _
derive instance repGenericDeletionTaskIdType :: Generic DeletionTaskIdType _
instance showDeletionTaskIdType :: Show DeletionTaskIdType where show = genericShow
instance decodeDeletionTaskIdType :: Decode DeletionTaskIdType where decode = genericDecode options
instance encodeDeletionTaskIdType :: Encode DeletionTaskIdType where encode = genericEncode options



newtype DeletionTaskStatusType = DeletionTaskStatusType String
derive instance newtypeDeletionTaskStatusType :: Newtype DeletionTaskStatusType _
derive instance repGenericDeletionTaskStatusType :: Generic DeletionTaskStatusType _
instance showDeletionTaskStatusType :: Show DeletionTaskStatusType where show = genericShow
instance decodeDeletionTaskStatusType :: Decode DeletionTaskStatusType where decode = genericDecode options
instance encodeDeletionTaskStatusType :: Encode DeletionTaskStatusType where encode = genericEncode options



newtype DetachGroupPolicyRequest = DetachGroupPolicyRequest 
  { "GroupName" :: (GroupNameType')
  , "PolicyArn" :: (ArnType')
  }
derive instance newtypeDetachGroupPolicyRequest :: Newtype DetachGroupPolicyRequest _
derive instance repGenericDetachGroupPolicyRequest :: Generic DetachGroupPolicyRequest _
instance showDetachGroupPolicyRequest :: Show DetachGroupPolicyRequest where show = genericShow
instance decodeDetachGroupPolicyRequest :: Decode DetachGroupPolicyRequest where decode = genericDecode options
instance encodeDetachGroupPolicyRequest :: Encode DetachGroupPolicyRequest where encode = genericEncode options

-- | Constructs DetachGroupPolicyRequest from required parameters
newDetachGroupPolicyRequest :: GroupNameType' -> ArnType' -> DetachGroupPolicyRequest
newDetachGroupPolicyRequest _GroupName _PolicyArn = DetachGroupPolicyRequest { "GroupName": _GroupName, "PolicyArn": _PolicyArn }

-- | Constructs DetachGroupPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDetachGroupPolicyRequest' :: GroupNameType' -> ArnType' -> ( { "GroupName" :: (GroupNameType') , "PolicyArn" :: (ArnType') } -> {"GroupName" :: (GroupNameType') , "PolicyArn" :: (ArnType') } ) -> DetachGroupPolicyRequest
newDetachGroupPolicyRequest' _GroupName _PolicyArn customize = (DetachGroupPolicyRequest <<< customize) { "GroupName": _GroupName, "PolicyArn": _PolicyArn }



newtype DetachRolePolicyRequest = DetachRolePolicyRequest 
  { "RoleName" :: (RoleNameType')
  , "PolicyArn" :: (ArnType')
  }
derive instance newtypeDetachRolePolicyRequest :: Newtype DetachRolePolicyRequest _
derive instance repGenericDetachRolePolicyRequest :: Generic DetachRolePolicyRequest _
instance showDetachRolePolicyRequest :: Show DetachRolePolicyRequest where show = genericShow
instance decodeDetachRolePolicyRequest :: Decode DetachRolePolicyRequest where decode = genericDecode options
instance encodeDetachRolePolicyRequest :: Encode DetachRolePolicyRequest where encode = genericEncode options

-- | Constructs DetachRolePolicyRequest from required parameters
newDetachRolePolicyRequest :: ArnType' -> RoleNameType' -> DetachRolePolicyRequest
newDetachRolePolicyRequest _PolicyArn _RoleName = DetachRolePolicyRequest { "PolicyArn": _PolicyArn, "RoleName": _RoleName }

-- | Constructs DetachRolePolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDetachRolePolicyRequest' :: ArnType' -> RoleNameType' -> ( { "RoleName" :: (RoleNameType') , "PolicyArn" :: (ArnType') } -> {"RoleName" :: (RoleNameType') , "PolicyArn" :: (ArnType') } ) -> DetachRolePolicyRequest
newDetachRolePolicyRequest' _PolicyArn _RoleName customize = (DetachRolePolicyRequest <<< customize) { "PolicyArn": _PolicyArn, "RoleName": _RoleName }



newtype DetachUserPolicyRequest = DetachUserPolicyRequest 
  { "UserName" :: (UserNameType')
  , "PolicyArn" :: (ArnType')
  }
derive instance newtypeDetachUserPolicyRequest :: Newtype DetachUserPolicyRequest _
derive instance repGenericDetachUserPolicyRequest :: Generic DetachUserPolicyRequest _
instance showDetachUserPolicyRequest :: Show DetachUserPolicyRequest where show = genericShow
instance decodeDetachUserPolicyRequest :: Decode DetachUserPolicyRequest where decode = genericDecode options
instance encodeDetachUserPolicyRequest :: Encode DetachUserPolicyRequest where encode = genericEncode options

-- | Constructs DetachUserPolicyRequest from required parameters
newDetachUserPolicyRequest :: ArnType' -> UserNameType' -> DetachUserPolicyRequest
newDetachUserPolicyRequest _PolicyArn _UserName = DetachUserPolicyRequest { "PolicyArn": _PolicyArn, "UserName": _UserName }

-- | Constructs DetachUserPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDetachUserPolicyRequest' :: ArnType' -> UserNameType' -> ( { "UserName" :: (UserNameType') , "PolicyArn" :: (ArnType') } -> {"UserName" :: (UserNameType') , "PolicyArn" :: (ArnType') } ) -> DetachUserPolicyRequest
newDetachUserPolicyRequest' _PolicyArn _UserName customize = (DetachUserPolicyRequest <<< customize) { "PolicyArn": _PolicyArn, "UserName": _UserName }



-- | <p>The request was rejected because the same certificate is associated with an IAM user in the account.</p>
newtype DuplicateCertificateException = DuplicateCertificateException 
  { "message" :: Maybe (DuplicateCertificateMessage')
  }
derive instance newtypeDuplicateCertificateException :: Newtype DuplicateCertificateException _
derive instance repGenericDuplicateCertificateException :: Generic DuplicateCertificateException _
instance showDuplicateCertificateException :: Show DuplicateCertificateException where show = genericShow
instance decodeDuplicateCertificateException :: Decode DuplicateCertificateException where decode = genericDecode options
instance encodeDuplicateCertificateException :: Encode DuplicateCertificateException where encode = genericEncode options

-- | Constructs DuplicateCertificateException from required parameters
newDuplicateCertificateException :: DuplicateCertificateException
newDuplicateCertificateException  = DuplicateCertificateException { "message": Nothing }

-- | Constructs DuplicateCertificateException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDuplicateCertificateException' :: ( { "message" :: Maybe (DuplicateCertificateMessage') } -> {"message" :: Maybe (DuplicateCertificateMessage') } ) -> DuplicateCertificateException
newDuplicateCertificateException'  customize = (DuplicateCertificateException <<< customize) { "message": Nothing }



-- | <p>The request was rejected because the SSH public key is already associated with the specified IAM user.</p>
newtype DuplicateSSHPublicKeyException = DuplicateSSHPublicKeyException 
  { "message" :: Maybe (DuplicateSSHPublicKeyMessage')
  }
derive instance newtypeDuplicateSSHPublicKeyException :: Newtype DuplicateSSHPublicKeyException _
derive instance repGenericDuplicateSSHPublicKeyException :: Generic DuplicateSSHPublicKeyException _
instance showDuplicateSSHPublicKeyException :: Show DuplicateSSHPublicKeyException where show = genericShow
instance decodeDuplicateSSHPublicKeyException :: Decode DuplicateSSHPublicKeyException where decode = genericDecode options
instance encodeDuplicateSSHPublicKeyException :: Encode DuplicateSSHPublicKeyException where encode = genericEncode options

-- | Constructs DuplicateSSHPublicKeyException from required parameters
newDuplicateSSHPublicKeyException :: DuplicateSSHPublicKeyException
newDuplicateSSHPublicKeyException  = DuplicateSSHPublicKeyException { "message": Nothing }

-- | Constructs DuplicateSSHPublicKeyException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDuplicateSSHPublicKeyException' :: ( { "message" :: Maybe (DuplicateSSHPublicKeyMessage') } -> {"message" :: Maybe (DuplicateSSHPublicKeyMessage') } ) -> DuplicateSSHPublicKeyException
newDuplicateSSHPublicKeyException'  customize = (DuplicateSSHPublicKeyException <<< customize) { "message": Nothing }



newtype EnableMFADeviceRequest = EnableMFADeviceRequest 
  { "UserName" :: (ExistingUserNameType')
  , "SerialNumber" :: (SerialNumberType')
  , "AuthenticationCode1" :: (AuthenticationCodeType')
  , "AuthenticationCode2" :: (AuthenticationCodeType')
  }
derive instance newtypeEnableMFADeviceRequest :: Newtype EnableMFADeviceRequest _
derive instance repGenericEnableMFADeviceRequest :: Generic EnableMFADeviceRequest _
instance showEnableMFADeviceRequest :: Show EnableMFADeviceRequest where show = genericShow
instance decodeEnableMFADeviceRequest :: Decode EnableMFADeviceRequest where decode = genericDecode options
instance encodeEnableMFADeviceRequest :: Encode EnableMFADeviceRequest where encode = genericEncode options

-- | Constructs EnableMFADeviceRequest from required parameters
newEnableMFADeviceRequest :: AuthenticationCodeType' -> AuthenticationCodeType' -> SerialNumberType' -> ExistingUserNameType' -> EnableMFADeviceRequest
newEnableMFADeviceRequest _AuthenticationCode1 _AuthenticationCode2 _SerialNumber _UserName = EnableMFADeviceRequest { "AuthenticationCode1": _AuthenticationCode1, "AuthenticationCode2": _AuthenticationCode2, "SerialNumber": _SerialNumber, "UserName": _UserName }

-- | Constructs EnableMFADeviceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEnableMFADeviceRequest' :: AuthenticationCodeType' -> AuthenticationCodeType' -> SerialNumberType' -> ExistingUserNameType' -> ( { "UserName" :: (ExistingUserNameType') , "SerialNumber" :: (SerialNumberType') , "AuthenticationCode1" :: (AuthenticationCodeType') , "AuthenticationCode2" :: (AuthenticationCodeType') } -> {"UserName" :: (ExistingUserNameType') , "SerialNumber" :: (SerialNumberType') , "AuthenticationCode1" :: (AuthenticationCodeType') , "AuthenticationCode2" :: (AuthenticationCodeType') } ) -> EnableMFADeviceRequest
newEnableMFADeviceRequest' _AuthenticationCode1 _AuthenticationCode2 _SerialNumber _UserName customize = (EnableMFADeviceRequest <<< customize) { "AuthenticationCode1": _AuthenticationCode1, "AuthenticationCode2": _AuthenticationCode2, "SerialNumber": _SerialNumber, "UserName": _UserName }



-- | <p>The request was rejected because it attempted to create a resource that already exists.</p>
newtype EntityAlreadyExistsException = EntityAlreadyExistsException 
  { "message" :: Maybe (EntityAlreadyExistsMessage')
  }
derive instance newtypeEntityAlreadyExistsException :: Newtype EntityAlreadyExistsException _
derive instance repGenericEntityAlreadyExistsException :: Generic EntityAlreadyExistsException _
instance showEntityAlreadyExistsException :: Show EntityAlreadyExistsException where show = genericShow
instance decodeEntityAlreadyExistsException :: Decode EntityAlreadyExistsException where decode = genericDecode options
instance encodeEntityAlreadyExistsException :: Encode EntityAlreadyExistsException where encode = genericEncode options

-- | Constructs EntityAlreadyExistsException from required parameters
newEntityAlreadyExistsException :: EntityAlreadyExistsException
newEntityAlreadyExistsException  = EntityAlreadyExistsException { "message": Nothing }

-- | Constructs EntityAlreadyExistsException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEntityAlreadyExistsException' :: ( { "message" :: Maybe (EntityAlreadyExistsMessage') } -> {"message" :: Maybe (EntityAlreadyExistsMessage') } ) -> EntityAlreadyExistsException
newEntityAlreadyExistsException'  customize = (EntityAlreadyExistsException <<< customize) { "message": Nothing }



-- | <p>The request was rejected because it referenced an entity that is temporarily unmodifiable, such as a user name that was deleted and then recreated. The error indicates that the request is likely to succeed if you try again after waiting several minutes. The error message describes the entity.</p>
newtype EntityTemporarilyUnmodifiableException = EntityTemporarilyUnmodifiableException 
  { "message" :: Maybe (EntityTemporarilyUnmodifiableMessage')
  }
derive instance newtypeEntityTemporarilyUnmodifiableException :: Newtype EntityTemporarilyUnmodifiableException _
derive instance repGenericEntityTemporarilyUnmodifiableException :: Generic EntityTemporarilyUnmodifiableException _
instance showEntityTemporarilyUnmodifiableException :: Show EntityTemporarilyUnmodifiableException where show = genericShow
instance decodeEntityTemporarilyUnmodifiableException :: Decode EntityTemporarilyUnmodifiableException where decode = genericDecode options
instance encodeEntityTemporarilyUnmodifiableException :: Encode EntityTemporarilyUnmodifiableException where encode = genericEncode options

-- | Constructs EntityTemporarilyUnmodifiableException from required parameters
newEntityTemporarilyUnmodifiableException :: EntityTemporarilyUnmodifiableException
newEntityTemporarilyUnmodifiableException  = EntityTemporarilyUnmodifiableException { "message": Nothing }

-- | Constructs EntityTemporarilyUnmodifiableException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEntityTemporarilyUnmodifiableException' :: ( { "message" :: Maybe (EntityTemporarilyUnmodifiableMessage') } -> {"message" :: Maybe (EntityTemporarilyUnmodifiableMessage') } ) -> EntityTemporarilyUnmodifiableException
newEntityTemporarilyUnmodifiableException'  customize = (EntityTemporarilyUnmodifiableException <<< customize) { "message": Nothing }



newtype EntityType = EntityType String
derive instance newtypeEntityType :: Newtype EntityType _
derive instance repGenericEntityType :: Generic EntityType _
instance showEntityType :: Show EntityType where show = genericShow
instance decodeEntityType :: Decode EntityType where decode = genericDecode options
instance encodeEntityType :: Encode EntityType where encode = genericEncode options



newtype EvalDecisionDetailsType = EvalDecisionDetailsType (StrMap.StrMap PolicyEvaluationDecisionType)
derive instance newtypeEvalDecisionDetailsType :: Newtype EvalDecisionDetailsType _
derive instance repGenericEvalDecisionDetailsType :: Generic EvalDecisionDetailsType _
instance showEvalDecisionDetailsType :: Show EvalDecisionDetailsType where show = genericShow
instance decodeEvalDecisionDetailsType :: Decode EvalDecisionDetailsType where decode = genericDecode options
instance encodeEvalDecisionDetailsType :: Encode EvalDecisionDetailsType where encode = genericEncode options



newtype EvalDecisionSourceType = EvalDecisionSourceType String
derive instance newtypeEvalDecisionSourceType :: Newtype EvalDecisionSourceType _
derive instance repGenericEvalDecisionSourceType :: Generic EvalDecisionSourceType _
instance showEvalDecisionSourceType :: Show EvalDecisionSourceType where show = genericShow
instance decodeEvalDecisionSourceType :: Decode EvalDecisionSourceType where decode = genericDecode options
instance encodeEvalDecisionSourceType :: Encode EvalDecisionSourceType where encode = genericEncode options



-- | <p>Contains the results of a simulation.</p> <p>This data type is used by the return parameter of <code> <a>SimulateCustomPolicy</a> </code> and <code> <a>SimulatePrincipalPolicy</a> </code>.</p>
newtype EvaluationResult = EvaluationResult 
  { "EvalActionName" :: (ActionNameType)
  , "EvalResourceName" :: Maybe (ResourceNameType)
  , "EvalDecision" :: (PolicyEvaluationDecisionType)
  , "MatchedStatements" :: Maybe (StatementListType)
  , "MissingContextValues" :: Maybe (ContextKeyNamesResultListType)
  , "OrganizationsDecisionDetail" :: Maybe (OrganizationsDecisionDetail)
  , "EvalDecisionDetails" :: Maybe (EvalDecisionDetailsType)
  , "ResourceSpecificResults" :: Maybe (ResourceSpecificResultListType)
  }
derive instance newtypeEvaluationResult :: Newtype EvaluationResult _
derive instance repGenericEvaluationResult :: Generic EvaluationResult _
instance showEvaluationResult :: Show EvaluationResult where show = genericShow
instance decodeEvaluationResult :: Decode EvaluationResult where decode = genericDecode options
instance encodeEvaluationResult :: Encode EvaluationResult where encode = genericEncode options

-- | Constructs EvaluationResult from required parameters
newEvaluationResult :: ActionNameType -> PolicyEvaluationDecisionType -> EvaluationResult
newEvaluationResult _EvalActionName _EvalDecision = EvaluationResult { "EvalActionName": _EvalActionName, "EvalDecision": _EvalDecision, "EvalDecisionDetails": Nothing, "EvalResourceName": Nothing, "MatchedStatements": Nothing, "MissingContextValues": Nothing, "OrganizationsDecisionDetail": Nothing, "ResourceSpecificResults": Nothing }

-- | Constructs EvaluationResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEvaluationResult' :: ActionNameType -> PolicyEvaluationDecisionType -> ( { "EvalActionName" :: (ActionNameType) , "EvalResourceName" :: Maybe (ResourceNameType) , "EvalDecision" :: (PolicyEvaluationDecisionType) , "MatchedStatements" :: Maybe (StatementListType) , "MissingContextValues" :: Maybe (ContextKeyNamesResultListType) , "OrganizationsDecisionDetail" :: Maybe (OrganizationsDecisionDetail) , "EvalDecisionDetails" :: Maybe (EvalDecisionDetailsType) , "ResourceSpecificResults" :: Maybe (ResourceSpecificResultListType) } -> {"EvalActionName" :: (ActionNameType) , "EvalResourceName" :: Maybe (ResourceNameType) , "EvalDecision" :: (PolicyEvaluationDecisionType) , "MatchedStatements" :: Maybe (StatementListType) , "MissingContextValues" :: Maybe (ContextKeyNamesResultListType) , "OrganizationsDecisionDetail" :: Maybe (OrganizationsDecisionDetail) , "EvalDecisionDetails" :: Maybe (EvalDecisionDetailsType) , "ResourceSpecificResults" :: Maybe (ResourceSpecificResultListType) } ) -> EvaluationResult
newEvaluationResult' _EvalActionName _EvalDecision customize = (EvaluationResult <<< customize) { "EvalActionName": _EvalActionName, "EvalDecision": _EvalDecision, "EvalDecisionDetails": Nothing, "EvalResourceName": Nothing, "MatchedStatements": Nothing, "MissingContextValues": Nothing, "OrganizationsDecisionDetail": Nothing, "ResourceSpecificResults": Nothing }



newtype EvaluationResultsListType = EvaluationResultsListType (Array EvaluationResult)
derive instance newtypeEvaluationResultsListType :: Newtype EvaluationResultsListType _
derive instance repGenericEvaluationResultsListType :: Generic EvaluationResultsListType _
instance showEvaluationResultsListType :: Show EvaluationResultsListType where show = genericShow
instance decodeEvaluationResultsListType :: Decode EvaluationResultsListType where decode = genericDecode options
instance encodeEvaluationResultsListType :: Encode EvaluationResultsListType where encode = genericEncode options



-- | <p>Contains the response to a successful <a>GenerateCredentialReport</a> request. </p>
newtype GenerateCredentialReportResponse = GenerateCredentialReportResponse 
  { "State" :: Maybe (ReportStateType)
  , "Description" :: Maybe (ReportStateDescriptionType)
  }
derive instance newtypeGenerateCredentialReportResponse :: Newtype GenerateCredentialReportResponse _
derive instance repGenericGenerateCredentialReportResponse :: Generic GenerateCredentialReportResponse _
instance showGenerateCredentialReportResponse :: Show GenerateCredentialReportResponse where show = genericShow
instance decodeGenerateCredentialReportResponse :: Decode GenerateCredentialReportResponse where decode = genericDecode options
instance encodeGenerateCredentialReportResponse :: Encode GenerateCredentialReportResponse where encode = genericEncode options

-- | Constructs GenerateCredentialReportResponse from required parameters
newGenerateCredentialReportResponse :: GenerateCredentialReportResponse
newGenerateCredentialReportResponse  = GenerateCredentialReportResponse { "Description": Nothing, "State": Nothing }

-- | Constructs GenerateCredentialReportResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGenerateCredentialReportResponse' :: ( { "State" :: Maybe (ReportStateType) , "Description" :: Maybe (ReportStateDescriptionType) } -> {"State" :: Maybe (ReportStateType) , "Description" :: Maybe (ReportStateDescriptionType) } ) -> GenerateCredentialReportResponse
newGenerateCredentialReportResponse'  customize = (GenerateCredentialReportResponse <<< customize) { "Description": Nothing, "State": Nothing }



newtype GetAccessKeyLastUsedRequest = GetAccessKeyLastUsedRequest 
  { "AccessKeyId" :: (AccessKeyIdType')
  }
derive instance newtypeGetAccessKeyLastUsedRequest :: Newtype GetAccessKeyLastUsedRequest _
derive instance repGenericGetAccessKeyLastUsedRequest :: Generic GetAccessKeyLastUsedRequest _
instance showGetAccessKeyLastUsedRequest :: Show GetAccessKeyLastUsedRequest where show = genericShow
instance decodeGetAccessKeyLastUsedRequest :: Decode GetAccessKeyLastUsedRequest where decode = genericDecode options
instance encodeGetAccessKeyLastUsedRequest :: Encode GetAccessKeyLastUsedRequest where encode = genericEncode options

-- | Constructs GetAccessKeyLastUsedRequest from required parameters
newGetAccessKeyLastUsedRequest :: AccessKeyIdType' -> GetAccessKeyLastUsedRequest
newGetAccessKeyLastUsedRequest _AccessKeyId = GetAccessKeyLastUsedRequest { "AccessKeyId": _AccessKeyId }

-- | Constructs GetAccessKeyLastUsedRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetAccessKeyLastUsedRequest' :: AccessKeyIdType' -> ( { "AccessKeyId" :: (AccessKeyIdType') } -> {"AccessKeyId" :: (AccessKeyIdType') } ) -> GetAccessKeyLastUsedRequest
newGetAccessKeyLastUsedRequest' _AccessKeyId customize = (GetAccessKeyLastUsedRequest <<< customize) { "AccessKeyId": _AccessKeyId }



-- | <p>Contains the response to a successful <a>GetAccessKeyLastUsed</a> request. It is also returned as a member of the <a>AccessKeyMetaData</a> structure returned by the <a>ListAccessKeys</a> action.</p>
newtype GetAccessKeyLastUsedResponse = GetAccessKeyLastUsedResponse 
  { "UserName" :: Maybe (ExistingUserNameType')
  , "AccessKeyLastUsed" :: Maybe (AccessKeyLastUsed)
  }
derive instance newtypeGetAccessKeyLastUsedResponse :: Newtype GetAccessKeyLastUsedResponse _
derive instance repGenericGetAccessKeyLastUsedResponse :: Generic GetAccessKeyLastUsedResponse _
instance showGetAccessKeyLastUsedResponse :: Show GetAccessKeyLastUsedResponse where show = genericShow
instance decodeGetAccessKeyLastUsedResponse :: Decode GetAccessKeyLastUsedResponse where decode = genericDecode options
instance encodeGetAccessKeyLastUsedResponse :: Encode GetAccessKeyLastUsedResponse where encode = genericEncode options

-- | Constructs GetAccessKeyLastUsedResponse from required parameters
newGetAccessKeyLastUsedResponse :: GetAccessKeyLastUsedResponse
newGetAccessKeyLastUsedResponse  = GetAccessKeyLastUsedResponse { "AccessKeyLastUsed": Nothing, "UserName": Nothing }

-- | Constructs GetAccessKeyLastUsedResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetAccessKeyLastUsedResponse' :: ( { "UserName" :: Maybe (ExistingUserNameType') , "AccessKeyLastUsed" :: Maybe (AccessKeyLastUsed) } -> {"UserName" :: Maybe (ExistingUserNameType') , "AccessKeyLastUsed" :: Maybe (AccessKeyLastUsed) } ) -> GetAccessKeyLastUsedResponse
newGetAccessKeyLastUsedResponse'  customize = (GetAccessKeyLastUsedResponse <<< customize) { "AccessKeyLastUsed": Nothing, "UserName": Nothing }



newtype GetAccountAuthorizationDetailsRequest = GetAccountAuthorizationDetailsRequest 
  { "Filter" :: Maybe (EntityListType')
  , "MaxItems" :: Maybe (MaxItemsType')
  , "Marker" :: Maybe (MarkerType')
  }
derive instance newtypeGetAccountAuthorizationDetailsRequest :: Newtype GetAccountAuthorizationDetailsRequest _
derive instance repGenericGetAccountAuthorizationDetailsRequest :: Generic GetAccountAuthorizationDetailsRequest _
instance showGetAccountAuthorizationDetailsRequest :: Show GetAccountAuthorizationDetailsRequest where show = genericShow
instance decodeGetAccountAuthorizationDetailsRequest :: Decode GetAccountAuthorizationDetailsRequest where decode = genericDecode options
instance encodeGetAccountAuthorizationDetailsRequest :: Encode GetAccountAuthorizationDetailsRequest where encode = genericEncode options

-- | Constructs GetAccountAuthorizationDetailsRequest from required parameters
newGetAccountAuthorizationDetailsRequest :: GetAccountAuthorizationDetailsRequest
newGetAccountAuthorizationDetailsRequest  = GetAccountAuthorizationDetailsRequest { "Filter": Nothing, "Marker": Nothing, "MaxItems": Nothing }

-- | Constructs GetAccountAuthorizationDetailsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetAccountAuthorizationDetailsRequest' :: ( { "Filter" :: Maybe (EntityListType') , "MaxItems" :: Maybe (MaxItemsType') , "Marker" :: Maybe (MarkerType') } -> {"Filter" :: Maybe (EntityListType') , "MaxItems" :: Maybe (MaxItemsType') , "Marker" :: Maybe (MarkerType') } ) -> GetAccountAuthorizationDetailsRequest
newGetAccountAuthorizationDetailsRequest'  customize = (GetAccountAuthorizationDetailsRequest <<< customize) { "Filter": Nothing, "Marker": Nothing, "MaxItems": Nothing }



-- | <p>Contains the response to a successful <a>GetAccountAuthorizationDetails</a> request. </p>
newtype GetAccountAuthorizationDetailsResponse = GetAccountAuthorizationDetailsResponse 
  { "UserDetailList" :: Maybe (UserDetailListType')
  , "GroupDetailList" :: Maybe (GroupDetailListType')
  , "RoleDetailList" :: Maybe (RoleDetailListType')
  , "Policies" :: Maybe (ManagedPolicyDetailListType)
  , "IsTruncated" :: Maybe (BooleanType')
  , "Marker" :: Maybe (MarkerType')
  }
derive instance newtypeGetAccountAuthorizationDetailsResponse :: Newtype GetAccountAuthorizationDetailsResponse _
derive instance repGenericGetAccountAuthorizationDetailsResponse :: Generic GetAccountAuthorizationDetailsResponse _
instance showGetAccountAuthorizationDetailsResponse :: Show GetAccountAuthorizationDetailsResponse where show = genericShow
instance decodeGetAccountAuthorizationDetailsResponse :: Decode GetAccountAuthorizationDetailsResponse where decode = genericDecode options
instance encodeGetAccountAuthorizationDetailsResponse :: Encode GetAccountAuthorizationDetailsResponse where encode = genericEncode options

-- | Constructs GetAccountAuthorizationDetailsResponse from required parameters
newGetAccountAuthorizationDetailsResponse :: GetAccountAuthorizationDetailsResponse
newGetAccountAuthorizationDetailsResponse  = GetAccountAuthorizationDetailsResponse { "GroupDetailList": Nothing, "IsTruncated": Nothing, "Marker": Nothing, "Policies": Nothing, "RoleDetailList": Nothing, "UserDetailList": Nothing }

-- | Constructs GetAccountAuthorizationDetailsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetAccountAuthorizationDetailsResponse' :: ( { "UserDetailList" :: Maybe (UserDetailListType') , "GroupDetailList" :: Maybe (GroupDetailListType') , "RoleDetailList" :: Maybe (RoleDetailListType') , "Policies" :: Maybe (ManagedPolicyDetailListType) , "IsTruncated" :: Maybe (BooleanType') , "Marker" :: Maybe (MarkerType') } -> {"UserDetailList" :: Maybe (UserDetailListType') , "GroupDetailList" :: Maybe (GroupDetailListType') , "RoleDetailList" :: Maybe (RoleDetailListType') , "Policies" :: Maybe (ManagedPolicyDetailListType) , "IsTruncated" :: Maybe (BooleanType') , "Marker" :: Maybe (MarkerType') } ) -> GetAccountAuthorizationDetailsResponse
newGetAccountAuthorizationDetailsResponse'  customize = (GetAccountAuthorizationDetailsResponse <<< customize) { "GroupDetailList": Nothing, "IsTruncated": Nothing, "Marker": Nothing, "Policies": Nothing, "RoleDetailList": Nothing, "UserDetailList": Nothing }



-- | <p>Contains the response to a successful <a>GetAccountPasswordPolicy</a> request. </p>
newtype GetAccountPasswordPolicyResponse = GetAccountPasswordPolicyResponse 
  { "PasswordPolicy" :: (PasswordPolicy)
  }
derive instance newtypeGetAccountPasswordPolicyResponse :: Newtype GetAccountPasswordPolicyResponse _
derive instance repGenericGetAccountPasswordPolicyResponse :: Generic GetAccountPasswordPolicyResponse _
instance showGetAccountPasswordPolicyResponse :: Show GetAccountPasswordPolicyResponse where show = genericShow
instance decodeGetAccountPasswordPolicyResponse :: Decode GetAccountPasswordPolicyResponse where decode = genericDecode options
instance encodeGetAccountPasswordPolicyResponse :: Encode GetAccountPasswordPolicyResponse where encode = genericEncode options

-- | Constructs GetAccountPasswordPolicyResponse from required parameters
newGetAccountPasswordPolicyResponse :: PasswordPolicy -> GetAccountPasswordPolicyResponse
newGetAccountPasswordPolicyResponse _PasswordPolicy = GetAccountPasswordPolicyResponse { "PasswordPolicy": _PasswordPolicy }

-- | Constructs GetAccountPasswordPolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetAccountPasswordPolicyResponse' :: PasswordPolicy -> ( { "PasswordPolicy" :: (PasswordPolicy) } -> {"PasswordPolicy" :: (PasswordPolicy) } ) -> GetAccountPasswordPolicyResponse
newGetAccountPasswordPolicyResponse' _PasswordPolicy customize = (GetAccountPasswordPolicyResponse <<< customize) { "PasswordPolicy": _PasswordPolicy }



-- | <p>Contains the response to a successful <a>GetAccountSummary</a> request. </p>
newtype GetAccountSummaryResponse = GetAccountSummaryResponse 
  { "SummaryMap" :: Maybe (SummaryMapType')
  }
derive instance newtypeGetAccountSummaryResponse :: Newtype GetAccountSummaryResponse _
derive instance repGenericGetAccountSummaryResponse :: Generic GetAccountSummaryResponse _
instance showGetAccountSummaryResponse :: Show GetAccountSummaryResponse where show = genericShow
instance decodeGetAccountSummaryResponse :: Decode GetAccountSummaryResponse where decode = genericDecode options
instance encodeGetAccountSummaryResponse :: Encode GetAccountSummaryResponse where encode = genericEncode options

-- | Constructs GetAccountSummaryResponse from required parameters
newGetAccountSummaryResponse :: GetAccountSummaryResponse
newGetAccountSummaryResponse  = GetAccountSummaryResponse { "SummaryMap": Nothing }

-- | Constructs GetAccountSummaryResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetAccountSummaryResponse' :: ( { "SummaryMap" :: Maybe (SummaryMapType') } -> {"SummaryMap" :: Maybe (SummaryMapType') } ) -> GetAccountSummaryResponse
newGetAccountSummaryResponse'  customize = (GetAccountSummaryResponse <<< customize) { "SummaryMap": Nothing }



newtype GetContextKeysForCustomPolicyRequest = GetContextKeysForCustomPolicyRequest 
  { "PolicyInputList" :: (SimulationPolicyListType)
  }
derive instance newtypeGetContextKeysForCustomPolicyRequest :: Newtype GetContextKeysForCustomPolicyRequest _
derive instance repGenericGetContextKeysForCustomPolicyRequest :: Generic GetContextKeysForCustomPolicyRequest _
instance showGetContextKeysForCustomPolicyRequest :: Show GetContextKeysForCustomPolicyRequest where show = genericShow
instance decodeGetContextKeysForCustomPolicyRequest :: Decode GetContextKeysForCustomPolicyRequest where decode = genericDecode options
instance encodeGetContextKeysForCustomPolicyRequest :: Encode GetContextKeysForCustomPolicyRequest where encode = genericEncode options

-- | Constructs GetContextKeysForCustomPolicyRequest from required parameters
newGetContextKeysForCustomPolicyRequest :: SimulationPolicyListType -> GetContextKeysForCustomPolicyRequest
newGetContextKeysForCustomPolicyRequest _PolicyInputList = GetContextKeysForCustomPolicyRequest { "PolicyInputList": _PolicyInputList }

-- | Constructs GetContextKeysForCustomPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetContextKeysForCustomPolicyRequest' :: SimulationPolicyListType -> ( { "PolicyInputList" :: (SimulationPolicyListType) } -> {"PolicyInputList" :: (SimulationPolicyListType) } ) -> GetContextKeysForCustomPolicyRequest
newGetContextKeysForCustomPolicyRequest' _PolicyInputList customize = (GetContextKeysForCustomPolicyRequest <<< customize) { "PolicyInputList": _PolicyInputList }



-- | <p>Contains the response to a successful <a>GetContextKeysForPrincipalPolicy</a> or <a>GetContextKeysForCustomPolicy</a> request. </p>
newtype GetContextKeysForPolicyResponse = GetContextKeysForPolicyResponse 
  { "ContextKeyNames" :: Maybe (ContextKeyNamesResultListType)
  }
derive instance newtypeGetContextKeysForPolicyResponse :: Newtype GetContextKeysForPolicyResponse _
derive instance repGenericGetContextKeysForPolicyResponse :: Generic GetContextKeysForPolicyResponse _
instance showGetContextKeysForPolicyResponse :: Show GetContextKeysForPolicyResponse where show = genericShow
instance decodeGetContextKeysForPolicyResponse :: Decode GetContextKeysForPolicyResponse where decode = genericDecode options
instance encodeGetContextKeysForPolicyResponse :: Encode GetContextKeysForPolicyResponse where encode = genericEncode options

-- | Constructs GetContextKeysForPolicyResponse from required parameters
newGetContextKeysForPolicyResponse :: GetContextKeysForPolicyResponse
newGetContextKeysForPolicyResponse  = GetContextKeysForPolicyResponse { "ContextKeyNames": Nothing }

-- | Constructs GetContextKeysForPolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetContextKeysForPolicyResponse' :: ( { "ContextKeyNames" :: Maybe (ContextKeyNamesResultListType) } -> {"ContextKeyNames" :: Maybe (ContextKeyNamesResultListType) } ) -> GetContextKeysForPolicyResponse
newGetContextKeysForPolicyResponse'  customize = (GetContextKeysForPolicyResponse <<< customize) { "ContextKeyNames": Nothing }



newtype GetContextKeysForPrincipalPolicyRequest = GetContextKeysForPrincipalPolicyRequest 
  { "PolicySourceArn" :: (ArnType')
  , "PolicyInputList" :: Maybe (SimulationPolicyListType)
  }
derive instance newtypeGetContextKeysForPrincipalPolicyRequest :: Newtype GetContextKeysForPrincipalPolicyRequest _
derive instance repGenericGetContextKeysForPrincipalPolicyRequest :: Generic GetContextKeysForPrincipalPolicyRequest _
instance showGetContextKeysForPrincipalPolicyRequest :: Show GetContextKeysForPrincipalPolicyRequest where show = genericShow
instance decodeGetContextKeysForPrincipalPolicyRequest :: Decode GetContextKeysForPrincipalPolicyRequest where decode = genericDecode options
instance encodeGetContextKeysForPrincipalPolicyRequest :: Encode GetContextKeysForPrincipalPolicyRequest where encode = genericEncode options

-- | Constructs GetContextKeysForPrincipalPolicyRequest from required parameters
newGetContextKeysForPrincipalPolicyRequest :: ArnType' -> GetContextKeysForPrincipalPolicyRequest
newGetContextKeysForPrincipalPolicyRequest _PolicySourceArn = GetContextKeysForPrincipalPolicyRequest { "PolicySourceArn": _PolicySourceArn, "PolicyInputList": Nothing }

-- | Constructs GetContextKeysForPrincipalPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetContextKeysForPrincipalPolicyRequest' :: ArnType' -> ( { "PolicySourceArn" :: (ArnType') , "PolicyInputList" :: Maybe (SimulationPolicyListType) } -> {"PolicySourceArn" :: (ArnType') , "PolicyInputList" :: Maybe (SimulationPolicyListType) } ) -> GetContextKeysForPrincipalPolicyRequest
newGetContextKeysForPrincipalPolicyRequest' _PolicySourceArn customize = (GetContextKeysForPrincipalPolicyRequest <<< customize) { "PolicySourceArn": _PolicySourceArn, "PolicyInputList": Nothing }



-- | <p>Contains the response to a successful <a>GetCredentialReport</a> request. </p>
newtype GetCredentialReportResponse = GetCredentialReportResponse 
  { "Content" :: Maybe (ReportContentType)
  , "ReportFormat" :: Maybe (ReportFormatType)
  , "GeneratedTime" :: Maybe (DateType')
  }
derive instance newtypeGetCredentialReportResponse :: Newtype GetCredentialReportResponse _
derive instance repGenericGetCredentialReportResponse :: Generic GetCredentialReportResponse _
instance showGetCredentialReportResponse :: Show GetCredentialReportResponse where show = genericShow
instance decodeGetCredentialReportResponse :: Decode GetCredentialReportResponse where decode = genericDecode options
instance encodeGetCredentialReportResponse :: Encode GetCredentialReportResponse where encode = genericEncode options

-- | Constructs GetCredentialReportResponse from required parameters
newGetCredentialReportResponse :: GetCredentialReportResponse
newGetCredentialReportResponse  = GetCredentialReportResponse { "Content": Nothing, "GeneratedTime": Nothing, "ReportFormat": Nothing }

-- | Constructs GetCredentialReportResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetCredentialReportResponse' :: ( { "Content" :: Maybe (ReportContentType) , "ReportFormat" :: Maybe (ReportFormatType) , "GeneratedTime" :: Maybe (DateType') } -> {"Content" :: Maybe (ReportContentType) , "ReportFormat" :: Maybe (ReportFormatType) , "GeneratedTime" :: Maybe (DateType') } ) -> GetCredentialReportResponse
newGetCredentialReportResponse'  customize = (GetCredentialReportResponse <<< customize) { "Content": Nothing, "GeneratedTime": Nothing, "ReportFormat": Nothing }



newtype GetGroupPolicyRequest = GetGroupPolicyRequest 
  { "GroupName" :: (GroupNameType')
  , "PolicyName" :: (PolicyNameType')
  }
derive instance newtypeGetGroupPolicyRequest :: Newtype GetGroupPolicyRequest _
derive instance repGenericGetGroupPolicyRequest :: Generic GetGroupPolicyRequest _
instance showGetGroupPolicyRequest :: Show GetGroupPolicyRequest where show = genericShow
instance decodeGetGroupPolicyRequest :: Decode GetGroupPolicyRequest where decode = genericDecode options
instance encodeGetGroupPolicyRequest :: Encode GetGroupPolicyRequest where encode = genericEncode options

-- | Constructs GetGroupPolicyRequest from required parameters
newGetGroupPolicyRequest :: GroupNameType' -> PolicyNameType' -> GetGroupPolicyRequest
newGetGroupPolicyRequest _GroupName _PolicyName = GetGroupPolicyRequest { "GroupName": _GroupName, "PolicyName": _PolicyName }

-- | Constructs GetGroupPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetGroupPolicyRequest' :: GroupNameType' -> PolicyNameType' -> ( { "GroupName" :: (GroupNameType') , "PolicyName" :: (PolicyNameType') } -> {"GroupName" :: (GroupNameType') , "PolicyName" :: (PolicyNameType') } ) -> GetGroupPolicyRequest
newGetGroupPolicyRequest' _GroupName _PolicyName customize = (GetGroupPolicyRequest <<< customize) { "GroupName": _GroupName, "PolicyName": _PolicyName }



-- | <p>Contains the response to a successful <a>GetGroupPolicy</a> request. </p>
newtype GetGroupPolicyResponse = GetGroupPolicyResponse 
  { "GroupName" :: (GroupNameType')
  , "PolicyName" :: (PolicyNameType')
  , "PolicyDocument" :: (PolicyDocumentType')
  }
derive instance newtypeGetGroupPolicyResponse :: Newtype GetGroupPolicyResponse _
derive instance repGenericGetGroupPolicyResponse :: Generic GetGroupPolicyResponse _
instance showGetGroupPolicyResponse :: Show GetGroupPolicyResponse where show = genericShow
instance decodeGetGroupPolicyResponse :: Decode GetGroupPolicyResponse where decode = genericDecode options
instance encodeGetGroupPolicyResponse :: Encode GetGroupPolicyResponse where encode = genericEncode options

-- | Constructs GetGroupPolicyResponse from required parameters
newGetGroupPolicyResponse :: GroupNameType' -> PolicyDocumentType' -> PolicyNameType' -> GetGroupPolicyResponse
newGetGroupPolicyResponse _GroupName _PolicyDocument _PolicyName = GetGroupPolicyResponse { "GroupName": _GroupName, "PolicyDocument": _PolicyDocument, "PolicyName": _PolicyName }

-- | Constructs GetGroupPolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetGroupPolicyResponse' :: GroupNameType' -> PolicyDocumentType' -> PolicyNameType' -> ( { "GroupName" :: (GroupNameType') , "PolicyName" :: (PolicyNameType') , "PolicyDocument" :: (PolicyDocumentType') } -> {"GroupName" :: (GroupNameType') , "PolicyName" :: (PolicyNameType') , "PolicyDocument" :: (PolicyDocumentType') } ) -> GetGroupPolicyResponse
newGetGroupPolicyResponse' _GroupName _PolicyDocument _PolicyName customize = (GetGroupPolicyResponse <<< customize) { "GroupName": _GroupName, "PolicyDocument": _PolicyDocument, "PolicyName": _PolicyName }



newtype GetGroupRequest = GetGroupRequest 
  { "GroupName" :: (GroupNameType')
  , "Marker" :: Maybe (MarkerType')
  , "MaxItems" :: Maybe (MaxItemsType')
  }
derive instance newtypeGetGroupRequest :: Newtype GetGroupRequest _
derive instance repGenericGetGroupRequest :: Generic GetGroupRequest _
instance showGetGroupRequest :: Show GetGroupRequest where show = genericShow
instance decodeGetGroupRequest :: Decode GetGroupRequest where decode = genericDecode options
instance encodeGetGroupRequest :: Encode GetGroupRequest where encode = genericEncode options

-- | Constructs GetGroupRequest from required parameters
newGetGroupRequest :: GroupNameType' -> GetGroupRequest
newGetGroupRequest _GroupName = GetGroupRequest { "GroupName": _GroupName, "Marker": Nothing, "MaxItems": Nothing }

-- | Constructs GetGroupRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetGroupRequest' :: GroupNameType' -> ( { "GroupName" :: (GroupNameType') , "Marker" :: Maybe (MarkerType') , "MaxItems" :: Maybe (MaxItemsType') } -> {"GroupName" :: (GroupNameType') , "Marker" :: Maybe (MarkerType') , "MaxItems" :: Maybe (MaxItemsType') } ) -> GetGroupRequest
newGetGroupRequest' _GroupName customize = (GetGroupRequest <<< customize) { "GroupName": _GroupName, "Marker": Nothing, "MaxItems": Nothing }



-- | <p>Contains the response to a successful <a>GetGroup</a> request. </p>
newtype GetGroupResponse = GetGroupResponse 
  { "Group" :: (Group)
  , "Users" :: (UserListType')
  , "IsTruncated" :: Maybe (BooleanType')
  , "Marker" :: Maybe (MarkerType')
  }
derive instance newtypeGetGroupResponse :: Newtype GetGroupResponse _
derive instance repGenericGetGroupResponse :: Generic GetGroupResponse _
instance showGetGroupResponse :: Show GetGroupResponse where show = genericShow
instance decodeGetGroupResponse :: Decode GetGroupResponse where decode = genericDecode options
instance encodeGetGroupResponse :: Encode GetGroupResponse where encode = genericEncode options

-- | Constructs GetGroupResponse from required parameters
newGetGroupResponse :: Group -> UserListType' -> GetGroupResponse
newGetGroupResponse _Group _Users = GetGroupResponse { "Group": _Group, "Users": _Users, "IsTruncated": Nothing, "Marker": Nothing }

-- | Constructs GetGroupResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetGroupResponse' :: Group -> UserListType' -> ( { "Group" :: (Group) , "Users" :: (UserListType') , "IsTruncated" :: Maybe (BooleanType') , "Marker" :: Maybe (MarkerType') } -> {"Group" :: (Group) , "Users" :: (UserListType') , "IsTruncated" :: Maybe (BooleanType') , "Marker" :: Maybe (MarkerType') } ) -> GetGroupResponse
newGetGroupResponse' _Group _Users customize = (GetGroupResponse <<< customize) { "Group": _Group, "Users": _Users, "IsTruncated": Nothing, "Marker": Nothing }



newtype GetInstanceProfileRequest = GetInstanceProfileRequest 
  { "InstanceProfileName" :: (InstanceProfileNameType')
  }
derive instance newtypeGetInstanceProfileRequest :: Newtype GetInstanceProfileRequest _
derive instance repGenericGetInstanceProfileRequest :: Generic GetInstanceProfileRequest _
instance showGetInstanceProfileRequest :: Show GetInstanceProfileRequest where show = genericShow
instance decodeGetInstanceProfileRequest :: Decode GetInstanceProfileRequest where decode = genericDecode options
instance encodeGetInstanceProfileRequest :: Encode GetInstanceProfileRequest where encode = genericEncode options

-- | Constructs GetInstanceProfileRequest from required parameters
newGetInstanceProfileRequest :: InstanceProfileNameType' -> GetInstanceProfileRequest
newGetInstanceProfileRequest _InstanceProfileName = GetInstanceProfileRequest { "InstanceProfileName": _InstanceProfileName }

-- | Constructs GetInstanceProfileRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetInstanceProfileRequest' :: InstanceProfileNameType' -> ( { "InstanceProfileName" :: (InstanceProfileNameType') } -> {"InstanceProfileName" :: (InstanceProfileNameType') } ) -> GetInstanceProfileRequest
newGetInstanceProfileRequest' _InstanceProfileName customize = (GetInstanceProfileRequest <<< customize) { "InstanceProfileName": _InstanceProfileName }



-- | <p>Contains the response to a successful <a>GetInstanceProfile</a> request. </p>
newtype GetInstanceProfileResponse = GetInstanceProfileResponse 
  { "InstanceProfile" :: (InstanceProfile)
  }
derive instance newtypeGetInstanceProfileResponse :: Newtype GetInstanceProfileResponse _
derive instance repGenericGetInstanceProfileResponse :: Generic GetInstanceProfileResponse _
instance showGetInstanceProfileResponse :: Show GetInstanceProfileResponse where show = genericShow
instance decodeGetInstanceProfileResponse :: Decode GetInstanceProfileResponse where decode = genericDecode options
instance encodeGetInstanceProfileResponse :: Encode GetInstanceProfileResponse where encode = genericEncode options

-- | Constructs GetInstanceProfileResponse from required parameters
newGetInstanceProfileResponse :: InstanceProfile -> GetInstanceProfileResponse
newGetInstanceProfileResponse _InstanceProfile = GetInstanceProfileResponse { "InstanceProfile": _InstanceProfile }

-- | Constructs GetInstanceProfileResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetInstanceProfileResponse' :: InstanceProfile -> ( { "InstanceProfile" :: (InstanceProfile) } -> {"InstanceProfile" :: (InstanceProfile) } ) -> GetInstanceProfileResponse
newGetInstanceProfileResponse' _InstanceProfile customize = (GetInstanceProfileResponse <<< customize) { "InstanceProfile": _InstanceProfile }



newtype GetLoginProfileRequest = GetLoginProfileRequest 
  { "UserName" :: (UserNameType')
  }
derive instance newtypeGetLoginProfileRequest :: Newtype GetLoginProfileRequest _
derive instance repGenericGetLoginProfileRequest :: Generic GetLoginProfileRequest _
instance showGetLoginProfileRequest :: Show GetLoginProfileRequest where show = genericShow
instance decodeGetLoginProfileRequest :: Decode GetLoginProfileRequest where decode = genericDecode options
instance encodeGetLoginProfileRequest :: Encode GetLoginProfileRequest where encode = genericEncode options

-- | Constructs GetLoginProfileRequest from required parameters
newGetLoginProfileRequest :: UserNameType' -> GetLoginProfileRequest
newGetLoginProfileRequest _UserName = GetLoginProfileRequest { "UserName": _UserName }

-- | Constructs GetLoginProfileRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetLoginProfileRequest' :: UserNameType' -> ( { "UserName" :: (UserNameType') } -> {"UserName" :: (UserNameType') } ) -> GetLoginProfileRequest
newGetLoginProfileRequest' _UserName customize = (GetLoginProfileRequest <<< customize) { "UserName": _UserName }



-- | <p>Contains the response to a successful <a>GetLoginProfile</a> request. </p>
newtype GetLoginProfileResponse = GetLoginProfileResponse 
  { "LoginProfile" :: (LoginProfile)
  }
derive instance newtypeGetLoginProfileResponse :: Newtype GetLoginProfileResponse _
derive instance repGenericGetLoginProfileResponse :: Generic GetLoginProfileResponse _
instance showGetLoginProfileResponse :: Show GetLoginProfileResponse where show = genericShow
instance decodeGetLoginProfileResponse :: Decode GetLoginProfileResponse where decode = genericDecode options
instance encodeGetLoginProfileResponse :: Encode GetLoginProfileResponse where encode = genericEncode options

-- | Constructs GetLoginProfileResponse from required parameters
newGetLoginProfileResponse :: LoginProfile -> GetLoginProfileResponse
newGetLoginProfileResponse _LoginProfile = GetLoginProfileResponse { "LoginProfile": _LoginProfile }

-- | Constructs GetLoginProfileResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetLoginProfileResponse' :: LoginProfile -> ( { "LoginProfile" :: (LoginProfile) } -> {"LoginProfile" :: (LoginProfile) } ) -> GetLoginProfileResponse
newGetLoginProfileResponse' _LoginProfile customize = (GetLoginProfileResponse <<< customize) { "LoginProfile": _LoginProfile }



newtype GetOpenIDConnectProviderRequest = GetOpenIDConnectProviderRequest 
  { "OpenIDConnectProviderArn" :: (ArnType')
  }
derive instance newtypeGetOpenIDConnectProviderRequest :: Newtype GetOpenIDConnectProviderRequest _
derive instance repGenericGetOpenIDConnectProviderRequest :: Generic GetOpenIDConnectProviderRequest _
instance showGetOpenIDConnectProviderRequest :: Show GetOpenIDConnectProviderRequest where show = genericShow
instance decodeGetOpenIDConnectProviderRequest :: Decode GetOpenIDConnectProviderRequest where decode = genericDecode options
instance encodeGetOpenIDConnectProviderRequest :: Encode GetOpenIDConnectProviderRequest where encode = genericEncode options

-- | Constructs GetOpenIDConnectProviderRequest from required parameters
newGetOpenIDConnectProviderRequest :: ArnType' -> GetOpenIDConnectProviderRequest
newGetOpenIDConnectProviderRequest _OpenIDConnectProviderArn = GetOpenIDConnectProviderRequest { "OpenIDConnectProviderArn": _OpenIDConnectProviderArn }

-- | Constructs GetOpenIDConnectProviderRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetOpenIDConnectProviderRequest' :: ArnType' -> ( { "OpenIDConnectProviderArn" :: (ArnType') } -> {"OpenIDConnectProviderArn" :: (ArnType') } ) -> GetOpenIDConnectProviderRequest
newGetOpenIDConnectProviderRequest' _OpenIDConnectProviderArn customize = (GetOpenIDConnectProviderRequest <<< customize) { "OpenIDConnectProviderArn": _OpenIDConnectProviderArn }



-- | <p>Contains the response to a successful <a>GetOpenIDConnectProvider</a> request. </p>
newtype GetOpenIDConnectProviderResponse = GetOpenIDConnectProviderResponse 
  { "Url" :: Maybe (OpenIDConnectProviderUrlType)
  , "ClientIDList" :: Maybe (ClientIDListType')
  , "ThumbprintList" :: Maybe (ThumbprintListType')
  , "CreateDate" :: Maybe (DateType')
  }
derive instance newtypeGetOpenIDConnectProviderResponse :: Newtype GetOpenIDConnectProviderResponse _
derive instance repGenericGetOpenIDConnectProviderResponse :: Generic GetOpenIDConnectProviderResponse _
instance showGetOpenIDConnectProviderResponse :: Show GetOpenIDConnectProviderResponse where show = genericShow
instance decodeGetOpenIDConnectProviderResponse :: Decode GetOpenIDConnectProviderResponse where decode = genericDecode options
instance encodeGetOpenIDConnectProviderResponse :: Encode GetOpenIDConnectProviderResponse where encode = genericEncode options

-- | Constructs GetOpenIDConnectProviderResponse from required parameters
newGetOpenIDConnectProviderResponse :: GetOpenIDConnectProviderResponse
newGetOpenIDConnectProviderResponse  = GetOpenIDConnectProviderResponse { "ClientIDList": Nothing, "CreateDate": Nothing, "ThumbprintList": Nothing, "Url": Nothing }

-- | Constructs GetOpenIDConnectProviderResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetOpenIDConnectProviderResponse' :: ( { "Url" :: Maybe (OpenIDConnectProviderUrlType) , "ClientIDList" :: Maybe (ClientIDListType') , "ThumbprintList" :: Maybe (ThumbprintListType') , "CreateDate" :: Maybe (DateType') } -> {"Url" :: Maybe (OpenIDConnectProviderUrlType) , "ClientIDList" :: Maybe (ClientIDListType') , "ThumbprintList" :: Maybe (ThumbprintListType') , "CreateDate" :: Maybe (DateType') } ) -> GetOpenIDConnectProviderResponse
newGetOpenIDConnectProviderResponse'  customize = (GetOpenIDConnectProviderResponse <<< customize) { "ClientIDList": Nothing, "CreateDate": Nothing, "ThumbprintList": Nothing, "Url": Nothing }



newtype GetPolicyRequest = GetPolicyRequest 
  { "PolicyArn" :: (ArnType')
  }
derive instance newtypeGetPolicyRequest :: Newtype GetPolicyRequest _
derive instance repGenericGetPolicyRequest :: Generic GetPolicyRequest _
instance showGetPolicyRequest :: Show GetPolicyRequest where show = genericShow
instance decodeGetPolicyRequest :: Decode GetPolicyRequest where decode = genericDecode options
instance encodeGetPolicyRequest :: Encode GetPolicyRequest where encode = genericEncode options

-- | Constructs GetPolicyRequest from required parameters
newGetPolicyRequest :: ArnType' -> GetPolicyRequest
newGetPolicyRequest _PolicyArn = GetPolicyRequest { "PolicyArn": _PolicyArn }

-- | Constructs GetPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetPolicyRequest' :: ArnType' -> ( { "PolicyArn" :: (ArnType') } -> {"PolicyArn" :: (ArnType') } ) -> GetPolicyRequest
newGetPolicyRequest' _PolicyArn customize = (GetPolicyRequest <<< customize) { "PolicyArn": _PolicyArn }



-- | <p>Contains the response to a successful <a>GetPolicy</a> request. </p>
newtype GetPolicyResponse = GetPolicyResponse 
  { "Policy" :: Maybe (Policy)
  }
derive instance newtypeGetPolicyResponse :: Newtype GetPolicyResponse _
derive instance repGenericGetPolicyResponse :: Generic GetPolicyResponse _
instance showGetPolicyResponse :: Show GetPolicyResponse where show = genericShow
instance decodeGetPolicyResponse :: Decode GetPolicyResponse where decode = genericDecode options
instance encodeGetPolicyResponse :: Encode GetPolicyResponse where encode = genericEncode options

-- | Constructs GetPolicyResponse from required parameters
newGetPolicyResponse :: GetPolicyResponse
newGetPolicyResponse  = GetPolicyResponse { "Policy": Nothing }

-- | Constructs GetPolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetPolicyResponse' :: ( { "Policy" :: Maybe (Policy) } -> {"Policy" :: Maybe (Policy) } ) -> GetPolicyResponse
newGetPolicyResponse'  customize = (GetPolicyResponse <<< customize) { "Policy": Nothing }



newtype GetPolicyVersionRequest = GetPolicyVersionRequest 
  { "PolicyArn" :: (ArnType')
  , "VersionId" :: (PolicyVersionIdType')
  }
derive instance newtypeGetPolicyVersionRequest :: Newtype GetPolicyVersionRequest _
derive instance repGenericGetPolicyVersionRequest :: Generic GetPolicyVersionRequest _
instance showGetPolicyVersionRequest :: Show GetPolicyVersionRequest where show = genericShow
instance decodeGetPolicyVersionRequest :: Decode GetPolicyVersionRequest where decode = genericDecode options
instance encodeGetPolicyVersionRequest :: Encode GetPolicyVersionRequest where encode = genericEncode options

-- | Constructs GetPolicyVersionRequest from required parameters
newGetPolicyVersionRequest :: ArnType' -> PolicyVersionIdType' -> GetPolicyVersionRequest
newGetPolicyVersionRequest _PolicyArn _VersionId = GetPolicyVersionRequest { "PolicyArn": _PolicyArn, "VersionId": _VersionId }

-- | Constructs GetPolicyVersionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetPolicyVersionRequest' :: ArnType' -> PolicyVersionIdType' -> ( { "PolicyArn" :: (ArnType') , "VersionId" :: (PolicyVersionIdType') } -> {"PolicyArn" :: (ArnType') , "VersionId" :: (PolicyVersionIdType') } ) -> GetPolicyVersionRequest
newGetPolicyVersionRequest' _PolicyArn _VersionId customize = (GetPolicyVersionRequest <<< customize) { "PolicyArn": _PolicyArn, "VersionId": _VersionId }



-- | <p>Contains the response to a successful <a>GetPolicyVersion</a> request. </p>
newtype GetPolicyVersionResponse = GetPolicyVersionResponse 
  { "PolicyVersion" :: Maybe (PolicyVersion)
  }
derive instance newtypeGetPolicyVersionResponse :: Newtype GetPolicyVersionResponse _
derive instance repGenericGetPolicyVersionResponse :: Generic GetPolicyVersionResponse _
instance showGetPolicyVersionResponse :: Show GetPolicyVersionResponse where show = genericShow
instance decodeGetPolicyVersionResponse :: Decode GetPolicyVersionResponse where decode = genericDecode options
instance encodeGetPolicyVersionResponse :: Encode GetPolicyVersionResponse where encode = genericEncode options

-- | Constructs GetPolicyVersionResponse from required parameters
newGetPolicyVersionResponse :: GetPolicyVersionResponse
newGetPolicyVersionResponse  = GetPolicyVersionResponse { "PolicyVersion": Nothing }

-- | Constructs GetPolicyVersionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetPolicyVersionResponse' :: ( { "PolicyVersion" :: Maybe (PolicyVersion) } -> {"PolicyVersion" :: Maybe (PolicyVersion) } ) -> GetPolicyVersionResponse
newGetPolicyVersionResponse'  customize = (GetPolicyVersionResponse <<< customize) { "PolicyVersion": Nothing }



newtype GetRolePolicyRequest = GetRolePolicyRequest 
  { "RoleName" :: (RoleNameType')
  , "PolicyName" :: (PolicyNameType')
  }
derive instance newtypeGetRolePolicyRequest :: Newtype GetRolePolicyRequest _
derive instance repGenericGetRolePolicyRequest :: Generic GetRolePolicyRequest _
instance showGetRolePolicyRequest :: Show GetRolePolicyRequest where show = genericShow
instance decodeGetRolePolicyRequest :: Decode GetRolePolicyRequest where decode = genericDecode options
instance encodeGetRolePolicyRequest :: Encode GetRolePolicyRequest where encode = genericEncode options

-- | Constructs GetRolePolicyRequest from required parameters
newGetRolePolicyRequest :: PolicyNameType' -> RoleNameType' -> GetRolePolicyRequest
newGetRolePolicyRequest _PolicyName _RoleName = GetRolePolicyRequest { "PolicyName": _PolicyName, "RoleName": _RoleName }

-- | Constructs GetRolePolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetRolePolicyRequest' :: PolicyNameType' -> RoleNameType' -> ( { "RoleName" :: (RoleNameType') , "PolicyName" :: (PolicyNameType') } -> {"RoleName" :: (RoleNameType') , "PolicyName" :: (PolicyNameType') } ) -> GetRolePolicyRequest
newGetRolePolicyRequest' _PolicyName _RoleName customize = (GetRolePolicyRequest <<< customize) { "PolicyName": _PolicyName, "RoleName": _RoleName }



-- | <p>Contains the response to a successful <a>GetRolePolicy</a> request. </p>
newtype GetRolePolicyResponse = GetRolePolicyResponse 
  { "RoleName" :: (RoleNameType')
  , "PolicyName" :: (PolicyNameType')
  , "PolicyDocument" :: (PolicyDocumentType')
  }
derive instance newtypeGetRolePolicyResponse :: Newtype GetRolePolicyResponse _
derive instance repGenericGetRolePolicyResponse :: Generic GetRolePolicyResponse _
instance showGetRolePolicyResponse :: Show GetRolePolicyResponse where show = genericShow
instance decodeGetRolePolicyResponse :: Decode GetRolePolicyResponse where decode = genericDecode options
instance encodeGetRolePolicyResponse :: Encode GetRolePolicyResponse where encode = genericEncode options

-- | Constructs GetRolePolicyResponse from required parameters
newGetRolePolicyResponse :: PolicyDocumentType' -> PolicyNameType' -> RoleNameType' -> GetRolePolicyResponse
newGetRolePolicyResponse _PolicyDocument _PolicyName _RoleName = GetRolePolicyResponse { "PolicyDocument": _PolicyDocument, "PolicyName": _PolicyName, "RoleName": _RoleName }

-- | Constructs GetRolePolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetRolePolicyResponse' :: PolicyDocumentType' -> PolicyNameType' -> RoleNameType' -> ( { "RoleName" :: (RoleNameType') , "PolicyName" :: (PolicyNameType') , "PolicyDocument" :: (PolicyDocumentType') } -> {"RoleName" :: (RoleNameType') , "PolicyName" :: (PolicyNameType') , "PolicyDocument" :: (PolicyDocumentType') } ) -> GetRolePolicyResponse
newGetRolePolicyResponse' _PolicyDocument _PolicyName _RoleName customize = (GetRolePolicyResponse <<< customize) { "PolicyDocument": _PolicyDocument, "PolicyName": _PolicyName, "RoleName": _RoleName }



newtype GetRoleRequest = GetRoleRequest 
  { "RoleName" :: (RoleNameType')
  }
derive instance newtypeGetRoleRequest :: Newtype GetRoleRequest _
derive instance repGenericGetRoleRequest :: Generic GetRoleRequest _
instance showGetRoleRequest :: Show GetRoleRequest where show = genericShow
instance decodeGetRoleRequest :: Decode GetRoleRequest where decode = genericDecode options
instance encodeGetRoleRequest :: Encode GetRoleRequest where encode = genericEncode options

-- | Constructs GetRoleRequest from required parameters
newGetRoleRequest :: RoleNameType' -> GetRoleRequest
newGetRoleRequest _RoleName = GetRoleRequest { "RoleName": _RoleName }

-- | Constructs GetRoleRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetRoleRequest' :: RoleNameType' -> ( { "RoleName" :: (RoleNameType') } -> {"RoleName" :: (RoleNameType') } ) -> GetRoleRequest
newGetRoleRequest' _RoleName customize = (GetRoleRequest <<< customize) { "RoleName": _RoleName }



-- | <p>Contains the response to a successful <a>GetRole</a> request. </p>
newtype GetRoleResponse = GetRoleResponse 
  { "Role" :: (Role)
  }
derive instance newtypeGetRoleResponse :: Newtype GetRoleResponse _
derive instance repGenericGetRoleResponse :: Generic GetRoleResponse _
instance showGetRoleResponse :: Show GetRoleResponse where show = genericShow
instance decodeGetRoleResponse :: Decode GetRoleResponse where decode = genericDecode options
instance encodeGetRoleResponse :: Encode GetRoleResponse where encode = genericEncode options

-- | Constructs GetRoleResponse from required parameters
newGetRoleResponse :: Role -> GetRoleResponse
newGetRoleResponse _Role = GetRoleResponse { "Role": _Role }

-- | Constructs GetRoleResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetRoleResponse' :: Role -> ( { "Role" :: (Role) } -> {"Role" :: (Role) } ) -> GetRoleResponse
newGetRoleResponse' _Role customize = (GetRoleResponse <<< customize) { "Role": _Role }



newtype GetSAMLProviderRequest = GetSAMLProviderRequest 
  { "SAMLProviderArn" :: (ArnType')
  }
derive instance newtypeGetSAMLProviderRequest :: Newtype GetSAMLProviderRequest _
derive instance repGenericGetSAMLProviderRequest :: Generic GetSAMLProviderRequest _
instance showGetSAMLProviderRequest :: Show GetSAMLProviderRequest where show = genericShow
instance decodeGetSAMLProviderRequest :: Decode GetSAMLProviderRequest where decode = genericDecode options
instance encodeGetSAMLProviderRequest :: Encode GetSAMLProviderRequest where encode = genericEncode options

-- | Constructs GetSAMLProviderRequest from required parameters
newGetSAMLProviderRequest :: ArnType' -> GetSAMLProviderRequest
newGetSAMLProviderRequest _SAMLProviderArn = GetSAMLProviderRequest { "SAMLProviderArn": _SAMLProviderArn }

-- | Constructs GetSAMLProviderRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetSAMLProviderRequest' :: ArnType' -> ( { "SAMLProviderArn" :: (ArnType') } -> {"SAMLProviderArn" :: (ArnType') } ) -> GetSAMLProviderRequest
newGetSAMLProviderRequest' _SAMLProviderArn customize = (GetSAMLProviderRequest <<< customize) { "SAMLProviderArn": _SAMLProviderArn }



-- | <p>Contains the response to a successful <a>GetSAMLProvider</a> request. </p>
newtype GetSAMLProviderResponse = GetSAMLProviderResponse 
  { "SAMLMetadataDocument" :: Maybe (SAMLMetadataDocumentType)
  , "CreateDate" :: Maybe (DateType')
  , "ValidUntil" :: Maybe (DateType')
  }
derive instance newtypeGetSAMLProviderResponse :: Newtype GetSAMLProviderResponse _
derive instance repGenericGetSAMLProviderResponse :: Generic GetSAMLProviderResponse _
instance showGetSAMLProviderResponse :: Show GetSAMLProviderResponse where show = genericShow
instance decodeGetSAMLProviderResponse :: Decode GetSAMLProviderResponse where decode = genericDecode options
instance encodeGetSAMLProviderResponse :: Encode GetSAMLProviderResponse where encode = genericEncode options

-- | Constructs GetSAMLProviderResponse from required parameters
newGetSAMLProviderResponse :: GetSAMLProviderResponse
newGetSAMLProviderResponse  = GetSAMLProviderResponse { "CreateDate": Nothing, "SAMLMetadataDocument": Nothing, "ValidUntil": Nothing }

-- | Constructs GetSAMLProviderResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetSAMLProviderResponse' :: ( { "SAMLMetadataDocument" :: Maybe (SAMLMetadataDocumentType) , "CreateDate" :: Maybe (DateType') , "ValidUntil" :: Maybe (DateType') } -> {"SAMLMetadataDocument" :: Maybe (SAMLMetadataDocumentType) , "CreateDate" :: Maybe (DateType') , "ValidUntil" :: Maybe (DateType') } ) -> GetSAMLProviderResponse
newGetSAMLProviderResponse'  customize = (GetSAMLProviderResponse <<< customize) { "CreateDate": Nothing, "SAMLMetadataDocument": Nothing, "ValidUntil": Nothing }



newtype GetSSHPublicKeyRequest = GetSSHPublicKeyRequest 
  { "UserName" :: (UserNameType')
  , "SSHPublicKeyId" :: (PublicKeyIdType')
  , "Encoding" :: (EncodingType')
  }
derive instance newtypeGetSSHPublicKeyRequest :: Newtype GetSSHPublicKeyRequest _
derive instance repGenericGetSSHPublicKeyRequest :: Generic GetSSHPublicKeyRequest _
instance showGetSSHPublicKeyRequest :: Show GetSSHPublicKeyRequest where show = genericShow
instance decodeGetSSHPublicKeyRequest :: Decode GetSSHPublicKeyRequest where decode = genericDecode options
instance encodeGetSSHPublicKeyRequest :: Encode GetSSHPublicKeyRequest where encode = genericEncode options

-- | Constructs GetSSHPublicKeyRequest from required parameters
newGetSSHPublicKeyRequest :: EncodingType' -> PublicKeyIdType' -> UserNameType' -> GetSSHPublicKeyRequest
newGetSSHPublicKeyRequest _Encoding _SSHPublicKeyId _UserName = GetSSHPublicKeyRequest { "Encoding": _Encoding, "SSHPublicKeyId": _SSHPublicKeyId, "UserName": _UserName }

-- | Constructs GetSSHPublicKeyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetSSHPublicKeyRequest' :: EncodingType' -> PublicKeyIdType' -> UserNameType' -> ( { "UserName" :: (UserNameType') , "SSHPublicKeyId" :: (PublicKeyIdType') , "Encoding" :: (EncodingType') } -> {"UserName" :: (UserNameType') , "SSHPublicKeyId" :: (PublicKeyIdType') , "Encoding" :: (EncodingType') } ) -> GetSSHPublicKeyRequest
newGetSSHPublicKeyRequest' _Encoding _SSHPublicKeyId _UserName customize = (GetSSHPublicKeyRequest <<< customize) { "Encoding": _Encoding, "SSHPublicKeyId": _SSHPublicKeyId, "UserName": _UserName }



-- | <p>Contains the response to a successful <a>GetSSHPublicKey</a> request.</p>
newtype GetSSHPublicKeyResponse = GetSSHPublicKeyResponse 
  { "SSHPublicKey" :: Maybe (SSHPublicKey)
  }
derive instance newtypeGetSSHPublicKeyResponse :: Newtype GetSSHPublicKeyResponse _
derive instance repGenericGetSSHPublicKeyResponse :: Generic GetSSHPublicKeyResponse _
instance showGetSSHPublicKeyResponse :: Show GetSSHPublicKeyResponse where show = genericShow
instance decodeGetSSHPublicKeyResponse :: Decode GetSSHPublicKeyResponse where decode = genericDecode options
instance encodeGetSSHPublicKeyResponse :: Encode GetSSHPublicKeyResponse where encode = genericEncode options

-- | Constructs GetSSHPublicKeyResponse from required parameters
newGetSSHPublicKeyResponse :: GetSSHPublicKeyResponse
newGetSSHPublicKeyResponse  = GetSSHPublicKeyResponse { "SSHPublicKey": Nothing }

-- | Constructs GetSSHPublicKeyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetSSHPublicKeyResponse' :: ( { "SSHPublicKey" :: Maybe (SSHPublicKey) } -> {"SSHPublicKey" :: Maybe (SSHPublicKey) } ) -> GetSSHPublicKeyResponse
newGetSSHPublicKeyResponse'  customize = (GetSSHPublicKeyResponse <<< customize) { "SSHPublicKey": Nothing }



newtype GetServerCertificateRequest = GetServerCertificateRequest 
  { "ServerCertificateName" :: (ServerCertificateNameType')
  }
derive instance newtypeGetServerCertificateRequest :: Newtype GetServerCertificateRequest _
derive instance repGenericGetServerCertificateRequest :: Generic GetServerCertificateRequest _
instance showGetServerCertificateRequest :: Show GetServerCertificateRequest where show = genericShow
instance decodeGetServerCertificateRequest :: Decode GetServerCertificateRequest where decode = genericDecode options
instance encodeGetServerCertificateRequest :: Encode GetServerCertificateRequest where encode = genericEncode options

-- | Constructs GetServerCertificateRequest from required parameters
newGetServerCertificateRequest :: ServerCertificateNameType' -> GetServerCertificateRequest
newGetServerCertificateRequest _ServerCertificateName = GetServerCertificateRequest { "ServerCertificateName": _ServerCertificateName }

-- | Constructs GetServerCertificateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetServerCertificateRequest' :: ServerCertificateNameType' -> ( { "ServerCertificateName" :: (ServerCertificateNameType') } -> {"ServerCertificateName" :: (ServerCertificateNameType') } ) -> GetServerCertificateRequest
newGetServerCertificateRequest' _ServerCertificateName customize = (GetServerCertificateRequest <<< customize) { "ServerCertificateName": _ServerCertificateName }



-- | <p>Contains the response to a successful <a>GetServerCertificate</a> request. </p>
newtype GetServerCertificateResponse = GetServerCertificateResponse 
  { "ServerCertificate" :: (ServerCertificate)
  }
derive instance newtypeGetServerCertificateResponse :: Newtype GetServerCertificateResponse _
derive instance repGenericGetServerCertificateResponse :: Generic GetServerCertificateResponse _
instance showGetServerCertificateResponse :: Show GetServerCertificateResponse where show = genericShow
instance decodeGetServerCertificateResponse :: Decode GetServerCertificateResponse where decode = genericDecode options
instance encodeGetServerCertificateResponse :: Encode GetServerCertificateResponse where encode = genericEncode options

-- | Constructs GetServerCertificateResponse from required parameters
newGetServerCertificateResponse :: ServerCertificate -> GetServerCertificateResponse
newGetServerCertificateResponse _ServerCertificate = GetServerCertificateResponse { "ServerCertificate": _ServerCertificate }

-- | Constructs GetServerCertificateResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetServerCertificateResponse' :: ServerCertificate -> ( { "ServerCertificate" :: (ServerCertificate) } -> {"ServerCertificate" :: (ServerCertificate) } ) -> GetServerCertificateResponse
newGetServerCertificateResponse' _ServerCertificate customize = (GetServerCertificateResponse <<< customize) { "ServerCertificate": _ServerCertificate }



newtype GetServiceLinkedRoleDeletionStatusRequest = GetServiceLinkedRoleDeletionStatusRequest 
  { "DeletionTaskId" :: (DeletionTaskIdType)
  }
derive instance newtypeGetServiceLinkedRoleDeletionStatusRequest :: Newtype GetServiceLinkedRoleDeletionStatusRequest _
derive instance repGenericGetServiceLinkedRoleDeletionStatusRequest :: Generic GetServiceLinkedRoleDeletionStatusRequest _
instance showGetServiceLinkedRoleDeletionStatusRequest :: Show GetServiceLinkedRoleDeletionStatusRequest where show = genericShow
instance decodeGetServiceLinkedRoleDeletionStatusRequest :: Decode GetServiceLinkedRoleDeletionStatusRequest where decode = genericDecode options
instance encodeGetServiceLinkedRoleDeletionStatusRequest :: Encode GetServiceLinkedRoleDeletionStatusRequest where encode = genericEncode options

-- | Constructs GetServiceLinkedRoleDeletionStatusRequest from required parameters
newGetServiceLinkedRoleDeletionStatusRequest :: DeletionTaskIdType -> GetServiceLinkedRoleDeletionStatusRequest
newGetServiceLinkedRoleDeletionStatusRequest _DeletionTaskId = GetServiceLinkedRoleDeletionStatusRequest { "DeletionTaskId": _DeletionTaskId }

-- | Constructs GetServiceLinkedRoleDeletionStatusRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetServiceLinkedRoleDeletionStatusRequest' :: DeletionTaskIdType -> ( { "DeletionTaskId" :: (DeletionTaskIdType) } -> {"DeletionTaskId" :: (DeletionTaskIdType) } ) -> GetServiceLinkedRoleDeletionStatusRequest
newGetServiceLinkedRoleDeletionStatusRequest' _DeletionTaskId customize = (GetServiceLinkedRoleDeletionStatusRequest <<< customize) { "DeletionTaskId": _DeletionTaskId }



newtype GetServiceLinkedRoleDeletionStatusResponse = GetServiceLinkedRoleDeletionStatusResponse 
  { "Status" :: (DeletionTaskStatusType)
  , "Reason" :: Maybe (DeletionTaskFailureReasonType)
  }
derive instance newtypeGetServiceLinkedRoleDeletionStatusResponse :: Newtype GetServiceLinkedRoleDeletionStatusResponse _
derive instance repGenericGetServiceLinkedRoleDeletionStatusResponse :: Generic GetServiceLinkedRoleDeletionStatusResponse _
instance showGetServiceLinkedRoleDeletionStatusResponse :: Show GetServiceLinkedRoleDeletionStatusResponse where show = genericShow
instance decodeGetServiceLinkedRoleDeletionStatusResponse :: Decode GetServiceLinkedRoleDeletionStatusResponse where decode = genericDecode options
instance encodeGetServiceLinkedRoleDeletionStatusResponse :: Encode GetServiceLinkedRoleDeletionStatusResponse where encode = genericEncode options

-- | Constructs GetServiceLinkedRoleDeletionStatusResponse from required parameters
newGetServiceLinkedRoleDeletionStatusResponse :: DeletionTaskStatusType -> GetServiceLinkedRoleDeletionStatusResponse
newGetServiceLinkedRoleDeletionStatusResponse _Status = GetServiceLinkedRoleDeletionStatusResponse { "Status": _Status, "Reason": Nothing }

-- | Constructs GetServiceLinkedRoleDeletionStatusResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetServiceLinkedRoleDeletionStatusResponse' :: DeletionTaskStatusType -> ( { "Status" :: (DeletionTaskStatusType) , "Reason" :: Maybe (DeletionTaskFailureReasonType) } -> {"Status" :: (DeletionTaskStatusType) , "Reason" :: Maybe (DeletionTaskFailureReasonType) } ) -> GetServiceLinkedRoleDeletionStatusResponse
newGetServiceLinkedRoleDeletionStatusResponse' _Status customize = (GetServiceLinkedRoleDeletionStatusResponse <<< customize) { "Status": _Status, "Reason": Nothing }



newtype GetUserPolicyRequest = GetUserPolicyRequest 
  { "UserName" :: (ExistingUserNameType')
  , "PolicyName" :: (PolicyNameType')
  }
derive instance newtypeGetUserPolicyRequest :: Newtype GetUserPolicyRequest _
derive instance repGenericGetUserPolicyRequest :: Generic GetUserPolicyRequest _
instance showGetUserPolicyRequest :: Show GetUserPolicyRequest where show = genericShow
instance decodeGetUserPolicyRequest :: Decode GetUserPolicyRequest where decode = genericDecode options
instance encodeGetUserPolicyRequest :: Encode GetUserPolicyRequest where encode = genericEncode options

-- | Constructs GetUserPolicyRequest from required parameters
newGetUserPolicyRequest :: PolicyNameType' -> ExistingUserNameType' -> GetUserPolicyRequest
newGetUserPolicyRequest _PolicyName _UserName = GetUserPolicyRequest { "PolicyName": _PolicyName, "UserName": _UserName }

-- | Constructs GetUserPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetUserPolicyRequest' :: PolicyNameType' -> ExistingUserNameType' -> ( { "UserName" :: (ExistingUserNameType') , "PolicyName" :: (PolicyNameType') } -> {"UserName" :: (ExistingUserNameType') , "PolicyName" :: (PolicyNameType') } ) -> GetUserPolicyRequest
newGetUserPolicyRequest' _PolicyName _UserName customize = (GetUserPolicyRequest <<< customize) { "PolicyName": _PolicyName, "UserName": _UserName }



-- | <p>Contains the response to a successful <a>GetUserPolicy</a> request. </p>
newtype GetUserPolicyResponse = GetUserPolicyResponse 
  { "UserName" :: (ExistingUserNameType')
  , "PolicyName" :: (PolicyNameType')
  , "PolicyDocument" :: (PolicyDocumentType')
  }
derive instance newtypeGetUserPolicyResponse :: Newtype GetUserPolicyResponse _
derive instance repGenericGetUserPolicyResponse :: Generic GetUserPolicyResponse _
instance showGetUserPolicyResponse :: Show GetUserPolicyResponse where show = genericShow
instance decodeGetUserPolicyResponse :: Decode GetUserPolicyResponse where decode = genericDecode options
instance encodeGetUserPolicyResponse :: Encode GetUserPolicyResponse where encode = genericEncode options

-- | Constructs GetUserPolicyResponse from required parameters
newGetUserPolicyResponse :: PolicyDocumentType' -> PolicyNameType' -> ExistingUserNameType' -> GetUserPolicyResponse
newGetUserPolicyResponse _PolicyDocument _PolicyName _UserName = GetUserPolicyResponse { "PolicyDocument": _PolicyDocument, "PolicyName": _PolicyName, "UserName": _UserName }

-- | Constructs GetUserPolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetUserPolicyResponse' :: PolicyDocumentType' -> PolicyNameType' -> ExistingUserNameType' -> ( { "UserName" :: (ExistingUserNameType') , "PolicyName" :: (PolicyNameType') , "PolicyDocument" :: (PolicyDocumentType') } -> {"UserName" :: (ExistingUserNameType') , "PolicyName" :: (PolicyNameType') , "PolicyDocument" :: (PolicyDocumentType') } ) -> GetUserPolicyResponse
newGetUserPolicyResponse' _PolicyDocument _PolicyName _UserName customize = (GetUserPolicyResponse <<< customize) { "PolicyDocument": _PolicyDocument, "PolicyName": _PolicyName, "UserName": _UserName }



newtype GetUserRequest = GetUserRequest 
  { "UserName" :: Maybe (ExistingUserNameType')
  }
derive instance newtypeGetUserRequest :: Newtype GetUserRequest _
derive instance repGenericGetUserRequest :: Generic GetUserRequest _
instance showGetUserRequest :: Show GetUserRequest where show = genericShow
instance decodeGetUserRequest :: Decode GetUserRequest where decode = genericDecode options
instance encodeGetUserRequest :: Encode GetUserRequest where encode = genericEncode options

-- | Constructs GetUserRequest from required parameters
newGetUserRequest :: GetUserRequest
newGetUserRequest  = GetUserRequest { "UserName": Nothing }

-- | Constructs GetUserRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetUserRequest' :: ( { "UserName" :: Maybe (ExistingUserNameType') } -> {"UserName" :: Maybe (ExistingUserNameType') } ) -> GetUserRequest
newGetUserRequest'  customize = (GetUserRequest <<< customize) { "UserName": Nothing }



-- | <p>Contains the response to a successful <a>GetUser</a> request. </p>
newtype GetUserResponse = GetUserResponse 
  { "User" :: (User)
  }
derive instance newtypeGetUserResponse :: Newtype GetUserResponse _
derive instance repGenericGetUserResponse :: Generic GetUserResponse _
instance showGetUserResponse :: Show GetUserResponse where show = genericShow
instance decodeGetUserResponse :: Decode GetUserResponse where decode = genericDecode options
instance encodeGetUserResponse :: Encode GetUserResponse where encode = genericEncode options

-- | Constructs GetUserResponse from required parameters
newGetUserResponse :: User -> GetUserResponse
newGetUserResponse _User = GetUserResponse { "User": _User }

-- | Constructs GetUserResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetUserResponse' :: User -> ( { "User" :: (User) } -> {"User" :: (User) } ) -> GetUserResponse
newGetUserResponse' _User customize = (GetUserResponse <<< customize) { "User": _User }



-- | <p>Contains information about an IAM group entity.</p> <p>This data type is used as a response element in the following actions:</p> <ul> <li> <p> <a>CreateGroup</a> </p> </li> <li> <p> <a>GetGroup</a> </p> </li> <li> <p> <a>ListGroups</a> </p> </li> </ul>
newtype Group = Group 
  { "Path" :: (PathType')
  , "GroupName" :: (GroupNameType')
  , "GroupId" :: (IdType')
  , "Arn" :: (ArnType')
  , "CreateDate" :: (DateType')
  }
derive instance newtypeGroup :: Newtype Group _
derive instance repGenericGroup :: Generic Group _
instance showGroup :: Show Group where show = genericShow
instance decodeGroup :: Decode Group where decode = genericDecode options
instance encodeGroup :: Encode Group where encode = genericEncode options

-- | Constructs Group from required parameters
newGroup :: ArnType' -> DateType' -> IdType' -> GroupNameType' -> PathType' -> Group
newGroup _Arn _CreateDate _GroupId _GroupName _Path = Group { "Arn": _Arn, "CreateDate": _CreateDate, "GroupId": _GroupId, "GroupName": _GroupName, "Path": _Path }

-- | Constructs Group's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGroup' :: ArnType' -> DateType' -> IdType' -> GroupNameType' -> PathType' -> ( { "Path" :: (PathType') , "GroupName" :: (GroupNameType') , "GroupId" :: (IdType') , "Arn" :: (ArnType') , "CreateDate" :: (DateType') } -> {"Path" :: (PathType') , "GroupName" :: (GroupNameType') , "GroupId" :: (IdType') , "Arn" :: (ArnType') , "CreateDate" :: (DateType') } ) -> Group
newGroup' _Arn _CreateDate _GroupId _GroupName _Path customize = (Group <<< customize) { "Arn": _Arn, "CreateDate": _CreateDate, "GroupId": _GroupId, "GroupName": _GroupName, "Path": _Path }



-- | <p>Contains information about an IAM group, including all of the group's policies.</p> <p>This data type is used as a response element in the <a>GetAccountAuthorizationDetails</a> action.</p>
newtype GroupDetail = GroupDetail 
  { "Path" :: Maybe (PathType')
  , "GroupName" :: Maybe (GroupNameType')
  , "GroupId" :: Maybe (IdType')
  , "Arn" :: Maybe (ArnType')
  , "CreateDate" :: Maybe (DateType')
  , "GroupPolicyList" :: Maybe (PolicyDetailListType')
  , "AttachedManagedPolicies" :: Maybe (AttachedPoliciesListType')
  }
derive instance newtypeGroupDetail :: Newtype GroupDetail _
derive instance repGenericGroupDetail :: Generic GroupDetail _
instance showGroupDetail :: Show GroupDetail where show = genericShow
instance decodeGroupDetail :: Decode GroupDetail where decode = genericDecode options
instance encodeGroupDetail :: Encode GroupDetail where encode = genericEncode options

-- | Constructs GroupDetail from required parameters
newGroupDetail :: GroupDetail
newGroupDetail  = GroupDetail { "Arn": Nothing, "AttachedManagedPolicies": Nothing, "CreateDate": Nothing, "GroupId": Nothing, "GroupName": Nothing, "GroupPolicyList": Nothing, "Path": Nothing }

-- | Constructs GroupDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGroupDetail' :: ( { "Path" :: Maybe (PathType') , "GroupName" :: Maybe (GroupNameType') , "GroupId" :: Maybe (IdType') , "Arn" :: Maybe (ArnType') , "CreateDate" :: Maybe (DateType') , "GroupPolicyList" :: Maybe (PolicyDetailListType') , "AttachedManagedPolicies" :: Maybe (AttachedPoliciesListType') } -> {"Path" :: Maybe (PathType') , "GroupName" :: Maybe (GroupNameType') , "GroupId" :: Maybe (IdType') , "Arn" :: Maybe (ArnType') , "CreateDate" :: Maybe (DateType') , "GroupPolicyList" :: Maybe (PolicyDetailListType') , "AttachedManagedPolicies" :: Maybe (AttachedPoliciesListType') } ) -> GroupDetail
newGroupDetail'  customize = (GroupDetail <<< customize) { "Arn": Nothing, "AttachedManagedPolicies": Nothing, "CreateDate": Nothing, "GroupId": Nothing, "GroupName": Nothing, "GroupPolicyList": Nothing, "Path": Nothing }



-- | <p>Contains information about an instance profile.</p> <p>This data type is used as a response element in the following actions:</p> <ul> <li> <p> <a>CreateInstanceProfile</a> </p> </li> <li> <p> <a>GetInstanceProfile</a> </p> </li> <li> <p> <a>ListInstanceProfiles</a> </p> </li> <li> <p> <a>ListInstanceProfilesForRole</a> </p> </li> </ul>
newtype InstanceProfile = InstanceProfile 
  { "Path" :: (PathType')
  , "InstanceProfileName" :: (InstanceProfileNameType')
  , "InstanceProfileId" :: (IdType')
  , "Arn" :: (ArnType')
  , "CreateDate" :: (DateType')
  , "Roles" :: (RoleListType')
  }
derive instance newtypeInstanceProfile :: Newtype InstanceProfile _
derive instance repGenericInstanceProfile :: Generic InstanceProfile _
instance showInstanceProfile :: Show InstanceProfile where show = genericShow
instance decodeInstanceProfile :: Decode InstanceProfile where decode = genericDecode options
instance encodeInstanceProfile :: Encode InstanceProfile where encode = genericEncode options

-- | Constructs InstanceProfile from required parameters
newInstanceProfile :: ArnType' -> DateType' -> IdType' -> InstanceProfileNameType' -> PathType' -> RoleListType' -> InstanceProfile
newInstanceProfile _Arn _CreateDate _InstanceProfileId _InstanceProfileName _Path _Roles = InstanceProfile { "Arn": _Arn, "CreateDate": _CreateDate, "InstanceProfileId": _InstanceProfileId, "InstanceProfileName": _InstanceProfileName, "Path": _Path, "Roles": _Roles }

-- | Constructs InstanceProfile's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceProfile' :: ArnType' -> DateType' -> IdType' -> InstanceProfileNameType' -> PathType' -> RoleListType' -> ( { "Path" :: (PathType') , "InstanceProfileName" :: (InstanceProfileNameType') , "InstanceProfileId" :: (IdType') , "Arn" :: (ArnType') , "CreateDate" :: (DateType') , "Roles" :: (RoleListType') } -> {"Path" :: (PathType') , "InstanceProfileName" :: (InstanceProfileNameType') , "InstanceProfileId" :: (IdType') , "Arn" :: (ArnType') , "CreateDate" :: (DateType') , "Roles" :: (RoleListType') } ) -> InstanceProfile
newInstanceProfile' _Arn _CreateDate _InstanceProfileId _InstanceProfileName _Path _Roles customize = (InstanceProfile <<< customize) { "Arn": _Arn, "CreateDate": _CreateDate, "InstanceProfileId": _InstanceProfileId, "InstanceProfileName": _InstanceProfileName, "Path": _Path, "Roles": _Roles }



-- | <p>The request was rejected because the authentication code was not recognized. The error message describes the specific error.</p>
newtype InvalidAuthenticationCodeException = InvalidAuthenticationCodeException 
  { "message" :: Maybe (InvalidAuthenticationCodeMessage')
  }
derive instance newtypeInvalidAuthenticationCodeException :: Newtype InvalidAuthenticationCodeException _
derive instance repGenericInvalidAuthenticationCodeException :: Generic InvalidAuthenticationCodeException _
instance showInvalidAuthenticationCodeException :: Show InvalidAuthenticationCodeException where show = genericShow
instance decodeInvalidAuthenticationCodeException :: Decode InvalidAuthenticationCodeException where decode = genericDecode options
instance encodeInvalidAuthenticationCodeException :: Encode InvalidAuthenticationCodeException where encode = genericEncode options

-- | Constructs InvalidAuthenticationCodeException from required parameters
newInvalidAuthenticationCodeException :: InvalidAuthenticationCodeException
newInvalidAuthenticationCodeException  = InvalidAuthenticationCodeException { "message": Nothing }

-- | Constructs InvalidAuthenticationCodeException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidAuthenticationCodeException' :: ( { "message" :: Maybe (InvalidAuthenticationCodeMessage') } -> {"message" :: Maybe (InvalidAuthenticationCodeMessage') } ) -> InvalidAuthenticationCodeException
newInvalidAuthenticationCodeException'  customize = (InvalidAuthenticationCodeException <<< customize) { "message": Nothing }



-- | <p>The request was rejected because the certificate is invalid.</p>
newtype InvalidCertificateException = InvalidCertificateException 
  { "message" :: Maybe (InvalidCertificateMessage')
  }
derive instance newtypeInvalidCertificateException :: Newtype InvalidCertificateException _
derive instance repGenericInvalidCertificateException :: Generic InvalidCertificateException _
instance showInvalidCertificateException :: Show InvalidCertificateException where show = genericShow
instance decodeInvalidCertificateException :: Decode InvalidCertificateException where decode = genericDecode options
instance encodeInvalidCertificateException :: Encode InvalidCertificateException where encode = genericEncode options

-- | Constructs InvalidCertificateException from required parameters
newInvalidCertificateException :: InvalidCertificateException
newInvalidCertificateException  = InvalidCertificateException { "message": Nothing }

-- | Constructs InvalidCertificateException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidCertificateException' :: ( { "message" :: Maybe (InvalidCertificateMessage') } -> {"message" :: Maybe (InvalidCertificateMessage') } ) -> InvalidCertificateException
newInvalidCertificateException'  customize = (InvalidCertificateException <<< customize) { "message": Nothing }



-- | <p>The request was rejected because an invalid or out-of-range value was supplied for an input parameter.</p>
newtype InvalidInputException = InvalidInputException 
  { "message" :: Maybe (InvalidInputMessage')
  }
derive instance newtypeInvalidInputException :: Newtype InvalidInputException _
derive instance repGenericInvalidInputException :: Generic InvalidInputException _
instance showInvalidInputException :: Show InvalidInputException where show = genericShow
instance decodeInvalidInputException :: Decode InvalidInputException where decode = genericDecode options
instance encodeInvalidInputException :: Encode InvalidInputException where encode = genericEncode options

-- | Constructs InvalidInputException from required parameters
newInvalidInputException :: InvalidInputException
newInvalidInputException  = InvalidInputException { "message": Nothing }

-- | Constructs InvalidInputException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidInputException' :: ( { "message" :: Maybe (InvalidInputMessage') } -> {"message" :: Maybe (InvalidInputMessage') } ) -> InvalidInputException
newInvalidInputException'  customize = (InvalidInputException <<< customize) { "message": Nothing }



-- | <p>The request was rejected because the public key is malformed or otherwise invalid.</p>
newtype InvalidPublicKeyException = InvalidPublicKeyException 
  { "message" :: Maybe (InvalidPublicKeyMessage')
  }
derive instance newtypeInvalidPublicKeyException :: Newtype InvalidPublicKeyException _
derive instance repGenericInvalidPublicKeyException :: Generic InvalidPublicKeyException _
instance showInvalidPublicKeyException :: Show InvalidPublicKeyException where show = genericShow
instance decodeInvalidPublicKeyException :: Decode InvalidPublicKeyException where decode = genericDecode options
instance encodeInvalidPublicKeyException :: Encode InvalidPublicKeyException where encode = genericEncode options

-- | Constructs InvalidPublicKeyException from required parameters
newInvalidPublicKeyException :: InvalidPublicKeyException
newInvalidPublicKeyException  = InvalidPublicKeyException { "message": Nothing }

-- | Constructs InvalidPublicKeyException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidPublicKeyException' :: ( { "message" :: Maybe (InvalidPublicKeyMessage') } -> {"message" :: Maybe (InvalidPublicKeyMessage') } ) -> InvalidPublicKeyException
newInvalidPublicKeyException'  customize = (InvalidPublicKeyException <<< customize) { "message": Nothing }



-- | <p>The request was rejected because the type of user for the transaction was incorrect.</p>
newtype InvalidUserTypeException = InvalidUserTypeException 
  { "message" :: Maybe (InvalidUserTypeMessage')
  }
derive instance newtypeInvalidUserTypeException :: Newtype InvalidUserTypeException _
derive instance repGenericInvalidUserTypeException :: Generic InvalidUserTypeException _
instance showInvalidUserTypeException :: Show InvalidUserTypeException where show = genericShow
instance decodeInvalidUserTypeException :: Decode InvalidUserTypeException where decode = genericDecode options
instance encodeInvalidUserTypeException :: Encode InvalidUserTypeException where encode = genericEncode options

-- | Constructs InvalidUserTypeException from required parameters
newInvalidUserTypeException :: InvalidUserTypeException
newInvalidUserTypeException  = InvalidUserTypeException { "message": Nothing }

-- | Constructs InvalidUserTypeException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidUserTypeException' :: ( { "message" :: Maybe (InvalidUserTypeMessage') } -> {"message" :: Maybe (InvalidUserTypeMessage') } ) -> InvalidUserTypeException
newInvalidUserTypeException'  customize = (InvalidUserTypeException <<< customize) { "message": Nothing }



-- | <p>The request was rejected because the public key certificate and the private key do not match.</p>
newtype KeyPairMismatchException = KeyPairMismatchException 
  { "message" :: Maybe (KeyPairMismatchMessage')
  }
derive instance newtypeKeyPairMismatchException :: Newtype KeyPairMismatchException _
derive instance repGenericKeyPairMismatchException :: Generic KeyPairMismatchException _
instance showKeyPairMismatchException :: Show KeyPairMismatchException where show = genericShow
instance decodeKeyPairMismatchException :: Decode KeyPairMismatchException where decode = genericDecode options
instance encodeKeyPairMismatchException :: Encode KeyPairMismatchException where encode = genericEncode options

-- | Constructs KeyPairMismatchException from required parameters
newKeyPairMismatchException :: KeyPairMismatchException
newKeyPairMismatchException  = KeyPairMismatchException { "message": Nothing }

-- | Constructs KeyPairMismatchException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKeyPairMismatchException' :: ( { "message" :: Maybe (KeyPairMismatchMessage') } -> {"message" :: Maybe (KeyPairMismatchMessage') } ) -> KeyPairMismatchException
newKeyPairMismatchException'  customize = (KeyPairMismatchException <<< customize) { "message": Nothing }



-- | <p>The request was rejected because it attempted to create resources beyond the current AWS account limits. The error message describes the limit exceeded.</p>
newtype LimitExceededException = LimitExceededException 
  { "message" :: Maybe (LimitExceededMessage')
  }
derive instance newtypeLimitExceededException :: Newtype LimitExceededException _
derive instance repGenericLimitExceededException :: Generic LimitExceededException _
instance showLimitExceededException :: Show LimitExceededException where show = genericShow
instance decodeLimitExceededException :: Decode LimitExceededException where decode = genericDecode options
instance encodeLimitExceededException :: Encode LimitExceededException where encode = genericEncode options

-- | Constructs LimitExceededException from required parameters
newLimitExceededException :: LimitExceededException
newLimitExceededException  = LimitExceededException { "message": Nothing }

-- | Constructs LimitExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLimitExceededException' :: ( { "message" :: Maybe (LimitExceededMessage') } -> {"message" :: Maybe (LimitExceededMessage') } ) -> LimitExceededException
newLimitExceededException'  customize = (LimitExceededException <<< customize) { "message": Nothing }



newtype LineNumber = LineNumber Int
derive instance newtypeLineNumber :: Newtype LineNumber _
derive instance repGenericLineNumber :: Generic LineNumber _
instance showLineNumber :: Show LineNumber where show = genericShow
instance decodeLineNumber :: Decode LineNumber where decode = genericDecode options
instance encodeLineNumber :: Encode LineNumber where encode = genericEncode options



newtype ListAccessKeysRequest = ListAccessKeysRequest 
  { "UserName" :: Maybe (ExistingUserNameType')
  , "Marker" :: Maybe (MarkerType')
  , "MaxItems" :: Maybe (MaxItemsType')
  }
derive instance newtypeListAccessKeysRequest :: Newtype ListAccessKeysRequest _
derive instance repGenericListAccessKeysRequest :: Generic ListAccessKeysRequest _
instance showListAccessKeysRequest :: Show ListAccessKeysRequest where show = genericShow
instance decodeListAccessKeysRequest :: Decode ListAccessKeysRequest where decode = genericDecode options
instance encodeListAccessKeysRequest :: Encode ListAccessKeysRequest where encode = genericEncode options

-- | Constructs ListAccessKeysRequest from required parameters
newListAccessKeysRequest :: ListAccessKeysRequest
newListAccessKeysRequest  = ListAccessKeysRequest { "Marker": Nothing, "MaxItems": Nothing, "UserName": Nothing }

-- | Constructs ListAccessKeysRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAccessKeysRequest' :: ( { "UserName" :: Maybe (ExistingUserNameType') , "Marker" :: Maybe (MarkerType') , "MaxItems" :: Maybe (MaxItemsType') } -> {"UserName" :: Maybe (ExistingUserNameType') , "Marker" :: Maybe (MarkerType') , "MaxItems" :: Maybe (MaxItemsType') } ) -> ListAccessKeysRequest
newListAccessKeysRequest'  customize = (ListAccessKeysRequest <<< customize) { "Marker": Nothing, "MaxItems": Nothing, "UserName": Nothing }



-- | <p>Contains the response to a successful <a>ListAccessKeys</a> request. </p>
newtype ListAccessKeysResponse = ListAccessKeysResponse 
  { "AccessKeyMetadata" :: (AccessKeyMetadataListType')
  , "IsTruncated" :: Maybe (BooleanType')
  , "Marker" :: Maybe (MarkerType')
  }
derive instance newtypeListAccessKeysResponse :: Newtype ListAccessKeysResponse _
derive instance repGenericListAccessKeysResponse :: Generic ListAccessKeysResponse _
instance showListAccessKeysResponse :: Show ListAccessKeysResponse where show = genericShow
instance decodeListAccessKeysResponse :: Decode ListAccessKeysResponse where decode = genericDecode options
instance encodeListAccessKeysResponse :: Encode ListAccessKeysResponse where encode = genericEncode options

-- | Constructs ListAccessKeysResponse from required parameters
newListAccessKeysResponse :: AccessKeyMetadataListType' -> ListAccessKeysResponse
newListAccessKeysResponse _AccessKeyMetadata = ListAccessKeysResponse { "AccessKeyMetadata": _AccessKeyMetadata, "IsTruncated": Nothing, "Marker": Nothing }

-- | Constructs ListAccessKeysResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAccessKeysResponse' :: AccessKeyMetadataListType' -> ( { "AccessKeyMetadata" :: (AccessKeyMetadataListType') , "IsTruncated" :: Maybe (BooleanType') , "Marker" :: Maybe (MarkerType') } -> {"AccessKeyMetadata" :: (AccessKeyMetadataListType') , "IsTruncated" :: Maybe (BooleanType') , "Marker" :: Maybe (MarkerType') } ) -> ListAccessKeysResponse
newListAccessKeysResponse' _AccessKeyMetadata customize = (ListAccessKeysResponse <<< customize) { "AccessKeyMetadata": _AccessKeyMetadata, "IsTruncated": Nothing, "Marker": Nothing }



newtype ListAccountAliasesRequest = ListAccountAliasesRequest 
  { "Marker" :: Maybe (MarkerType')
  , "MaxItems" :: Maybe (MaxItemsType')
  }
derive instance newtypeListAccountAliasesRequest :: Newtype ListAccountAliasesRequest _
derive instance repGenericListAccountAliasesRequest :: Generic ListAccountAliasesRequest _
instance showListAccountAliasesRequest :: Show ListAccountAliasesRequest where show = genericShow
instance decodeListAccountAliasesRequest :: Decode ListAccountAliasesRequest where decode = genericDecode options
instance encodeListAccountAliasesRequest :: Encode ListAccountAliasesRequest where encode = genericEncode options

-- | Constructs ListAccountAliasesRequest from required parameters
newListAccountAliasesRequest :: ListAccountAliasesRequest
newListAccountAliasesRequest  = ListAccountAliasesRequest { "Marker": Nothing, "MaxItems": Nothing }

-- | Constructs ListAccountAliasesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAccountAliasesRequest' :: ( { "Marker" :: Maybe (MarkerType') , "MaxItems" :: Maybe (MaxItemsType') } -> {"Marker" :: Maybe (MarkerType') , "MaxItems" :: Maybe (MaxItemsType') } ) -> ListAccountAliasesRequest
newListAccountAliasesRequest'  customize = (ListAccountAliasesRequest <<< customize) { "Marker": Nothing, "MaxItems": Nothing }



-- | <p>Contains the response to a successful <a>ListAccountAliases</a> request. </p>
newtype ListAccountAliasesResponse = ListAccountAliasesResponse 
  { "AccountAliases" :: (AccountAliasListType')
  , "IsTruncated" :: Maybe (BooleanType')
  , "Marker" :: Maybe (MarkerType')
  }
derive instance newtypeListAccountAliasesResponse :: Newtype ListAccountAliasesResponse _
derive instance repGenericListAccountAliasesResponse :: Generic ListAccountAliasesResponse _
instance showListAccountAliasesResponse :: Show ListAccountAliasesResponse where show = genericShow
instance decodeListAccountAliasesResponse :: Decode ListAccountAliasesResponse where decode = genericDecode options
instance encodeListAccountAliasesResponse :: Encode ListAccountAliasesResponse where encode = genericEncode options

-- | Constructs ListAccountAliasesResponse from required parameters
newListAccountAliasesResponse :: AccountAliasListType' -> ListAccountAliasesResponse
newListAccountAliasesResponse _AccountAliases = ListAccountAliasesResponse { "AccountAliases": _AccountAliases, "IsTruncated": Nothing, "Marker": Nothing }

-- | Constructs ListAccountAliasesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAccountAliasesResponse' :: AccountAliasListType' -> ( { "AccountAliases" :: (AccountAliasListType') , "IsTruncated" :: Maybe (BooleanType') , "Marker" :: Maybe (MarkerType') } -> {"AccountAliases" :: (AccountAliasListType') , "IsTruncated" :: Maybe (BooleanType') , "Marker" :: Maybe (MarkerType') } ) -> ListAccountAliasesResponse
newListAccountAliasesResponse' _AccountAliases customize = (ListAccountAliasesResponse <<< customize) { "AccountAliases": _AccountAliases, "IsTruncated": Nothing, "Marker": Nothing }



newtype ListAttachedGroupPoliciesRequest = ListAttachedGroupPoliciesRequest 
  { "GroupName" :: (GroupNameType')
  , "PathPrefix" :: Maybe (PolicyPathType')
  , "Marker" :: Maybe (MarkerType')
  , "MaxItems" :: Maybe (MaxItemsType')
  }
derive instance newtypeListAttachedGroupPoliciesRequest :: Newtype ListAttachedGroupPoliciesRequest _
derive instance repGenericListAttachedGroupPoliciesRequest :: Generic ListAttachedGroupPoliciesRequest _
instance showListAttachedGroupPoliciesRequest :: Show ListAttachedGroupPoliciesRequest where show = genericShow
instance decodeListAttachedGroupPoliciesRequest :: Decode ListAttachedGroupPoliciesRequest where decode = genericDecode options
instance encodeListAttachedGroupPoliciesRequest :: Encode ListAttachedGroupPoliciesRequest where encode = genericEncode options

-- | Constructs ListAttachedGroupPoliciesRequest from required parameters
newListAttachedGroupPoliciesRequest :: GroupNameType' -> ListAttachedGroupPoliciesRequest
newListAttachedGroupPoliciesRequest _GroupName = ListAttachedGroupPoliciesRequest { "GroupName": _GroupName, "Marker": Nothing, "MaxItems": Nothing, "PathPrefix": Nothing }

-- | Constructs ListAttachedGroupPoliciesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAttachedGroupPoliciesRequest' :: GroupNameType' -> ( { "GroupName" :: (GroupNameType') , "PathPrefix" :: Maybe (PolicyPathType') , "Marker" :: Maybe (MarkerType') , "MaxItems" :: Maybe (MaxItemsType') } -> {"GroupName" :: (GroupNameType') , "PathPrefix" :: Maybe (PolicyPathType') , "Marker" :: Maybe (MarkerType') , "MaxItems" :: Maybe (MaxItemsType') } ) -> ListAttachedGroupPoliciesRequest
newListAttachedGroupPoliciesRequest' _GroupName customize = (ListAttachedGroupPoliciesRequest <<< customize) { "GroupName": _GroupName, "Marker": Nothing, "MaxItems": Nothing, "PathPrefix": Nothing }



-- | <p>Contains the response to a successful <a>ListAttachedGroupPolicies</a> request. </p>
newtype ListAttachedGroupPoliciesResponse = ListAttachedGroupPoliciesResponse 
  { "AttachedPolicies" :: Maybe (AttachedPoliciesListType')
  , "IsTruncated" :: Maybe (BooleanType')
  , "Marker" :: Maybe (MarkerType')
  }
derive instance newtypeListAttachedGroupPoliciesResponse :: Newtype ListAttachedGroupPoliciesResponse _
derive instance repGenericListAttachedGroupPoliciesResponse :: Generic ListAttachedGroupPoliciesResponse _
instance showListAttachedGroupPoliciesResponse :: Show ListAttachedGroupPoliciesResponse where show = genericShow
instance decodeListAttachedGroupPoliciesResponse :: Decode ListAttachedGroupPoliciesResponse where decode = genericDecode options
instance encodeListAttachedGroupPoliciesResponse :: Encode ListAttachedGroupPoliciesResponse where encode = genericEncode options

-- | Constructs ListAttachedGroupPoliciesResponse from required parameters
newListAttachedGroupPoliciesResponse :: ListAttachedGroupPoliciesResponse
newListAttachedGroupPoliciesResponse  = ListAttachedGroupPoliciesResponse { "AttachedPolicies": Nothing, "IsTruncated": Nothing, "Marker": Nothing }

-- | Constructs ListAttachedGroupPoliciesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAttachedGroupPoliciesResponse' :: ( { "AttachedPolicies" :: Maybe (AttachedPoliciesListType') , "IsTruncated" :: Maybe (BooleanType') , "Marker" :: Maybe (MarkerType') } -> {"AttachedPolicies" :: Maybe (AttachedPoliciesListType') , "IsTruncated" :: Maybe (BooleanType') , "Marker" :: Maybe (MarkerType') } ) -> ListAttachedGroupPoliciesResponse
newListAttachedGroupPoliciesResponse'  customize = (ListAttachedGroupPoliciesResponse <<< customize) { "AttachedPolicies": Nothing, "IsTruncated": Nothing, "Marker": Nothing }



newtype ListAttachedRolePoliciesRequest = ListAttachedRolePoliciesRequest 
  { "RoleName" :: (RoleNameType')
  , "PathPrefix" :: Maybe (PolicyPathType')
  , "Marker" :: Maybe (MarkerType')
  , "MaxItems" :: Maybe (MaxItemsType')
  }
derive instance newtypeListAttachedRolePoliciesRequest :: Newtype ListAttachedRolePoliciesRequest _
derive instance repGenericListAttachedRolePoliciesRequest :: Generic ListAttachedRolePoliciesRequest _
instance showListAttachedRolePoliciesRequest :: Show ListAttachedRolePoliciesRequest where show = genericShow
instance decodeListAttachedRolePoliciesRequest :: Decode ListAttachedRolePoliciesRequest where decode = genericDecode options
instance encodeListAttachedRolePoliciesRequest :: Encode ListAttachedRolePoliciesRequest where encode = genericEncode options

-- | Constructs ListAttachedRolePoliciesRequest from required parameters
newListAttachedRolePoliciesRequest :: RoleNameType' -> ListAttachedRolePoliciesRequest
newListAttachedRolePoliciesRequest _RoleName = ListAttachedRolePoliciesRequest { "RoleName": _RoleName, "Marker": Nothing, "MaxItems": Nothing, "PathPrefix": Nothing }

-- | Constructs ListAttachedRolePoliciesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAttachedRolePoliciesRequest' :: RoleNameType' -> ( { "RoleName" :: (RoleNameType') , "PathPrefix" :: Maybe (PolicyPathType') , "Marker" :: Maybe (MarkerType') , "MaxItems" :: Maybe (MaxItemsType') } -> {"RoleName" :: (RoleNameType') , "PathPrefix" :: Maybe (PolicyPathType') , "Marker" :: Maybe (MarkerType') , "MaxItems" :: Maybe (MaxItemsType') } ) -> ListAttachedRolePoliciesRequest
newListAttachedRolePoliciesRequest' _RoleName customize = (ListAttachedRolePoliciesRequest <<< customize) { "RoleName": _RoleName, "Marker": Nothing, "MaxItems": Nothing, "PathPrefix": Nothing }



-- | <p>Contains the response to a successful <a>ListAttachedRolePolicies</a> request. </p>
newtype ListAttachedRolePoliciesResponse = ListAttachedRolePoliciesResponse 
  { "AttachedPolicies" :: Maybe (AttachedPoliciesListType')
  , "IsTruncated" :: Maybe (BooleanType')
  , "Marker" :: Maybe (MarkerType')
  }
derive instance newtypeListAttachedRolePoliciesResponse :: Newtype ListAttachedRolePoliciesResponse _
derive instance repGenericListAttachedRolePoliciesResponse :: Generic ListAttachedRolePoliciesResponse _
instance showListAttachedRolePoliciesResponse :: Show ListAttachedRolePoliciesResponse where show = genericShow
instance decodeListAttachedRolePoliciesResponse :: Decode ListAttachedRolePoliciesResponse where decode = genericDecode options
instance encodeListAttachedRolePoliciesResponse :: Encode ListAttachedRolePoliciesResponse where encode = genericEncode options

-- | Constructs ListAttachedRolePoliciesResponse from required parameters
newListAttachedRolePoliciesResponse :: ListAttachedRolePoliciesResponse
newListAttachedRolePoliciesResponse  = ListAttachedRolePoliciesResponse { "AttachedPolicies": Nothing, "IsTruncated": Nothing, "Marker": Nothing }

-- | Constructs ListAttachedRolePoliciesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAttachedRolePoliciesResponse' :: ( { "AttachedPolicies" :: Maybe (AttachedPoliciesListType') , "IsTruncated" :: Maybe (BooleanType') , "Marker" :: Maybe (MarkerType') } -> {"AttachedPolicies" :: Maybe (AttachedPoliciesListType') , "IsTruncated" :: Maybe (BooleanType') , "Marker" :: Maybe (MarkerType') } ) -> ListAttachedRolePoliciesResponse
newListAttachedRolePoliciesResponse'  customize = (ListAttachedRolePoliciesResponse <<< customize) { "AttachedPolicies": Nothing, "IsTruncated": Nothing, "Marker": Nothing }



newtype ListAttachedUserPoliciesRequest = ListAttachedUserPoliciesRequest 
  { "UserName" :: (UserNameType')
  , "PathPrefix" :: Maybe (PolicyPathType')
  , "Marker" :: Maybe (MarkerType')
  , "MaxItems" :: Maybe (MaxItemsType')
  }
derive instance newtypeListAttachedUserPoliciesRequest :: Newtype ListAttachedUserPoliciesRequest _
derive instance repGenericListAttachedUserPoliciesRequest :: Generic ListAttachedUserPoliciesRequest _
instance showListAttachedUserPoliciesRequest :: Show ListAttachedUserPoliciesRequest where show = genericShow
instance decodeListAttachedUserPoliciesRequest :: Decode ListAttachedUserPoliciesRequest where decode = genericDecode options
instance encodeListAttachedUserPoliciesRequest :: Encode ListAttachedUserPoliciesRequest where encode = genericEncode options

-- | Constructs ListAttachedUserPoliciesRequest from required parameters
newListAttachedUserPoliciesRequest :: UserNameType' -> ListAttachedUserPoliciesRequest
newListAttachedUserPoliciesRequest _UserName = ListAttachedUserPoliciesRequest { "UserName": _UserName, "Marker": Nothing, "MaxItems": Nothing, "PathPrefix": Nothing }

-- | Constructs ListAttachedUserPoliciesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAttachedUserPoliciesRequest' :: UserNameType' -> ( { "UserName" :: (UserNameType') , "PathPrefix" :: Maybe (PolicyPathType') , "Marker" :: Maybe (MarkerType') , "MaxItems" :: Maybe (MaxItemsType') } -> {"UserName" :: (UserNameType') , "PathPrefix" :: Maybe (PolicyPathType') , "Marker" :: Maybe (MarkerType') , "MaxItems" :: Maybe (MaxItemsType') } ) -> ListAttachedUserPoliciesRequest
newListAttachedUserPoliciesRequest' _UserName customize = (ListAttachedUserPoliciesRequest <<< customize) { "UserName": _UserName, "Marker": Nothing, "MaxItems": Nothing, "PathPrefix": Nothing }



-- | <p>Contains the response to a successful <a>ListAttachedUserPolicies</a> request. </p>
newtype ListAttachedUserPoliciesResponse = ListAttachedUserPoliciesResponse 
  { "AttachedPolicies" :: Maybe (AttachedPoliciesListType')
  , "IsTruncated" :: Maybe (BooleanType')
  , "Marker" :: Maybe (MarkerType')
  }
derive instance newtypeListAttachedUserPoliciesResponse :: Newtype ListAttachedUserPoliciesResponse _
derive instance repGenericListAttachedUserPoliciesResponse :: Generic ListAttachedUserPoliciesResponse _
instance showListAttachedUserPoliciesResponse :: Show ListAttachedUserPoliciesResponse where show = genericShow
instance decodeListAttachedUserPoliciesResponse :: Decode ListAttachedUserPoliciesResponse where decode = genericDecode options
instance encodeListAttachedUserPoliciesResponse :: Encode ListAttachedUserPoliciesResponse where encode = genericEncode options

-- | Constructs ListAttachedUserPoliciesResponse from required parameters
newListAttachedUserPoliciesResponse :: ListAttachedUserPoliciesResponse
newListAttachedUserPoliciesResponse  = ListAttachedUserPoliciesResponse { "AttachedPolicies": Nothing, "IsTruncated": Nothing, "Marker": Nothing }

-- | Constructs ListAttachedUserPoliciesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAttachedUserPoliciesResponse' :: ( { "AttachedPolicies" :: Maybe (AttachedPoliciesListType') , "IsTruncated" :: Maybe (BooleanType') , "Marker" :: Maybe (MarkerType') } -> {"AttachedPolicies" :: Maybe (AttachedPoliciesListType') , "IsTruncated" :: Maybe (BooleanType') , "Marker" :: Maybe (MarkerType') } ) -> ListAttachedUserPoliciesResponse
newListAttachedUserPoliciesResponse'  customize = (ListAttachedUserPoliciesResponse <<< customize) { "AttachedPolicies": Nothing, "IsTruncated": Nothing, "Marker": Nothing }



newtype ListEntitiesForPolicyRequest = ListEntitiesForPolicyRequest 
  { "PolicyArn" :: (ArnType')
  , "EntityFilter" :: Maybe (EntityType)
  , "PathPrefix" :: Maybe (PathType')
  , "Marker" :: Maybe (MarkerType')
  , "MaxItems" :: Maybe (MaxItemsType')
  }
derive instance newtypeListEntitiesForPolicyRequest :: Newtype ListEntitiesForPolicyRequest _
derive instance repGenericListEntitiesForPolicyRequest :: Generic ListEntitiesForPolicyRequest _
instance showListEntitiesForPolicyRequest :: Show ListEntitiesForPolicyRequest where show = genericShow
instance decodeListEntitiesForPolicyRequest :: Decode ListEntitiesForPolicyRequest where decode = genericDecode options
instance encodeListEntitiesForPolicyRequest :: Encode ListEntitiesForPolicyRequest where encode = genericEncode options

-- | Constructs ListEntitiesForPolicyRequest from required parameters
newListEntitiesForPolicyRequest :: ArnType' -> ListEntitiesForPolicyRequest
newListEntitiesForPolicyRequest _PolicyArn = ListEntitiesForPolicyRequest { "PolicyArn": _PolicyArn, "EntityFilter": Nothing, "Marker": Nothing, "MaxItems": Nothing, "PathPrefix": Nothing }

-- | Constructs ListEntitiesForPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListEntitiesForPolicyRequest' :: ArnType' -> ( { "PolicyArn" :: (ArnType') , "EntityFilter" :: Maybe (EntityType) , "PathPrefix" :: Maybe (PathType') , "Marker" :: Maybe (MarkerType') , "MaxItems" :: Maybe (MaxItemsType') } -> {"PolicyArn" :: (ArnType') , "EntityFilter" :: Maybe (EntityType) , "PathPrefix" :: Maybe (PathType') , "Marker" :: Maybe (MarkerType') , "MaxItems" :: Maybe (MaxItemsType') } ) -> ListEntitiesForPolicyRequest
newListEntitiesForPolicyRequest' _PolicyArn customize = (ListEntitiesForPolicyRequest <<< customize) { "PolicyArn": _PolicyArn, "EntityFilter": Nothing, "Marker": Nothing, "MaxItems": Nothing, "PathPrefix": Nothing }



-- | <p>Contains the response to a successful <a>ListEntitiesForPolicy</a> request. </p>
newtype ListEntitiesForPolicyResponse = ListEntitiesForPolicyResponse 
  { "PolicyGroups" :: Maybe (PolicyGroupListType)
  , "PolicyUsers" :: Maybe (PolicyUserListType)
  , "PolicyRoles" :: Maybe (PolicyRoleListType)
  , "IsTruncated" :: Maybe (BooleanType')
  , "Marker" :: Maybe (MarkerType')
  }
derive instance newtypeListEntitiesForPolicyResponse :: Newtype ListEntitiesForPolicyResponse _
derive instance repGenericListEntitiesForPolicyResponse :: Generic ListEntitiesForPolicyResponse _
instance showListEntitiesForPolicyResponse :: Show ListEntitiesForPolicyResponse where show = genericShow
instance decodeListEntitiesForPolicyResponse :: Decode ListEntitiesForPolicyResponse where decode = genericDecode options
instance encodeListEntitiesForPolicyResponse :: Encode ListEntitiesForPolicyResponse where encode = genericEncode options

-- | Constructs ListEntitiesForPolicyResponse from required parameters
newListEntitiesForPolicyResponse :: ListEntitiesForPolicyResponse
newListEntitiesForPolicyResponse  = ListEntitiesForPolicyResponse { "IsTruncated": Nothing, "Marker": Nothing, "PolicyGroups": Nothing, "PolicyRoles": Nothing, "PolicyUsers": Nothing }

-- | Constructs ListEntitiesForPolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListEntitiesForPolicyResponse' :: ( { "PolicyGroups" :: Maybe (PolicyGroupListType) , "PolicyUsers" :: Maybe (PolicyUserListType) , "PolicyRoles" :: Maybe (PolicyRoleListType) , "IsTruncated" :: Maybe (BooleanType') , "Marker" :: Maybe (MarkerType') } -> {"PolicyGroups" :: Maybe (PolicyGroupListType) , "PolicyUsers" :: Maybe (PolicyUserListType) , "PolicyRoles" :: Maybe (PolicyRoleListType) , "IsTruncated" :: Maybe (BooleanType') , "Marker" :: Maybe (MarkerType') } ) -> ListEntitiesForPolicyResponse
newListEntitiesForPolicyResponse'  customize = (ListEntitiesForPolicyResponse <<< customize) { "IsTruncated": Nothing, "Marker": Nothing, "PolicyGroups": Nothing, "PolicyRoles": Nothing, "PolicyUsers": Nothing }



newtype ListGroupPoliciesRequest = ListGroupPoliciesRequest 
  { "GroupName" :: (GroupNameType')
  , "Marker" :: Maybe (MarkerType')
  , "MaxItems" :: Maybe (MaxItemsType')
  }
derive instance newtypeListGroupPoliciesRequest :: Newtype ListGroupPoliciesRequest _
derive instance repGenericListGroupPoliciesRequest :: Generic ListGroupPoliciesRequest _
instance showListGroupPoliciesRequest :: Show ListGroupPoliciesRequest where show = genericShow
instance decodeListGroupPoliciesRequest :: Decode ListGroupPoliciesRequest where decode = genericDecode options
instance encodeListGroupPoliciesRequest :: Encode ListGroupPoliciesRequest where encode = genericEncode options

-- | Constructs ListGroupPoliciesRequest from required parameters
newListGroupPoliciesRequest :: GroupNameType' -> ListGroupPoliciesRequest
newListGroupPoliciesRequest _GroupName = ListGroupPoliciesRequest { "GroupName": _GroupName, "Marker": Nothing, "MaxItems": Nothing }

-- | Constructs ListGroupPoliciesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListGroupPoliciesRequest' :: GroupNameType' -> ( { "GroupName" :: (GroupNameType') , "Marker" :: Maybe (MarkerType') , "MaxItems" :: Maybe (MaxItemsType') } -> {"GroupName" :: (GroupNameType') , "Marker" :: Maybe (MarkerType') , "MaxItems" :: Maybe (MaxItemsType') } ) -> ListGroupPoliciesRequest
newListGroupPoliciesRequest' _GroupName customize = (ListGroupPoliciesRequest <<< customize) { "GroupName": _GroupName, "Marker": Nothing, "MaxItems": Nothing }



-- | <p>Contains the response to a successful <a>ListGroupPolicies</a> request. </p>
newtype ListGroupPoliciesResponse = ListGroupPoliciesResponse 
  { "PolicyNames" :: (PolicyNameListType')
  , "IsTruncated" :: Maybe (BooleanType')
  , "Marker" :: Maybe (MarkerType')
  }
derive instance newtypeListGroupPoliciesResponse :: Newtype ListGroupPoliciesResponse _
derive instance repGenericListGroupPoliciesResponse :: Generic ListGroupPoliciesResponse _
instance showListGroupPoliciesResponse :: Show ListGroupPoliciesResponse where show = genericShow
instance decodeListGroupPoliciesResponse :: Decode ListGroupPoliciesResponse where decode = genericDecode options
instance encodeListGroupPoliciesResponse :: Encode ListGroupPoliciesResponse where encode = genericEncode options

-- | Constructs ListGroupPoliciesResponse from required parameters
newListGroupPoliciesResponse :: PolicyNameListType' -> ListGroupPoliciesResponse
newListGroupPoliciesResponse _PolicyNames = ListGroupPoliciesResponse { "PolicyNames": _PolicyNames, "IsTruncated": Nothing, "Marker": Nothing }

-- | Constructs ListGroupPoliciesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListGroupPoliciesResponse' :: PolicyNameListType' -> ( { "PolicyNames" :: (PolicyNameListType') , "IsTruncated" :: Maybe (BooleanType') , "Marker" :: Maybe (MarkerType') } -> {"PolicyNames" :: (PolicyNameListType') , "IsTruncated" :: Maybe (BooleanType') , "Marker" :: Maybe (MarkerType') } ) -> ListGroupPoliciesResponse
newListGroupPoliciesResponse' _PolicyNames customize = (ListGroupPoliciesResponse <<< customize) { "PolicyNames": _PolicyNames, "IsTruncated": Nothing, "Marker": Nothing }



newtype ListGroupsForUserRequest = ListGroupsForUserRequest 
  { "UserName" :: (ExistingUserNameType')
  , "Marker" :: Maybe (MarkerType')
  , "MaxItems" :: Maybe (MaxItemsType')
  }
derive instance newtypeListGroupsForUserRequest :: Newtype ListGroupsForUserRequest _
derive instance repGenericListGroupsForUserRequest :: Generic ListGroupsForUserRequest _
instance showListGroupsForUserRequest :: Show ListGroupsForUserRequest where show = genericShow
instance decodeListGroupsForUserRequest :: Decode ListGroupsForUserRequest where decode = genericDecode options
instance encodeListGroupsForUserRequest :: Encode ListGroupsForUserRequest where encode = genericEncode options

-- | Constructs ListGroupsForUserRequest from required parameters
newListGroupsForUserRequest :: ExistingUserNameType' -> ListGroupsForUserRequest
newListGroupsForUserRequest _UserName = ListGroupsForUserRequest { "UserName": _UserName, "Marker": Nothing, "MaxItems": Nothing }

-- | Constructs ListGroupsForUserRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListGroupsForUserRequest' :: ExistingUserNameType' -> ( { "UserName" :: (ExistingUserNameType') , "Marker" :: Maybe (MarkerType') , "MaxItems" :: Maybe (MaxItemsType') } -> {"UserName" :: (ExistingUserNameType') , "Marker" :: Maybe (MarkerType') , "MaxItems" :: Maybe (MaxItemsType') } ) -> ListGroupsForUserRequest
newListGroupsForUserRequest' _UserName customize = (ListGroupsForUserRequest <<< customize) { "UserName": _UserName, "Marker": Nothing, "MaxItems": Nothing }



-- | <p>Contains the response to a successful <a>ListGroupsForUser</a> request. </p>
newtype ListGroupsForUserResponse = ListGroupsForUserResponse 
  { "Groups" :: (GroupListType')
  , "IsTruncated" :: Maybe (BooleanType')
  , "Marker" :: Maybe (MarkerType')
  }
derive instance newtypeListGroupsForUserResponse :: Newtype ListGroupsForUserResponse _
derive instance repGenericListGroupsForUserResponse :: Generic ListGroupsForUserResponse _
instance showListGroupsForUserResponse :: Show ListGroupsForUserResponse where show = genericShow
instance decodeListGroupsForUserResponse :: Decode ListGroupsForUserResponse where decode = genericDecode options
instance encodeListGroupsForUserResponse :: Encode ListGroupsForUserResponse where encode = genericEncode options

-- | Constructs ListGroupsForUserResponse from required parameters
newListGroupsForUserResponse :: GroupListType' -> ListGroupsForUserResponse
newListGroupsForUserResponse _Groups = ListGroupsForUserResponse { "Groups": _Groups, "IsTruncated": Nothing, "Marker": Nothing }

-- | Constructs ListGroupsForUserResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListGroupsForUserResponse' :: GroupListType' -> ( { "Groups" :: (GroupListType') , "IsTruncated" :: Maybe (BooleanType') , "Marker" :: Maybe (MarkerType') } -> {"Groups" :: (GroupListType') , "IsTruncated" :: Maybe (BooleanType') , "Marker" :: Maybe (MarkerType') } ) -> ListGroupsForUserResponse
newListGroupsForUserResponse' _Groups customize = (ListGroupsForUserResponse <<< customize) { "Groups": _Groups, "IsTruncated": Nothing, "Marker": Nothing }



newtype ListGroupsRequest = ListGroupsRequest 
  { "PathPrefix" :: Maybe (PathPrefixType')
  , "Marker" :: Maybe (MarkerType')
  , "MaxItems" :: Maybe (MaxItemsType')
  }
derive instance newtypeListGroupsRequest :: Newtype ListGroupsRequest _
derive instance repGenericListGroupsRequest :: Generic ListGroupsRequest _
instance showListGroupsRequest :: Show ListGroupsRequest where show = genericShow
instance decodeListGroupsRequest :: Decode ListGroupsRequest where decode = genericDecode options
instance encodeListGroupsRequest :: Encode ListGroupsRequest where encode = genericEncode options

-- | Constructs ListGroupsRequest from required parameters
newListGroupsRequest :: ListGroupsRequest
newListGroupsRequest  = ListGroupsRequest { "Marker": Nothing, "MaxItems": Nothing, "PathPrefix": Nothing }

-- | Constructs ListGroupsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListGroupsRequest' :: ( { "PathPrefix" :: Maybe (PathPrefixType') , "Marker" :: Maybe (MarkerType') , "MaxItems" :: Maybe (MaxItemsType') } -> {"PathPrefix" :: Maybe (PathPrefixType') , "Marker" :: Maybe (MarkerType') , "MaxItems" :: Maybe (MaxItemsType') } ) -> ListGroupsRequest
newListGroupsRequest'  customize = (ListGroupsRequest <<< customize) { "Marker": Nothing, "MaxItems": Nothing, "PathPrefix": Nothing }



-- | <p>Contains the response to a successful <a>ListGroups</a> request. </p>
newtype ListGroupsResponse = ListGroupsResponse 
  { "Groups" :: (GroupListType')
  , "IsTruncated" :: Maybe (BooleanType')
  , "Marker" :: Maybe (MarkerType')
  }
derive instance newtypeListGroupsResponse :: Newtype ListGroupsResponse _
derive instance repGenericListGroupsResponse :: Generic ListGroupsResponse _
instance showListGroupsResponse :: Show ListGroupsResponse where show = genericShow
instance decodeListGroupsResponse :: Decode ListGroupsResponse where decode = genericDecode options
instance encodeListGroupsResponse :: Encode ListGroupsResponse where encode = genericEncode options

-- | Constructs ListGroupsResponse from required parameters
newListGroupsResponse :: GroupListType' -> ListGroupsResponse
newListGroupsResponse _Groups = ListGroupsResponse { "Groups": _Groups, "IsTruncated": Nothing, "Marker": Nothing }

-- | Constructs ListGroupsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListGroupsResponse' :: GroupListType' -> ( { "Groups" :: (GroupListType') , "IsTruncated" :: Maybe (BooleanType') , "Marker" :: Maybe (MarkerType') } -> {"Groups" :: (GroupListType') , "IsTruncated" :: Maybe (BooleanType') , "Marker" :: Maybe (MarkerType') } ) -> ListGroupsResponse
newListGroupsResponse' _Groups customize = (ListGroupsResponse <<< customize) { "Groups": _Groups, "IsTruncated": Nothing, "Marker": Nothing }



newtype ListInstanceProfilesForRoleRequest = ListInstanceProfilesForRoleRequest 
  { "RoleName" :: (RoleNameType')
  , "Marker" :: Maybe (MarkerType')
  , "MaxItems" :: Maybe (MaxItemsType')
  }
derive instance newtypeListInstanceProfilesForRoleRequest :: Newtype ListInstanceProfilesForRoleRequest _
derive instance repGenericListInstanceProfilesForRoleRequest :: Generic ListInstanceProfilesForRoleRequest _
instance showListInstanceProfilesForRoleRequest :: Show ListInstanceProfilesForRoleRequest where show = genericShow
instance decodeListInstanceProfilesForRoleRequest :: Decode ListInstanceProfilesForRoleRequest where decode = genericDecode options
instance encodeListInstanceProfilesForRoleRequest :: Encode ListInstanceProfilesForRoleRequest where encode = genericEncode options

-- | Constructs ListInstanceProfilesForRoleRequest from required parameters
newListInstanceProfilesForRoleRequest :: RoleNameType' -> ListInstanceProfilesForRoleRequest
newListInstanceProfilesForRoleRequest _RoleName = ListInstanceProfilesForRoleRequest { "RoleName": _RoleName, "Marker": Nothing, "MaxItems": Nothing }

-- | Constructs ListInstanceProfilesForRoleRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListInstanceProfilesForRoleRequest' :: RoleNameType' -> ( { "RoleName" :: (RoleNameType') , "Marker" :: Maybe (MarkerType') , "MaxItems" :: Maybe (MaxItemsType') } -> {"RoleName" :: (RoleNameType') , "Marker" :: Maybe (MarkerType') , "MaxItems" :: Maybe (MaxItemsType') } ) -> ListInstanceProfilesForRoleRequest
newListInstanceProfilesForRoleRequest' _RoleName customize = (ListInstanceProfilesForRoleRequest <<< customize) { "RoleName": _RoleName, "Marker": Nothing, "MaxItems": Nothing }



-- | <p>Contains the response to a successful <a>ListInstanceProfilesForRole</a> request. </p>
newtype ListInstanceProfilesForRoleResponse = ListInstanceProfilesForRoleResponse 
  { "InstanceProfiles" :: (InstanceProfileListType')
  , "IsTruncated" :: Maybe (BooleanType')
  , "Marker" :: Maybe (MarkerType')
  }
derive instance newtypeListInstanceProfilesForRoleResponse :: Newtype ListInstanceProfilesForRoleResponse _
derive instance repGenericListInstanceProfilesForRoleResponse :: Generic ListInstanceProfilesForRoleResponse _
instance showListInstanceProfilesForRoleResponse :: Show ListInstanceProfilesForRoleResponse where show = genericShow
instance decodeListInstanceProfilesForRoleResponse :: Decode ListInstanceProfilesForRoleResponse where decode = genericDecode options
instance encodeListInstanceProfilesForRoleResponse :: Encode ListInstanceProfilesForRoleResponse where encode = genericEncode options

-- | Constructs ListInstanceProfilesForRoleResponse from required parameters
newListInstanceProfilesForRoleResponse :: InstanceProfileListType' -> ListInstanceProfilesForRoleResponse
newListInstanceProfilesForRoleResponse _InstanceProfiles = ListInstanceProfilesForRoleResponse { "InstanceProfiles": _InstanceProfiles, "IsTruncated": Nothing, "Marker": Nothing }

-- | Constructs ListInstanceProfilesForRoleResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListInstanceProfilesForRoleResponse' :: InstanceProfileListType' -> ( { "InstanceProfiles" :: (InstanceProfileListType') , "IsTruncated" :: Maybe (BooleanType') , "Marker" :: Maybe (MarkerType') } -> {"InstanceProfiles" :: (InstanceProfileListType') , "IsTruncated" :: Maybe (BooleanType') , "Marker" :: Maybe (MarkerType') } ) -> ListInstanceProfilesForRoleResponse
newListInstanceProfilesForRoleResponse' _InstanceProfiles customize = (ListInstanceProfilesForRoleResponse <<< customize) { "InstanceProfiles": _InstanceProfiles, "IsTruncated": Nothing, "Marker": Nothing }



newtype ListInstanceProfilesRequest = ListInstanceProfilesRequest 
  { "PathPrefix" :: Maybe (PathPrefixType')
  , "Marker" :: Maybe (MarkerType')
  , "MaxItems" :: Maybe (MaxItemsType')
  }
derive instance newtypeListInstanceProfilesRequest :: Newtype ListInstanceProfilesRequest _
derive instance repGenericListInstanceProfilesRequest :: Generic ListInstanceProfilesRequest _
instance showListInstanceProfilesRequest :: Show ListInstanceProfilesRequest where show = genericShow
instance decodeListInstanceProfilesRequest :: Decode ListInstanceProfilesRequest where decode = genericDecode options
instance encodeListInstanceProfilesRequest :: Encode ListInstanceProfilesRequest where encode = genericEncode options

-- | Constructs ListInstanceProfilesRequest from required parameters
newListInstanceProfilesRequest :: ListInstanceProfilesRequest
newListInstanceProfilesRequest  = ListInstanceProfilesRequest { "Marker": Nothing, "MaxItems": Nothing, "PathPrefix": Nothing }

-- | Constructs ListInstanceProfilesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListInstanceProfilesRequest' :: ( { "PathPrefix" :: Maybe (PathPrefixType') , "Marker" :: Maybe (MarkerType') , "MaxItems" :: Maybe (MaxItemsType') } -> {"PathPrefix" :: Maybe (PathPrefixType') , "Marker" :: Maybe (MarkerType') , "MaxItems" :: Maybe (MaxItemsType') } ) -> ListInstanceProfilesRequest
newListInstanceProfilesRequest'  customize = (ListInstanceProfilesRequest <<< customize) { "Marker": Nothing, "MaxItems": Nothing, "PathPrefix": Nothing }



-- | <p>Contains the response to a successful <a>ListInstanceProfiles</a> request. </p>
newtype ListInstanceProfilesResponse = ListInstanceProfilesResponse 
  { "InstanceProfiles" :: (InstanceProfileListType')
  , "IsTruncated" :: Maybe (BooleanType')
  , "Marker" :: Maybe (MarkerType')
  }
derive instance newtypeListInstanceProfilesResponse :: Newtype ListInstanceProfilesResponse _
derive instance repGenericListInstanceProfilesResponse :: Generic ListInstanceProfilesResponse _
instance showListInstanceProfilesResponse :: Show ListInstanceProfilesResponse where show = genericShow
instance decodeListInstanceProfilesResponse :: Decode ListInstanceProfilesResponse where decode = genericDecode options
instance encodeListInstanceProfilesResponse :: Encode ListInstanceProfilesResponse where encode = genericEncode options

-- | Constructs ListInstanceProfilesResponse from required parameters
newListInstanceProfilesResponse :: InstanceProfileListType' -> ListInstanceProfilesResponse
newListInstanceProfilesResponse _InstanceProfiles = ListInstanceProfilesResponse { "InstanceProfiles": _InstanceProfiles, "IsTruncated": Nothing, "Marker": Nothing }

-- | Constructs ListInstanceProfilesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListInstanceProfilesResponse' :: InstanceProfileListType' -> ( { "InstanceProfiles" :: (InstanceProfileListType') , "IsTruncated" :: Maybe (BooleanType') , "Marker" :: Maybe (MarkerType') } -> {"InstanceProfiles" :: (InstanceProfileListType') , "IsTruncated" :: Maybe (BooleanType') , "Marker" :: Maybe (MarkerType') } ) -> ListInstanceProfilesResponse
newListInstanceProfilesResponse' _InstanceProfiles customize = (ListInstanceProfilesResponse <<< customize) { "InstanceProfiles": _InstanceProfiles, "IsTruncated": Nothing, "Marker": Nothing }



newtype ListMFADevicesRequest = ListMFADevicesRequest 
  { "UserName" :: Maybe (ExistingUserNameType')
  , "Marker" :: Maybe (MarkerType')
  , "MaxItems" :: Maybe (MaxItemsType')
  }
derive instance newtypeListMFADevicesRequest :: Newtype ListMFADevicesRequest _
derive instance repGenericListMFADevicesRequest :: Generic ListMFADevicesRequest _
instance showListMFADevicesRequest :: Show ListMFADevicesRequest where show = genericShow
instance decodeListMFADevicesRequest :: Decode ListMFADevicesRequest where decode = genericDecode options
instance encodeListMFADevicesRequest :: Encode ListMFADevicesRequest where encode = genericEncode options

-- | Constructs ListMFADevicesRequest from required parameters
newListMFADevicesRequest :: ListMFADevicesRequest
newListMFADevicesRequest  = ListMFADevicesRequest { "Marker": Nothing, "MaxItems": Nothing, "UserName": Nothing }

-- | Constructs ListMFADevicesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListMFADevicesRequest' :: ( { "UserName" :: Maybe (ExistingUserNameType') , "Marker" :: Maybe (MarkerType') , "MaxItems" :: Maybe (MaxItemsType') } -> {"UserName" :: Maybe (ExistingUserNameType') , "Marker" :: Maybe (MarkerType') , "MaxItems" :: Maybe (MaxItemsType') } ) -> ListMFADevicesRequest
newListMFADevicesRequest'  customize = (ListMFADevicesRequest <<< customize) { "Marker": Nothing, "MaxItems": Nothing, "UserName": Nothing }



-- | <p>Contains the response to a successful <a>ListMFADevices</a> request. </p>
newtype ListMFADevicesResponse = ListMFADevicesResponse 
  { "MFADevices" :: (MfaDeviceListType')
  , "IsTruncated" :: Maybe (BooleanType')
  , "Marker" :: Maybe (MarkerType')
  }
derive instance newtypeListMFADevicesResponse :: Newtype ListMFADevicesResponse _
derive instance repGenericListMFADevicesResponse :: Generic ListMFADevicesResponse _
instance showListMFADevicesResponse :: Show ListMFADevicesResponse where show = genericShow
instance decodeListMFADevicesResponse :: Decode ListMFADevicesResponse where decode = genericDecode options
instance encodeListMFADevicesResponse :: Encode ListMFADevicesResponse where encode = genericEncode options

-- | Constructs ListMFADevicesResponse from required parameters
newListMFADevicesResponse :: MfaDeviceListType' -> ListMFADevicesResponse
newListMFADevicesResponse _MFADevices = ListMFADevicesResponse { "MFADevices": _MFADevices, "IsTruncated": Nothing, "Marker": Nothing }

-- | Constructs ListMFADevicesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListMFADevicesResponse' :: MfaDeviceListType' -> ( { "MFADevices" :: (MfaDeviceListType') , "IsTruncated" :: Maybe (BooleanType') , "Marker" :: Maybe (MarkerType') } -> {"MFADevices" :: (MfaDeviceListType') , "IsTruncated" :: Maybe (BooleanType') , "Marker" :: Maybe (MarkerType') } ) -> ListMFADevicesResponse
newListMFADevicesResponse' _MFADevices customize = (ListMFADevicesResponse <<< customize) { "MFADevices": _MFADevices, "IsTruncated": Nothing, "Marker": Nothing }



newtype ListOpenIDConnectProvidersRequest = ListOpenIDConnectProvidersRequest Types.NoArguments
derive instance newtypeListOpenIDConnectProvidersRequest :: Newtype ListOpenIDConnectProvidersRequest _
derive instance repGenericListOpenIDConnectProvidersRequest :: Generic ListOpenIDConnectProvidersRequest _
instance showListOpenIDConnectProvidersRequest :: Show ListOpenIDConnectProvidersRequest where show = genericShow
instance decodeListOpenIDConnectProvidersRequest :: Decode ListOpenIDConnectProvidersRequest where decode = genericDecode options
instance encodeListOpenIDConnectProvidersRequest :: Encode ListOpenIDConnectProvidersRequest where encode = genericEncode options



-- | <p>Contains the response to a successful <a>ListOpenIDConnectProviders</a> request. </p>
newtype ListOpenIDConnectProvidersResponse = ListOpenIDConnectProvidersResponse 
  { "OpenIDConnectProviderList" :: Maybe (OpenIDConnectProviderListType)
  }
derive instance newtypeListOpenIDConnectProvidersResponse :: Newtype ListOpenIDConnectProvidersResponse _
derive instance repGenericListOpenIDConnectProvidersResponse :: Generic ListOpenIDConnectProvidersResponse _
instance showListOpenIDConnectProvidersResponse :: Show ListOpenIDConnectProvidersResponse where show = genericShow
instance decodeListOpenIDConnectProvidersResponse :: Decode ListOpenIDConnectProvidersResponse where decode = genericDecode options
instance encodeListOpenIDConnectProvidersResponse :: Encode ListOpenIDConnectProvidersResponse where encode = genericEncode options

-- | Constructs ListOpenIDConnectProvidersResponse from required parameters
newListOpenIDConnectProvidersResponse :: ListOpenIDConnectProvidersResponse
newListOpenIDConnectProvidersResponse  = ListOpenIDConnectProvidersResponse { "OpenIDConnectProviderList": Nothing }

-- | Constructs ListOpenIDConnectProvidersResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListOpenIDConnectProvidersResponse' :: ( { "OpenIDConnectProviderList" :: Maybe (OpenIDConnectProviderListType) } -> {"OpenIDConnectProviderList" :: Maybe (OpenIDConnectProviderListType) } ) -> ListOpenIDConnectProvidersResponse
newListOpenIDConnectProvidersResponse'  customize = (ListOpenIDConnectProvidersResponse <<< customize) { "OpenIDConnectProviderList": Nothing }



newtype ListPoliciesRequest = ListPoliciesRequest 
  { "Scope" :: Maybe (PolicyScopeType')
  , "OnlyAttached" :: Maybe (BooleanType')
  , "PathPrefix" :: Maybe (PolicyPathType')
  , "Marker" :: Maybe (MarkerType')
  , "MaxItems" :: Maybe (MaxItemsType')
  }
derive instance newtypeListPoliciesRequest :: Newtype ListPoliciesRequest _
derive instance repGenericListPoliciesRequest :: Generic ListPoliciesRequest _
instance showListPoliciesRequest :: Show ListPoliciesRequest where show = genericShow
instance decodeListPoliciesRequest :: Decode ListPoliciesRequest where decode = genericDecode options
instance encodeListPoliciesRequest :: Encode ListPoliciesRequest where encode = genericEncode options

-- | Constructs ListPoliciesRequest from required parameters
newListPoliciesRequest :: ListPoliciesRequest
newListPoliciesRequest  = ListPoliciesRequest { "Marker": Nothing, "MaxItems": Nothing, "OnlyAttached": Nothing, "PathPrefix": Nothing, "Scope": Nothing }

-- | Constructs ListPoliciesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListPoliciesRequest' :: ( { "Scope" :: Maybe (PolicyScopeType') , "OnlyAttached" :: Maybe (BooleanType') , "PathPrefix" :: Maybe (PolicyPathType') , "Marker" :: Maybe (MarkerType') , "MaxItems" :: Maybe (MaxItemsType') } -> {"Scope" :: Maybe (PolicyScopeType') , "OnlyAttached" :: Maybe (BooleanType') , "PathPrefix" :: Maybe (PolicyPathType') , "Marker" :: Maybe (MarkerType') , "MaxItems" :: Maybe (MaxItemsType') } ) -> ListPoliciesRequest
newListPoliciesRequest'  customize = (ListPoliciesRequest <<< customize) { "Marker": Nothing, "MaxItems": Nothing, "OnlyAttached": Nothing, "PathPrefix": Nothing, "Scope": Nothing }



-- | <p>Contains the response to a successful <a>ListPolicies</a> request. </p>
newtype ListPoliciesResponse = ListPoliciesResponse 
  { "Policies" :: Maybe (PolicyListType')
  , "IsTruncated" :: Maybe (BooleanType')
  , "Marker" :: Maybe (MarkerType')
  }
derive instance newtypeListPoliciesResponse :: Newtype ListPoliciesResponse _
derive instance repGenericListPoliciesResponse :: Generic ListPoliciesResponse _
instance showListPoliciesResponse :: Show ListPoliciesResponse where show = genericShow
instance decodeListPoliciesResponse :: Decode ListPoliciesResponse where decode = genericDecode options
instance encodeListPoliciesResponse :: Encode ListPoliciesResponse where encode = genericEncode options

-- | Constructs ListPoliciesResponse from required parameters
newListPoliciesResponse :: ListPoliciesResponse
newListPoliciesResponse  = ListPoliciesResponse { "IsTruncated": Nothing, "Marker": Nothing, "Policies": Nothing }

-- | Constructs ListPoliciesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListPoliciesResponse' :: ( { "Policies" :: Maybe (PolicyListType') , "IsTruncated" :: Maybe (BooleanType') , "Marker" :: Maybe (MarkerType') } -> {"Policies" :: Maybe (PolicyListType') , "IsTruncated" :: Maybe (BooleanType') , "Marker" :: Maybe (MarkerType') } ) -> ListPoliciesResponse
newListPoliciesResponse'  customize = (ListPoliciesResponse <<< customize) { "IsTruncated": Nothing, "Marker": Nothing, "Policies": Nothing }



newtype ListPolicyVersionsRequest = ListPolicyVersionsRequest 
  { "PolicyArn" :: (ArnType')
  , "Marker" :: Maybe (MarkerType')
  , "MaxItems" :: Maybe (MaxItemsType')
  }
derive instance newtypeListPolicyVersionsRequest :: Newtype ListPolicyVersionsRequest _
derive instance repGenericListPolicyVersionsRequest :: Generic ListPolicyVersionsRequest _
instance showListPolicyVersionsRequest :: Show ListPolicyVersionsRequest where show = genericShow
instance decodeListPolicyVersionsRequest :: Decode ListPolicyVersionsRequest where decode = genericDecode options
instance encodeListPolicyVersionsRequest :: Encode ListPolicyVersionsRequest where encode = genericEncode options

-- | Constructs ListPolicyVersionsRequest from required parameters
newListPolicyVersionsRequest :: ArnType' -> ListPolicyVersionsRequest
newListPolicyVersionsRequest _PolicyArn = ListPolicyVersionsRequest { "PolicyArn": _PolicyArn, "Marker": Nothing, "MaxItems": Nothing }

-- | Constructs ListPolicyVersionsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListPolicyVersionsRequest' :: ArnType' -> ( { "PolicyArn" :: (ArnType') , "Marker" :: Maybe (MarkerType') , "MaxItems" :: Maybe (MaxItemsType') } -> {"PolicyArn" :: (ArnType') , "Marker" :: Maybe (MarkerType') , "MaxItems" :: Maybe (MaxItemsType') } ) -> ListPolicyVersionsRequest
newListPolicyVersionsRequest' _PolicyArn customize = (ListPolicyVersionsRequest <<< customize) { "PolicyArn": _PolicyArn, "Marker": Nothing, "MaxItems": Nothing }



-- | <p>Contains the response to a successful <a>ListPolicyVersions</a> request. </p>
newtype ListPolicyVersionsResponse = ListPolicyVersionsResponse 
  { "Versions" :: Maybe (PolicyDocumentVersionListType')
  , "IsTruncated" :: Maybe (BooleanType')
  , "Marker" :: Maybe (MarkerType')
  }
derive instance newtypeListPolicyVersionsResponse :: Newtype ListPolicyVersionsResponse _
derive instance repGenericListPolicyVersionsResponse :: Generic ListPolicyVersionsResponse _
instance showListPolicyVersionsResponse :: Show ListPolicyVersionsResponse where show = genericShow
instance decodeListPolicyVersionsResponse :: Decode ListPolicyVersionsResponse where decode = genericDecode options
instance encodeListPolicyVersionsResponse :: Encode ListPolicyVersionsResponse where encode = genericEncode options

-- | Constructs ListPolicyVersionsResponse from required parameters
newListPolicyVersionsResponse :: ListPolicyVersionsResponse
newListPolicyVersionsResponse  = ListPolicyVersionsResponse { "IsTruncated": Nothing, "Marker": Nothing, "Versions": Nothing }

-- | Constructs ListPolicyVersionsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListPolicyVersionsResponse' :: ( { "Versions" :: Maybe (PolicyDocumentVersionListType') , "IsTruncated" :: Maybe (BooleanType') , "Marker" :: Maybe (MarkerType') } -> {"Versions" :: Maybe (PolicyDocumentVersionListType') , "IsTruncated" :: Maybe (BooleanType') , "Marker" :: Maybe (MarkerType') } ) -> ListPolicyVersionsResponse
newListPolicyVersionsResponse'  customize = (ListPolicyVersionsResponse <<< customize) { "IsTruncated": Nothing, "Marker": Nothing, "Versions": Nothing }



newtype ListRolePoliciesRequest = ListRolePoliciesRequest 
  { "RoleName" :: (RoleNameType')
  , "Marker" :: Maybe (MarkerType')
  , "MaxItems" :: Maybe (MaxItemsType')
  }
derive instance newtypeListRolePoliciesRequest :: Newtype ListRolePoliciesRequest _
derive instance repGenericListRolePoliciesRequest :: Generic ListRolePoliciesRequest _
instance showListRolePoliciesRequest :: Show ListRolePoliciesRequest where show = genericShow
instance decodeListRolePoliciesRequest :: Decode ListRolePoliciesRequest where decode = genericDecode options
instance encodeListRolePoliciesRequest :: Encode ListRolePoliciesRequest where encode = genericEncode options

-- | Constructs ListRolePoliciesRequest from required parameters
newListRolePoliciesRequest :: RoleNameType' -> ListRolePoliciesRequest
newListRolePoliciesRequest _RoleName = ListRolePoliciesRequest { "RoleName": _RoleName, "Marker": Nothing, "MaxItems": Nothing }

-- | Constructs ListRolePoliciesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListRolePoliciesRequest' :: RoleNameType' -> ( { "RoleName" :: (RoleNameType') , "Marker" :: Maybe (MarkerType') , "MaxItems" :: Maybe (MaxItemsType') } -> {"RoleName" :: (RoleNameType') , "Marker" :: Maybe (MarkerType') , "MaxItems" :: Maybe (MaxItemsType') } ) -> ListRolePoliciesRequest
newListRolePoliciesRequest' _RoleName customize = (ListRolePoliciesRequest <<< customize) { "RoleName": _RoleName, "Marker": Nothing, "MaxItems": Nothing }



-- | <p>Contains the response to a successful <a>ListRolePolicies</a> request. </p>
newtype ListRolePoliciesResponse = ListRolePoliciesResponse 
  { "PolicyNames" :: (PolicyNameListType')
  , "IsTruncated" :: Maybe (BooleanType')
  , "Marker" :: Maybe (MarkerType')
  }
derive instance newtypeListRolePoliciesResponse :: Newtype ListRolePoliciesResponse _
derive instance repGenericListRolePoliciesResponse :: Generic ListRolePoliciesResponse _
instance showListRolePoliciesResponse :: Show ListRolePoliciesResponse where show = genericShow
instance decodeListRolePoliciesResponse :: Decode ListRolePoliciesResponse where decode = genericDecode options
instance encodeListRolePoliciesResponse :: Encode ListRolePoliciesResponse where encode = genericEncode options

-- | Constructs ListRolePoliciesResponse from required parameters
newListRolePoliciesResponse :: PolicyNameListType' -> ListRolePoliciesResponse
newListRolePoliciesResponse _PolicyNames = ListRolePoliciesResponse { "PolicyNames": _PolicyNames, "IsTruncated": Nothing, "Marker": Nothing }

-- | Constructs ListRolePoliciesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListRolePoliciesResponse' :: PolicyNameListType' -> ( { "PolicyNames" :: (PolicyNameListType') , "IsTruncated" :: Maybe (BooleanType') , "Marker" :: Maybe (MarkerType') } -> {"PolicyNames" :: (PolicyNameListType') , "IsTruncated" :: Maybe (BooleanType') , "Marker" :: Maybe (MarkerType') } ) -> ListRolePoliciesResponse
newListRolePoliciesResponse' _PolicyNames customize = (ListRolePoliciesResponse <<< customize) { "PolicyNames": _PolicyNames, "IsTruncated": Nothing, "Marker": Nothing }



newtype ListRolesRequest = ListRolesRequest 
  { "PathPrefix" :: Maybe (PathPrefixType')
  , "Marker" :: Maybe (MarkerType')
  , "MaxItems" :: Maybe (MaxItemsType')
  }
derive instance newtypeListRolesRequest :: Newtype ListRolesRequest _
derive instance repGenericListRolesRequest :: Generic ListRolesRequest _
instance showListRolesRequest :: Show ListRolesRequest where show = genericShow
instance decodeListRolesRequest :: Decode ListRolesRequest where decode = genericDecode options
instance encodeListRolesRequest :: Encode ListRolesRequest where encode = genericEncode options

-- | Constructs ListRolesRequest from required parameters
newListRolesRequest :: ListRolesRequest
newListRolesRequest  = ListRolesRequest { "Marker": Nothing, "MaxItems": Nothing, "PathPrefix": Nothing }

-- | Constructs ListRolesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListRolesRequest' :: ( { "PathPrefix" :: Maybe (PathPrefixType') , "Marker" :: Maybe (MarkerType') , "MaxItems" :: Maybe (MaxItemsType') } -> {"PathPrefix" :: Maybe (PathPrefixType') , "Marker" :: Maybe (MarkerType') , "MaxItems" :: Maybe (MaxItemsType') } ) -> ListRolesRequest
newListRolesRequest'  customize = (ListRolesRequest <<< customize) { "Marker": Nothing, "MaxItems": Nothing, "PathPrefix": Nothing }



-- | <p>Contains the response to a successful <a>ListRoles</a> request. </p>
newtype ListRolesResponse = ListRolesResponse 
  { "Roles" :: (RoleListType')
  , "IsTruncated" :: Maybe (BooleanType')
  , "Marker" :: Maybe (MarkerType')
  }
derive instance newtypeListRolesResponse :: Newtype ListRolesResponse _
derive instance repGenericListRolesResponse :: Generic ListRolesResponse _
instance showListRolesResponse :: Show ListRolesResponse where show = genericShow
instance decodeListRolesResponse :: Decode ListRolesResponse where decode = genericDecode options
instance encodeListRolesResponse :: Encode ListRolesResponse where encode = genericEncode options

-- | Constructs ListRolesResponse from required parameters
newListRolesResponse :: RoleListType' -> ListRolesResponse
newListRolesResponse _Roles = ListRolesResponse { "Roles": _Roles, "IsTruncated": Nothing, "Marker": Nothing }

-- | Constructs ListRolesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListRolesResponse' :: RoleListType' -> ( { "Roles" :: (RoleListType') , "IsTruncated" :: Maybe (BooleanType') , "Marker" :: Maybe (MarkerType') } -> {"Roles" :: (RoleListType') , "IsTruncated" :: Maybe (BooleanType') , "Marker" :: Maybe (MarkerType') } ) -> ListRolesResponse
newListRolesResponse' _Roles customize = (ListRolesResponse <<< customize) { "Roles": _Roles, "IsTruncated": Nothing, "Marker": Nothing }



newtype ListSAMLProvidersRequest = ListSAMLProvidersRequest Types.NoArguments
derive instance newtypeListSAMLProvidersRequest :: Newtype ListSAMLProvidersRequest _
derive instance repGenericListSAMLProvidersRequest :: Generic ListSAMLProvidersRequest _
instance showListSAMLProvidersRequest :: Show ListSAMLProvidersRequest where show = genericShow
instance decodeListSAMLProvidersRequest :: Decode ListSAMLProvidersRequest where decode = genericDecode options
instance encodeListSAMLProvidersRequest :: Encode ListSAMLProvidersRequest where encode = genericEncode options



-- | <p>Contains the response to a successful <a>ListSAMLProviders</a> request. </p>
newtype ListSAMLProvidersResponse = ListSAMLProvidersResponse 
  { "SAMLProviderList" :: Maybe (SAMLProviderListType)
  }
derive instance newtypeListSAMLProvidersResponse :: Newtype ListSAMLProvidersResponse _
derive instance repGenericListSAMLProvidersResponse :: Generic ListSAMLProvidersResponse _
instance showListSAMLProvidersResponse :: Show ListSAMLProvidersResponse where show = genericShow
instance decodeListSAMLProvidersResponse :: Decode ListSAMLProvidersResponse where decode = genericDecode options
instance encodeListSAMLProvidersResponse :: Encode ListSAMLProvidersResponse where encode = genericEncode options

-- | Constructs ListSAMLProvidersResponse from required parameters
newListSAMLProvidersResponse :: ListSAMLProvidersResponse
newListSAMLProvidersResponse  = ListSAMLProvidersResponse { "SAMLProviderList": Nothing }

-- | Constructs ListSAMLProvidersResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListSAMLProvidersResponse' :: ( { "SAMLProviderList" :: Maybe (SAMLProviderListType) } -> {"SAMLProviderList" :: Maybe (SAMLProviderListType) } ) -> ListSAMLProvidersResponse
newListSAMLProvidersResponse'  customize = (ListSAMLProvidersResponse <<< customize) { "SAMLProviderList": Nothing }



newtype ListSSHPublicKeysRequest = ListSSHPublicKeysRequest 
  { "UserName" :: Maybe (UserNameType')
  , "Marker" :: Maybe (MarkerType')
  , "MaxItems" :: Maybe (MaxItemsType')
  }
derive instance newtypeListSSHPublicKeysRequest :: Newtype ListSSHPublicKeysRequest _
derive instance repGenericListSSHPublicKeysRequest :: Generic ListSSHPublicKeysRequest _
instance showListSSHPublicKeysRequest :: Show ListSSHPublicKeysRequest where show = genericShow
instance decodeListSSHPublicKeysRequest :: Decode ListSSHPublicKeysRequest where decode = genericDecode options
instance encodeListSSHPublicKeysRequest :: Encode ListSSHPublicKeysRequest where encode = genericEncode options

-- | Constructs ListSSHPublicKeysRequest from required parameters
newListSSHPublicKeysRequest :: ListSSHPublicKeysRequest
newListSSHPublicKeysRequest  = ListSSHPublicKeysRequest { "Marker": Nothing, "MaxItems": Nothing, "UserName": Nothing }

-- | Constructs ListSSHPublicKeysRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListSSHPublicKeysRequest' :: ( { "UserName" :: Maybe (UserNameType') , "Marker" :: Maybe (MarkerType') , "MaxItems" :: Maybe (MaxItemsType') } -> {"UserName" :: Maybe (UserNameType') , "Marker" :: Maybe (MarkerType') , "MaxItems" :: Maybe (MaxItemsType') } ) -> ListSSHPublicKeysRequest
newListSSHPublicKeysRequest'  customize = (ListSSHPublicKeysRequest <<< customize) { "Marker": Nothing, "MaxItems": Nothing, "UserName": Nothing }



-- | <p>Contains the response to a successful <a>ListSSHPublicKeys</a> request.</p>
newtype ListSSHPublicKeysResponse = ListSSHPublicKeysResponse 
  { "SSHPublicKeys" :: Maybe (SSHPublicKeyListType)
  , "IsTruncated" :: Maybe (BooleanType')
  , "Marker" :: Maybe (MarkerType')
  }
derive instance newtypeListSSHPublicKeysResponse :: Newtype ListSSHPublicKeysResponse _
derive instance repGenericListSSHPublicKeysResponse :: Generic ListSSHPublicKeysResponse _
instance showListSSHPublicKeysResponse :: Show ListSSHPublicKeysResponse where show = genericShow
instance decodeListSSHPublicKeysResponse :: Decode ListSSHPublicKeysResponse where decode = genericDecode options
instance encodeListSSHPublicKeysResponse :: Encode ListSSHPublicKeysResponse where encode = genericEncode options

-- | Constructs ListSSHPublicKeysResponse from required parameters
newListSSHPublicKeysResponse :: ListSSHPublicKeysResponse
newListSSHPublicKeysResponse  = ListSSHPublicKeysResponse { "IsTruncated": Nothing, "Marker": Nothing, "SSHPublicKeys": Nothing }

-- | Constructs ListSSHPublicKeysResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListSSHPublicKeysResponse' :: ( { "SSHPublicKeys" :: Maybe (SSHPublicKeyListType) , "IsTruncated" :: Maybe (BooleanType') , "Marker" :: Maybe (MarkerType') } -> {"SSHPublicKeys" :: Maybe (SSHPublicKeyListType) , "IsTruncated" :: Maybe (BooleanType') , "Marker" :: Maybe (MarkerType') } ) -> ListSSHPublicKeysResponse
newListSSHPublicKeysResponse'  customize = (ListSSHPublicKeysResponse <<< customize) { "IsTruncated": Nothing, "Marker": Nothing, "SSHPublicKeys": Nothing }



newtype ListServerCertificatesRequest = ListServerCertificatesRequest 
  { "PathPrefix" :: Maybe (PathPrefixType')
  , "Marker" :: Maybe (MarkerType')
  , "MaxItems" :: Maybe (MaxItemsType')
  }
derive instance newtypeListServerCertificatesRequest :: Newtype ListServerCertificatesRequest _
derive instance repGenericListServerCertificatesRequest :: Generic ListServerCertificatesRequest _
instance showListServerCertificatesRequest :: Show ListServerCertificatesRequest where show = genericShow
instance decodeListServerCertificatesRequest :: Decode ListServerCertificatesRequest where decode = genericDecode options
instance encodeListServerCertificatesRequest :: Encode ListServerCertificatesRequest where encode = genericEncode options

-- | Constructs ListServerCertificatesRequest from required parameters
newListServerCertificatesRequest :: ListServerCertificatesRequest
newListServerCertificatesRequest  = ListServerCertificatesRequest { "Marker": Nothing, "MaxItems": Nothing, "PathPrefix": Nothing }

-- | Constructs ListServerCertificatesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListServerCertificatesRequest' :: ( { "PathPrefix" :: Maybe (PathPrefixType') , "Marker" :: Maybe (MarkerType') , "MaxItems" :: Maybe (MaxItemsType') } -> {"PathPrefix" :: Maybe (PathPrefixType') , "Marker" :: Maybe (MarkerType') , "MaxItems" :: Maybe (MaxItemsType') } ) -> ListServerCertificatesRequest
newListServerCertificatesRequest'  customize = (ListServerCertificatesRequest <<< customize) { "Marker": Nothing, "MaxItems": Nothing, "PathPrefix": Nothing }



-- | <p>Contains the response to a successful <a>ListServerCertificates</a> request. </p>
newtype ListServerCertificatesResponse = ListServerCertificatesResponse 
  { "ServerCertificateMetadataList" :: (ServerCertificateMetadataListType')
  , "IsTruncated" :: Maybe (BooleanType')
  , "Marker" :: Maybe (MarkerType')
  }
derive instance newtypeListServerCertificatesResponse :: Newtype ListServerCertificatesResponse _
derive instance repGenericListServerCertificatesResponse :: Generic ListServerCertificatesResponse _
instance showListServerCertificatesResponse :: Show ListServerCertificatesResponse where show = genericShow
instance decodeListServerCertificatesResponse :: Decode ListServerCertificatesResponse where decode = genericDecode options
instance encodeListServerCertificatesResponse :: Encode ListServerCertificatesResponse where encode = genericEncode options

-- | Constructs ListServerCertificatesResponse from required parameters
newListServerCertificatesResponse :: ServerCertificateMetadataListType' -> ListServerCertificatesResponse
newListServerCertificatesResponse _ServerCertificateMetadataList = ListServerCertificatesResponse { "ServerCertificateMetadataList": _ServerCertificateMetadataList, "IsTruncated": Nothing, "Marker": Nothing }

-- | Constructs ListServerCertificatesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListServerCertificatesResponse' :: ServerCertificateMetadataListType' -> ( { "ServerCertificateMetadataList" :: (ServerCertificateMetadataListType') , "IsTruncated" :: Maybe (BooleanType') , "Marker" :: Maybe (MarkerType') } -> {"ServerCertificateMetadataList" :: (ServerCertificateMetadataListType') , "IsTruncated" :: Maybe (BooleanType') , "Marker" :: Maybe (MarkerType') } ) -> ListServerCertificatesResponse
newListServerCertificatesResponse' _ServerCertificateMetadataList customize = (ListServerCertificatesResponse <<< customize) { "ServerCertificateMetadataList": _ServerCertificateMetadataList, "IsTruncated": Nothing, "Marker": Nothing }



newtype ListServiceSpecificCredentialsRequest = ListServiceSpecificCredentialsRequest 
  { "UserName" :: Maybe (UserNameType')
  , "ServiceName" :: Maybe (ServiceName')
  }
derive instance newtypeListServiceSpecificCredentialsRequest :: Newtype ListServiceSpecificCredentialsRequest _
derive instance repGenericListServiceSpecificCredentialsRequest :: Generic ListServiceSpecificCredentialsRequest _
instance showListServiceSpecificCredentialsRequest :: Show ListServiceSpecificCredentialsRequest where show = genericShow
instance decodeListServiceSpecificCredentialsRequest :: Decode ListServiceSpecificCredentialsRequest where decode = genericDecode options
instance encodeListServiceSpecificCredentialsRequest :: Encode ListServiceSpecificCredentialsRequest where encode = genericEncode options

-- | Constructs ListServiceSpecificCredentialsRequest from required parameters
newListServiceSpecificCredentialsRequest :: ListServiceSpecificCredentialsRequest
newListServiceSpecificCredentialsRequest  = ListServiceSpecificCredentialsRequest { "ServiceName": Nothing, "UserName": Nothing }

-- | Constructs ListServiceSpecificCredentialsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListServiceSpecificCredentialsRequest' :: ( { "UserName" :: Maybe (UserNameType') , "ServiceName" :: Maybe (ServiceName') } -> {"UserName" :: Maybe (UserNameType') , "ServiceName" :: Maybe (ServiceName') } ) -> ListServiceSpecificCredentialsRequest
newListServiceSpecificCredentialsRequest'  customize = (ListServiceSpecificCredentialsRequest <<< customize) { "ServiceName": Nothing, "UserName": Nothing }



newtype ListServiceSpecificCredentialsResponse = ListServiceSpecificCredentialsResponse 
  { "ServiceSpecificCredentials" :: Maybe (ServiceSpecificCredentialsListType)
  }
derive instance newtypeListServiceSpecificCredentialsResponse :: Newtype ListServiceSpecificCredentialsResponse _
derive instance repGenericListServiceSpecificCredentialsResponse :: Generic ListServiceSpecificCredentialsResponse _
instance showListServiceSpecificCredentialsResponse :: Show ListServiceSpecificCredentialsResponse where show = genericShow
instance decodeListServiceSpecificCredentialsResponse :: Decode ListServiceSpecificCredentialsResponse where decode = genericDecode options
instance encodeListServiceSpecificCredentialsResponse :: Encode ListServiceSpecificCredentialsResponse where encode = genericEncode options

-- | Constructs ListServiceSpecificCredentialsResponse from required parameters
newListServiceSpecificCredentialsResponse :: ListServiceSpecificCredentialsResponse
newListServiceSpecificCredentialsResponse  = ListServiceSpecificCredentialsResponse { "ServiceSpecificCredentials": Nothing }

-- | Constructs ListServiceSpecificCredentialsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListServiceSpecificCredentialsResponse' :: ( { "ServiceSpecificCredentials" :: Maybe (ServiceSpecificCredentialsListType) } -> {"ServiceSpecificCredentials" :: Maybe (ServiceSpecificCredentialsListType) } ) -> ListServiceSpecificCredentialsResponse
newListServiceSpecificCredentialsResponse'  customize = (ListServiceSpecificCredentialsResponse <<< customize) { "ServiceSpecificCredentials": Nothing }



newtype ListSigningCertificatesRequest = ListSigningCertificatesRequest 
  { "UserName" :: Maybe (ExistingUserNameType')
  , "Marker" :: Maybe (MarkerType')
  , "MaxItems" :: Maybe (MaxItemsType')
  }
derive instance newtypeListSigningCertificatesRequest :: Newtype ListSigningCertificatesRequest _
derive instance repGenericListSigningCertificatesRequest :: Generic ListSigningCertificatesRequest _
instance showListSigningCertificatesRequest :: Show ListSigningCertificatesRequest where show = genericShow
instance decodeListSigningCertificatesRequest :: Decode ListSigningCertificatesRequest where decode = genericDecode options
instance encodeListSigningCertificatesRequest :: Encode ListSigningCertificatesRequest where encode = genericEncode options

-- | Constructs ListSigningCertificatesRequest from required parameters
newListSigningCertificatesRequest :: ListSigningCertificatesRequest
newListSigningCertificatesRequest  = ListSigningCertificatesRequest { "Marker": Nothing, "MaxItems": Nothing, "UserName": Nothing }

-- | Constructs ListSigningCertificatesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListSigningCertificatesRequest' :: ( { "UserName" :: Maybe (ExistingUserNameType') , "Marker" :: Maybe (MarkerType') , "MaxItems" :: Maybe (MaxItemsType') } -> {"UserName" :: Maybe (ExistingUserNameType') , "Marker" :: Maybe (MarkerType') , "MaxItems" :: Maybe (MaxItemsType') } ) -> ListSigningCertificatesRequest
newListSigningCertificatesRequest'  customize = (ListSigningCertificatesRequest <<< customize) { "Marker": Nothing, "MaxItems": Nothing, "UserName": Nothing }



-- | <p>Contains the response to a successful <a>ListSigningCertificates</a> request. </p>
newtype ListSigningCertificatesResponse = ListSigningCertificatesResponse 
  { "Certificates" :: (CertificateListType')
  , "IsTruncated" :: Maybe (BooleanType')
  , "Marker" :: Maybe (MarkerType')
  }
derive instance newtypeListSigningCertificatesResponse :: Newtype ListSigningCertificatesResponse _
derive instance repGenericListSigningCertificatesResponse :: Generic ListSigningCertificatesResponse _
instance showListSigningCertificatesResponse :: Show ListSigningCertificatesResponse where show = genericShow
instance decodeListSigningCertificatesResponse :: Decode ListSigningCertificatesResponse where decode = genericDecode options
instance encodeListSigningCertificatesResponse :: Encode ListSigningCertificatesResponse where encode = genericEncode options

-- | Constructs ListSigningCertificatesResponse from required parameters
newListSigningCertificatesResponse :: CertificateListType' -> ListSigningCertificatesResponse
newListSigningCertificatesResponse _Certificates = ListSigningCertificatesResponse { "Certificates": _Certificates, "IsTruncated": Nothing, "Marker": Nothing }

-- | Constructs ListSigningCertificatesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListSigningCertificatesResponse' :: CertificateListType' -> ( { "Certificates" :: (CertificateListType') , "IsTruncated" :: Maybe (BooleanType') , "Marker" :: Maybe (MarkerType') } -> {"Certificates" :: (CertificateListType') , "IsTruncated" :: Maybe (BooleanType') , "Marker" :: Maybe (MarkerType') } ) -> ListSigningCertificatesResponse
newListSigningCertificatesResponse' _Certificates customize = (ListSigningCertificatesResponse <<< customize) { "Certificates": _Certificates, "IsTruncated": Nothing, "Marker": Nothing }



newtype ListUserPoliciesRequest = ListUserPoliciesRequest 
  { "UserName" :: (ExistingUserNameType')
  , "Marker" :: Maybe (MarkerType')
  , "MaxItems" :: Maybe (MaxItemsType')
  }
derive instance newtypeListUserPoliciesRequest :: Newtype ListUserPoliciesRequest _
derive instance repGenericListUserPoliciesRequest :: Generic ListUserPoliciesRequest _
instance showListUserPoliciesRequest :: Show ListUserPoliciesRequest where show = genericShow
instance decodeListUserPoliciesRequest :: Decode ListUserPoliciesRequest where decode = genericDecode options
instance encodeListUserPoliciesRequest :: Encode ListUserPoliciesRequest where encode = genericEncode options

-- | Constructs ListUserPoliciesRequest from required parameters
newListUserPoliciesRequest :: ExistingUserNameType' -> ListUserPoliciesRequest
newListUserPoliciesRequest _UserName = ListUserPoliciesRequest { "UserName": _UserName, "Marker": Nothing, "MaxItems": Nothing }

-- | Constructs ListUserPoliciesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListUserPoliciesRequest' :: ExistingUserNameType' -> ( { "UserName" :: (ExistingUserNameType') , "Marker" :: Maybe (MarkerType') , "MaxItems" :: Maybe (MaxItemsType') } -> {"UserName" :: (ExistingUserNameType') , "Marker" :: Maybe (MarkerType') , "MaxItems" :: Maybe (MaxItemsType') } ) -> ListUserPoliciesRequest
newListUserPoliciesRequest' _UserName customize = (ListUserPoliciesRequest <<< customize) { "UserName": _UserName, "Marker": Nothing, "MaxItems": Nothing }



-- | <p>Contains the response to a successful <a>ListUserPolicies</a> request. </p>
newtype ListUserPoliciesResponse = ListUserPoliciesResponse 
  { "PolicyNames" :: (PolicyNameListType')
  , "IsTruncated" :: Maybe (BooleanType')
  , "Marker" :: Maybe (MarkerType')
  }
derive instance newtypeListUserPoliciesResponse :: Newtype ListUserPoliciesResponse _
derive instance repGenericListUserPoliciesResponse :: Generic ListUserPoliciesResponse _
instance showListUserPoliciesResponse :: Show ListUserPoliciesResponse where show = genericShow
instance decodeListUserPoliciesResponse :: Decode ListUserPoliciesResponse where decode = genericDecode options
instance encodeListUserPoliciesResponse :: Encode ListUserPoliciesResponse where encode = genericEncode options

-- | Constructs ListUserPoliciesResponse from required parameters
newListUserPoliciesResponse :: PolicyNameListType' -> ListUserPoliciesResponse
newListUserPoliciesResponse _PolicyNames = ListUserPoliciesResponse { "PolicyNames": _PolicyNames, "IsTruncated": Nothing, "Marker": Nothing }

-- | Constructs ListUserPoliciesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListUserPoliciesResponse' :: PolicyNameListType' -> ( { "PolicyNames" :: (PolicyNameListType') , "IsTruncated" :: Maybe (BooleanType') , "Marker" :: Maybe (MarkerType') } -> {"PolicyNames" :: (PolicyNameListType') , "IsTruncated" :: Maybe (BooleanType') , "Marker" :: Maybe (MarkerType') } ) -> ListUserPoliciesResponse
newListUserPoliciesResponse' _PolicyNames customize = (ListUserPoliciesResponse <<< customize) { "PolicyNames": _PolicyNames, "IsTruncated": Nothing, "Marker": Nothing }



newtype ListUsersRequest = ListUsersRequest 
  { "PathPrefix" :: Maybe (PathPrefixType')
  , "Marker" :: Maybe (MarkerType')
  , "MaxItems" :: Maybe (MaxItemsType')
  }
derive instance newtypeListUsersRequest :: Newtype ListUsersRequest _
derive instance repGenericListUsersRequest :: Generic ListUsersRequest _
instance showListUsersRequest :: Show ListUsersRequest where show = genericShow
instance decodeListUsersRequest :: Decode ListUsersRequest where decode = genericDecode options
instance encodeListUsersRequest :: Encode ListUsersRequest where encode = genericEncode options

-- | Constructs ListUsersRequest from required parameters
newListUsersRequest :: ListUsersRequest
newListUsersRequest  = ListUsersRequest { "Marker": Nothing, "MaxItems": Nothing, "PathPrefix": Nothing }

-- | Constructs ListUsersRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListUsersRequest' :: ( { "PathPrefix" :: Maybe (PathPrefixType') , "Marker" :: Maybe (MarkerType') , "MaxItems" :: Maybe (MaxItemsType') } -> {"PathPrefix" :: Maybe (PathPrefixType') , "Marker" :: Maybe (MarkerType') , "MaxItems" :: Maybe (MaxItemsType') } ) -> ListUsersRequest
newListUsersRequest'  customize = (ListUsersRequest <<< customize) { "Marker": Nothing, "MaxItems": Nothing, "PathPrefix": Nothing }



-- | <p>Contains the response to a successful <a>ListUsers</a> request. </p>
newtype ListUsersResponse = ListUsersResponse 
  { "Users" :: (UserListType')
  , "IsTruncated" :: Maybe (BooleanType')
  , "Marker" :: Maybe (MarkerType')
  }
derive instance newtypeListUsersResponse :: Newtype ListUsersResponse _
derive instance repGenericListUsersResponse :: Generic ListUsersResponse _
instance showListUsersResponse :: Show ListUsersResponse where show = genericShow
instance decodeListUsersResponse :: Decode ListUsersResponse where decode = genericDecode options
instance encodeListUsersResponse :: Encode ListUsersResponse where encode = genericEncode options

-- | Constructs ListUsersResponse from required parameters
newListUsersResponse :: UserListType' -> ListUsersResponse
newListUsersResponse _Users = ListUsersResponse { "Users": _Users, "IsTruncated": Nothing, "Marker": Nothing }

-- | Constructs ListUsersResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListUsersResponse' :: UserListType' -> ( { "Users" :: (UserListType') , "IsTruncated" :: Maybe (BooleanType') , "Marker" :: Maybe (MarkerType') } -> {"Users" :: (UserListType') , "IsTruncated" :: Maybe (BooleanType') , "Marker" :: Maybe (MarkerType') } ) -> ListUsersResponse
newListUsersResponse' _Users customize = (ListUsersResponse <<< customize) { "Users": _Users, "IsTruncated": Nothing, "Marker": Nothing }



newtype ListVirtualMFADevicesRequest = ListVirtualMFADevicesRequest 
  { "AssignmentStatus" :: Maybe (AssignmentStatusType')
  , "Marker" :: Maybe (MarkerType')
  , "MaxItems" :: Maybe (MaxItemsType')
  }
derive instance newtypeListVirtualMFADevicesRequest :: Newtype ListVirtualMFADevicesRequest _
derive instance repGenericListVirtualMFADevicesRequest :: Generic ListVirtualMFADevicesRequest _
instance showListVirtualMFADevicesRequest :: Show ListVirtualMFADevicesRequest where show = genericShow
instance decodeListVirtualMFADevicesRequest :: Decode ListVirtualMFADevicesRequest where decode = genericDecode options
instance encodeListVirtualMFADevicesRequest :: Encode ListVirtualMFADevicesRequest where encode = genericEncode options

-- | Constructs ListVirtualMFADevicesRequest from required parameters
newListVirtualMFADevicesRequest :: ListVirtualMFADevicesRequest
newListVirtualMFADevicesRequest  = ListVirtualMFADevicesRequest { "AssignmentStatus": Nothing, "Marker": Nothing, "MaxItems": Nothing }

-- | Constructs ListVirtualMFADevicesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListVirtualMFADevicesRequest' :: ( { "AssignmentStatus" :: Maybe (AssignmentStatusType') , "Marker" :: Maybe (MarkerType') , "MaxItems" :: Maybe (MaxItemsType') } -> {"AssignmentStatus" :: Maybe (AssignmentStatusType') , "Marker" :: Maybe (MarkerType') , "MaxItems" :: Maybe (MaxItemsType') } ) -> ListVirtualMFADevicesRequest
newListVirtualMFADevicesRequest'  customize = (ListVirtualMFADevicesRequest <<< customize) { "AssignmentStatus": Nothing, "Marker": Nothing, "MaxItems": Nothing }



-- | <p>Contains the response to a successful <a>ListVirtualMFADevices</a> request. </p>
newtype ListVirtualMFADevicesResponse = ListVirtualMFADevicesResponse 
  { "VirtualMFADevices" :: (VirtualMFADeviceListType')
  , "IsTruncated" :: Maybe (BooleanType')
  , "Marker" :: Maybe (MarkerType')
  }
derive instance newtypeListVirtualMFADevicesResponse :: Newtype ListVirtualMFADevicesResponse _
derive instance repGenericListVirtualMFADevicesResponse :: Generic ListVirtualMFADevicesResponse _
instance showListVirtualMFADevicesResponse :: Show ListVirtualMFADevicesResponse where show = genericShow
instance decodeListVirtualMFADevicesResponse :: Decode ListVirtualMFADevicesResponse where decode = genericDecode options
instance encodeListVirtualMFADevicesResponse :: Encode ListVirtualMFADevicesResponse where encode = genericEncode options

-- | Constructs ListVirtualMFADevicesResponse from required parameters
newListVirtualMFADevicesResponse :: VirtualMFADeviceListType' -> ListVirtualMFADevicesResponse
newListVirtualMFADevicesResponse _VirtualMFADevices = ListVirtualMFADevicesResponse { "VirtualMFADevices": _VirtualMFADevices, "IsTruncated": Nothing, "Marker": Nothing }

-- | Constructs ListVirtualMFADevicesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListVirtualMFADevicesResponse' :: VirtualMFADeviceListType' -> ( { "VirtualMFADevices" :: (VirtualMFADeviceListType') , "IsTruncated" :: Maybe (BooleanType') , "Marker" :: Maybe (MarkerType') } -> {"VirtualMFADevices" :: (VirtualMFADeviceListType') , "IsTruncated" :: Maybe (BooleanType') , "Marker" :: Maybe (MarkerType') } ) -> ListVirtualMFADevicesResponse
newListVirtualMFADevicesResponse' _VirtualMFADevices customize = (ListVirtualMFADevicesResponse <<< customize) { "VirtualMFADevices": _VirtualMFADevices, "IsTruncated": Nothing, "Marker": Nothing }



-- | <p>Contains the user name and password create date for a user.</p> <p> This data type is used as a response element in the <a>CreateLoginProfile</a> and <a>GetLoginProfile</a> actions. </p>
newtype LoginProfile = LoginProfile 
  { "UserName" :: (UserNameType')
  , "CreateDate" :: (DateType')
  , "PasswordResetRequired" :: Maybe (BooleanType')
  }
derive instance newtypeLoginProfile :: Newtype LoginProfile _
derive instance repGenericLoginProfile :: Generic LoginProfile _
instance showLoginProfile :: Show LoginProfile where show = genericShow
instance decodeLoginProfile :: Decode LoginProfile where decode = genericDecode options
instance encodeLoginProfile :: Encode LoginProfile where encode = genericEncode options

-- | Constructs LoginProfile from required parameters
newLoginProfile :: DateType' -> UserNameType' -> LoginProfile
newLoginProfile _CreateDate _UserName = LoginProfile { "CreateDate": _CreateDate, "UserName": _UserName, "PasswordResetRequired": Nothing }

-- | Constructs LoginProfile's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLoginProfile' :: DateType' -> UserNameType' -> ( { "UserName" :: (UserNameType') , "CreateDate" :: (DateType') , "PasswordResetRequired" :: Maybe (BooleanType') } -> {"UserName" :: (UserNameType') , "CreateDate" :: (DateType') , "PasswordResetRequired" :: Maybe (BooleanType') } ) -> LoginProfile
newLoginProfile' _CreateDate _UserName customize = (LoginProfile <<< customize) { "CreateDate": _CreateDate, "UserName": _UserName, "PasswordResetRequired": Nothing }



-- | <p>Contains information about an MFA device.</p> <p>This data type is used as a response element in the <a>ListMFADevices</a> action.</p>
newtype MFADevice = MFADevice 
  { "UserName" :: (UserNameType')
  , "SerialNumber" :: (SerialNumberType')
  , "EnableDate" :: (DateType')
  }
derive instance newtypeMFADevice :: Newtype MFADevice _
derive instance repGenericMFADevice :: Generic MFADevice _
instance showMFADevice :: Show MFADevice where show = genericShow
instance decodeMFADevice :: Decode MFADevice where decode = genericDecode options
instance encodeMFADevice :: Encode MFADevice where encode = genericEncode options

-- | Constructs MFADevice from required parameters
newMFADevice :: DateType' -> SerialNumberType' -> UserNameType' -> MFADevice
newMFADevice _EnableDate _SerialNumber _UserName = MFADevice { "EnableDate": _EnableDate, "SerialNumber": _SerialNumber, "UserName": _UserName }

-- | Constructs MFADevice's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMFADevice' :: DateType' -> SerialNumberType' -> UserNameType' -> ( { "UserName" :: (UserNameType') , "SerialNumber" :: (SerialNumberType') , "EnableDate" :: (DateType') } -> {"UserName" :: (UserNameType') , "SerialNumber" :: (SerialNumberType') , "EnableDate" :: (DateType') } ) -> MFADevice
newMFADevice' _EnableDate _SerialNumber _UserName customize = (MFADevice <<< customize) { "EnableDate": _EnableDate, "SerialNumber": _SerialNumber, "UserName": _UserName }



-- | <p>The request was rejected because the certificate was malformed or expired. The error message describes the specific error.</p>
newtype MalformedCertificateException = MalformedCertificateException 
  { "message" :: Maybe (MalformedCertificateMessage')
  }
derive instance newtypeMalformedCertificateException :: Newtype MalformedCertificateException _
derive instance repGenericMalformedCertificateException :: Generic MalformedCertificateException _
instance showMalformedCertificateException :: Show MalformedCertificateException where show = genericShow
instance decodeMalformedCertificateException :: Decode MalformedCertificateException where decode = genericDecode options
instance encodeMalformedCertificateException :: Encode MalformedCertificateException where encode = genericEncode options

-- | Constructs MalformedCertificateException from required parameters
newMalformedCertificateException :: MalformedCertificateException
newMalformedCertificateException  = MalformedCertificateException { "message": Nothing }

-- | Constructs MalformedCertificateException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMalformedCertificateException' :: ( { "message" :: Maybe (MalformedCertificateMessage') } -> {"message" :: Maybe (MalformedCertificateMessage') } ) -> MalformedCertificateException
newMalformedCertificateException'  customize = (MalformedCertificateException <<< customize) { "message": Nothing }



-- | <p>The request was rejected because the policy document was malformed. The error message describes the specific error.</p>
newtype MalformedPolicyDocumentException = MalformedPolicyDocumentException 
  { "message" :: Maybe (MalformedPolicyDocumentMessage')
  }
derive instance newtypeMalformedPolicyDocumentException :: Newtype MalformedPolicyDocumentException _
derive instance repGenericMalformedPolicyDocumentException :: Generic MalformedPolicyDocumentException _
instance showMalformedPolicyDocumentException :: Show MalformedPolicyDocumentException where show = genericShow
instance decodeMalformedPolicyDocumentException :: Decode MalformedPolicyDocumentException where decode = genericDecode options
instance encodeMalformedPolicyDocumentException :: Encode MalformedPolicyDocumentException where encode = genericEncode options

-- | Constructs MalformedPolicyDocumentException from required parameters
newMalformedPolicyDocumentException :: MalformedPolicyDocumentException
newMalformedPolicyDocumentException  = MalformedPolicyDocumentException { "message": Nothing }

-- | Constructs MalformedPolicyDocumentException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMalformedPolicyDocumentException' :: ( { "message" :: Maybe (MalformedPolicyDocumentMessage') } -> {"message" :: Maybe (MalformedPolicyDocumentMessage') } ) -> MalformedPolicyDocumentException
newMalformedPolicyDocumentException'  customize = (MalformedPolicyDocumentException <<< customize) { "message": Nothing }



-- | <p>Contains information about a managed policy, including the policy's ARN, versions, and the number of principal entities (users, groups, and roles) that the policy is attached to.</p> <p>This data type is used as a response element in the <a>GetAccountAuthorizationDetails</a> action.</p> <p>For more information about managed policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>Using IAM</i> guide. </p>
newtype ManagedPolicyDetail = ManagedPolicyDetail 
  { "PolicyName" :: Maybe (PolicyNameType')
  , "PolicyId" :: Maybe (IdType')
  , "Arn" :: Maybe (ArnType')
  , "Path" :: Maybe (PolicyPathType')
  , "DefaultVersionId" :: Maybe (PolicyVersionIdType')
  , "AttachmentCount" :: Maybe (AttachmentCountType')
  , "IsAttachable" :: Maybe (BooleanType')
  , "Description" :: Maybe (PolicyDescriptionType')
  , "CreateDate" :: Maybe (DateType')
  , "UpdateDate" :: Maybe (DateType')
  , "PolicyVersionList" :: Maybe (PolicyDocumentVersionListType')
  }
derive instance newtypeManagedPolicyDetail :: Newtype ManagedPolicyDetail _
derive instance repGenericManagedPolicyDetail :: Generic ManagedPolicyDetail _
instance showManagedPolicyDetail :: Show ManagedPolicyDetail where show = genericShow
instance decodeManagedPolicyDetail :: Decode ManagedPolicyDetail where decode = genericDecode options
instance encodeManagedPolicyDetail :: Encode ManagedPolicyDetail where encode = genericEncode options

-- | Constructs ManagedPolicyDetail from required parameters
newManagedPolicyDetail :: ManagedPolicyDetail
newManagedPolicyDetail  = ManagedPolicyDetail { "Arn": Nothing, "AttachmentCount": Nothing, "CreateDate": Nothing, "DefaultVersionId": Nothing, "Description": Nothing, "IsAttachable": Nothing, "Path": Nothing, "PolicyId": Nothing, "PolicyName": Nothing, "PolicyVersionList": Nothing, "UpdateDate": Nothing }

-- | Constructs ManagedPolicyDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newManagedPolicyDetail' :: ( { "PolicyName" :: Maybe (PolicyNameType') , "PolicyId" :: Maybe (IdType') , "Arn" :: Maybe (ArnType') , "Path" :: Maybe (PolicyPathType') , "DefaultVersionId" :: Maybe (PolicyVersionIdType') , "AttachmentCount" :: Maybe (AttachmentCountType') , "IsAttachable" :: Maybe (BooleanType') , "Description" :: Maybe (PolicyDescriptionType') , "CreateDate" :: Maybe (DateType') , "UpdateDate" :: Maybe (DateType') , "PolicyVersionList" :: Maybe (PolicyDocumentVersionListType') } -> {"PolicyName" :: Maybe (PolicyNameType') , "PolicyId" :: Maybe (IdType') , "Arn" :: Maybe (ArnType') , "Path" :: Maybe (PolicyPathType') , "DefaultVersionId" :: Maybe (PolicyVersionIdType') , "AttachmentCount" :: Maybe (AttachmentCountType') , "IsAttachable" :: Maybe (BooleanType') , "Description" :: Maybe (PolicyDescriptionType') , "CreateDate" :: Maybe (DateType') , "UpdateDate" :: Maybe (DateType') , "PolicyVersionList" :: Maybe (PolicyDocumentVersionListType') } ) -> ManagedPolicyDetail
newManagedPolicyDetail'  customize = (ManagedPolicyDetail <<< customize) { "Arn": Nothing, "AttachmentCount": Nothing, "CreateDate": Nothing, "DefaultVersionId": Nothing, "Description": Nothing, "IsAttachable": Nothing, "Path": Nothing, "PolicyId": Nothing, "PolicyName": Nothing, "PolicyVersionList": Nothing, "UpdateDate": Nothing }



newtype ManagedPolicyDetailListType = ManagedPolicyDetailListType (Array ManagedPolicyDetail)
derive instance newtypeManagedPolicyDetailListType :: Newtype ManagedPolicyDetailListType _
derive instance repGenericManagedPolicyDetailListType :: Generic ManagedPolicyDetailListType _
instance showManagedPolicyDetailListType :: Show ManagedPolicyDetailListType where show = genericShow
instance decodeManagedPolicyDetailListType :: Decode ManagedPolicyDetailListType where decode = genericDecode options
instance encodeManagedPolicyDetailListType :: Encode ManagedPolicyDetailListType where encode = genericEncode options



-- | <p>The request was rejected because it referenced an entity that does not exist. The error message describes the entity.</p>
newtype NoSuchEntityException = NoSuchEntityException 
  { "message" :: Maybe (NoSuchEntityMessage')
  }
derive instance newtypeNoSuchEntityException :: Newtype NoSuchEntityException _
derive instance repGenericNoSuchEntityException :: Generic NoSuchEntityException _
instance showNoSuchEntityException :: Show NoSuchEntityException where show = genericShow
instance decodeNoSuchEntityException :: Decode NoSuchEntityException where decode = genericDecode options
instance encodeNoSuchEntityException :: Encode NoSuchEntityException where encode = genericEncode options

-- | Constructs NoSuchEntityException from required parameters
newNoSuchEntityException :: NoSuchEntityException
newNoSuchEntityException  = NoSuchEntityException { "message": Nothing }

-- | Constructs NoSuchEntityException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNoSuchEntityException' :: ( { "message" :: Maybe (NoSuchEntityMessage') } -> {"message" :: Maybe (NoSuchEntityMessage') } ) -> NoSuchEntityException
newNoSuchEntityException'  customize = (NoSuchEntityException <<< customize) { "message": Nothing }



-- | <p>Contains the Amazon Resource Name (ARN) for an IAM OpenID Connect provider.</p>
newtype OpenIDConnectProviderListEntry = OpenIDConnectProviderListEntry 
  { "Arn" :: Maybe (ArnType')
  }
derive instance newtypeOpenIDConnectProviderListEntry :: Newtype OpenIDConnectProviderListEntry _
derive instance repGenericOpenIDConnectProviderListEntry :: Generic OpenIDConnectProviderListEntry _
instance showOpenIDConnectProviderListEntry :: Show OpenIDConnectProviderListEntry where show = genericShow
instance decodeOpenIDConnectProviderListEntry :: Decode OpenIDConnectProviderListEntry where decode = genericDecode options
instance encodeOpenIDConnectProviderListEntry :: Encode OpenIDConnectProviderListEntry where encode = genericEncode options

-- | Constructs OpenIDConnectProviderListEntry from required parameters
newOpenIDConnectProviderListEntry :: OpenIDConnectProviderListEntry
newOpenIDConnectProviderListEntry  = OpenIDConnectProviderListEntry { "Arn": Nothing }

-- | Constructs OpenIDConnectProviderListEntry's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOpenIDConnectProviderListEntry' :: ( { "Arn" :: Maybe (ArnType') } -> {"Arn" :: Maybe (ArnType') } ) -> OpenIDConnectProviderListEntry
newOpenIDConnectProviderListEntry'  customize = (OpenIDConnectProviderListEntry <<< customize) { "Arn": Nothing }



-- | <p>Contains a list of IAM OpenID Connect providers.</p>
newtype OpenIDConnectProviderListType = OpenIDConnectProviderListType (Array OpenIDConnectProviderListEntry)
derive instance newtypeOpenIDConnectProviderListType :: Newtype OpenIDConnectProviderListType _
derive instance repGenericOpenIDConnectProviderListType :: Generic OpenIDConnectProviderListType _
instance showOpenIDConnectProviderListType :: Show OpenIDConnectProviderListType where show = genericShow
instance decodeOpenIDConnectProviderListType :: Decode OpenIDConnectProviderListType where decode = genericDecode options
instance encodeOpenIDConnectProviderListType :: Encode OpenIDConnectProviderListType where encode = genericEncode options



-- | <p>Contains a URL that specifies the endpoint for an OpenID Connect provider.</p>
newtype OpenIDConnectProviderUrlType = OpenIDConnectProviderUrlType String
derive instance newtypeOpenIDConnectProviderUrlType :: Newtype OpenIDConnectProviderUrlType _
derive instance repGenericOpenIDConnectProviderUrlType :: Generic OpenIDConnectProviderUrlType _
instance showOpenIDConnectProviderUrlType :: Show OpenIDConnectProviderUrlType where show = genericShow
instance decodeOpenIDConnectProviderUrlType :: Decode OpenIDConnectProviderUrlType where decode = genericDecode options
instance encodeOpenIDConnectProviderUrlType :: Encode OpenIDConnectProviderUrlType where encode = genericEncode options



-- | <p>Contains information about AWS Organizations's affect on a policy simulation.</p>
newtype OrganizationsDecisionDetail = OrganizationsDecisionDetail 
  { "AllowedByOrganizations" :: Maybe (BooleanType')
  }
derive instance newtypeOrganizationsDecisionDetail :: Newtype OrganizationsDecisionDetail _
derive instance repGenericOrganizationsDecisionDetail :: Generic OrganizationsDecisionDetail _
instance showOrganizationsDecisionDetail :: Show OrganizationsDecisionDetail where show = genericShow
instance decodeOrganizationsDecisionDetail :: Decode OrganizationsDecisionDetail where decode = genericDecode options
instance encodeOrganizationsDecisionDetail :: Encode OrganizationsDecisionDetail where encode = genericEncode options

-- | Constructs OrganizationsDecisionDetail from required parameters
newOrganizationsDecisionDetail :: OrganizationsDecisionDetail
newOrganizationsDecisionDetail  = OrganizationsDecisionDetail { "AllowedByOrganizations": Nothing }

-- | Constructs OrganizationsDecisionDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOrganizationsDecisionDetail' :: ( { "AllowedByOrganizations" :: Maybe (BooleanType') } -> {"AllowedByOrganizations" :: Maybe (BooleanType') } ) -> OrganizationsDecisionDetail
newOrganizationsDecisionDetail'  customize = (OrganizationsDecisionDetail <<< customize) { "AllowedByOrganizations": Nothing }



-- | <p>Contains information about the account password policy.</p> <p> This data type is used as a response element in the <a>GetAccountPasswordPolicy</a> action. </p>
newtype PasswordPolicy = PasswordPolicy 
  { "MinimumPasswordLength" :: Maybe (MinimumPasswordLengthType')
  , "RequireSymbols" :: Maybe (BooleanType')
  , "RequireNumbers" :: Maybe (BooleanType')
  , "RequireUppercaseCharacters" :: Maybe (BooleanType')
  , "RequireLowercaseCharacters" :: Maybe (BooleanType')
  , "AllowUsersToChangePassword" :: Maybe (BooleanType')
  , "ExpirePasswords" :: Maybe (BooleanType')
  , "MaxPasswordAge" :: Maybe (MaxPasswordAgeType')
  , "PasswordReusePrevention" :: Maybe (PasswordReusePreventionType')
  , "HardExpiry" :: Maybe (BooleanObjectType')
  }
derive instance newtypePasswordPolicy :: Newtype PasswordPolicy _
derive instance repGenericPasswordPolicy :: Generic PasswordPolicy _
instance showPasswordPolicy :: Show PasswordPolicy where show = genericShow
instance decodePasswordPolicy :: Decode PasswordPolicy where decode = genericDecode options
instance encodePasswordPolicy :: Encode PasswordPolicy where encode = genericEncode options

-- | Constructs PasswordPolicy from required parameters
newPasswordPolicy :: PasswordPolicy
newPasswordPolicy  = PasswordPolicy { "AllowUsersToChangePassword": Nothing, "ExpirePasswords": Nothing, "HardExpiry": Nothing, "MaxPasswordAge": Nothing, "MinimumPasswordLength": Nothing, "PasswordReusePrevention": Nothing, "RequireLowercaseCharacters": Nothing, "RequireNumbers": Nothing, "RequireSymbols": Nothing, "RequireUppercaseCharacters": Nothing }

-- | Constructs PasswordPolicy's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPasswordPolicy' :: ( { "MinimumPasswordLength" :: Maybe (MinimumPasswordLengthType') , "RequireSymbols" :: Maybe (BooleanType') , "RequireNumbers" :: Maybe (BooleanType') , "RequireUppercaseCharacters" :: Maybe (BooleanType') , "RequireLowercaseCharacters" :: Maybe (BooleanType') , "AllowUsersToChangePassword" :: Maybe (BooleanType') , "ExpirePasswords" :: Maybe (BooleanType') , "MaxPasswordAge" :: Maybe (MaxPasswordAgeType') , "PasswordReusePrevention" :: Maybe (PasswordReusePreventionType') , "HardExpiry" :: Maybe (BooleanObjectType') } -> {"MinimumPasswordLength" :: Maybe (MinimumPasswordLengthType') , "RequireSymbols" :: Maybe (BooleanType') , "RequireNumbers" :: Maybe (BooleanType') , "RequireUppercaseCharacters" :: Maybe (BooleanType') , "RequireLowercaseCharacters" :: Maybe (BooleanType') , "AllowUsersToChangePassword" :: Maybe (BooleanType') , "ExpirePasswords" :: Maybe (BooleanType') , "MaxPasswordAge" :: Maybe (MaxPasswordAgeType') , "PasswordReusePrevention" :: Maybe (PasswordReusePreventionType') , "HardExpiry" :: Maybe (BooleanObjectType') } ) -> PasswordPolicy
newPasswordPolicy'  customize = (PasswordPolicy <<< customize) { "AllowUsersToChangePassword": Nothing, "ExpirePasswords": Nothing, "HardExpiry": Nothing, "MaxPasswordAge": Nothing, "MinimumPasswordLength": Nothing, "PasswordReusePrevention": Nothing, "RequireLowercaseCharacters": Nothing, "RequireNumbers": Nothing, "RequireSymbols": Nothing, "RequireUppercaseCharacters": Nothing }



-- | <p>The request was rejected because the provided password did not meet the requirements imposed by the account password policy.</p>
newtype PasswordPolicyViolationException = PasswordPolicyViolationException 
  { "message" :: Maybe (PasswordPolicyViolationMessage')
  }
derive instance newtypePasswordPolicyViolationException :: Newtype PasswordPolicyViolationException _
derive instance repGenericPasswordPolicyViolationException :: Generic PasswordPolicyViolationException _
instance showPasswordPolicyViolationException :: Show PasswordPolicyViolationException where show = genericShow
instance decodePasswordPolicyViolationException :: Decode PasswordPolicyViolationException where decode = genericDecode options
instance encodePasswordPolicyViolationException :: Encode PasswordPolicyViolationException where encode = genericEncode options

-- | Constructs PasswordPolicyViolationException from required parameters
newPasswordPolicyViolationException :: PasswordPolicyViolationException
newPasswordPolicyViolationException  = PasswordPolicyViolationException { "message": Nothing }

-- | Constructs PasswordPolicyViolationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPasswordPolicyViolationException' :: ( { "message" :: Maybe (PasswordPolicyViolationMessage') } -> {"message" :: Maybe (PasswordPolicyViolationMessage') } ) -> PasswordPolicyViolationException
newPasswordPolicyViolationException'  customize = (PasswordPolicyViolationException <<< customize) { "message": Nothing }



-- | <p>Contains information about a managed policy.</p> <p>This data type is used as a response element in the <a>CreatePolicy</a>, <a>GetPolicy</a>, and <a>ListPolicies</a> actions. </p> <p>For more information about managed policies, refer to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>Using IAM</i> guide. </p>
newtype Policy = Policy 
  { "PolicyName" :: Maybe (PolicyNameType')
  , "PolicyId" :: Maybe (IdType')
  , "Arn" :: Maybe (ArnType')
  , "Path" :: Maybe (PolicyPathType')
  , "DefaultVersionId" :: Maybe (PolicyVersionIdType')
  , "AttachmentCount" :: Maybe (AttachmentCountType')
  , "IsAttachable" :: Maybe (BooleanType')
  , "Description" :: Maybe (PolicyDescriptionType')
  , "CreateDate" :: Maybe (DateType')
  , "UpdateDate" :: Maybe (DateType')
  }
derive instance newtypePolicy :: Newtype Policy _
derive instance repGenericPolicy :: Generic Policy _
instance showPolicy :: Show Policy where show = genericShow
instance decodePolicy :: Decode Policy where decode = genericDecode options
instance encodePolicy :: Encode Policy where encode = genericEncode options

-- | Constructs Policy from required parameters
newPolicy :: Policy
newPolicy  = Policy { "Arn": Nothing, "AttachmentCount": Nothing, "CreateDate": Nothing, "DefaultVersionId": Nothing, "Description": Nothing, "IsAttachable": Nothing, "Path": Nothing, "PolicyId": Nothing, "PolicyName": Nothing, "UpdateDate": Nothing }

-- | Constructs Policy's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPolicy' :: ( { "PolicyName" :: Maybe (PolicyNameType') , "PolicyId" :: Maybe (IdType') , "Arn" :: Maybe (ArnType') , "Path" :: Maybe (PolicyPathType') , "DefaultVersionId" :: Maybe (PolicyVersionIdType') , "AttachmentCount" :: Maybe (AttachmentCountType') , "IsAttachable" :: Maybe (BooleanType') , "Description" :: Maybe (PolicyDescriptionType') , "CreateDate" :: Maybe (DateType') , "UpdateDate" :: Maybe (DateType') } -> {"PolicyName" :: Maybe (PolicyNameType') , "PolicyId" :: Maybe (IdType') , "Arn" :: Maybe (ArnType') , "Path" :: Maybe (PolicyPathType') , "DefaultVersionId" :: Maybe (PolicyVersionIdType') , "AttachmentCount" :: Maybe (AttachmentCountType') , "IsAttachable" :: Maybe (BooleanType') , "Description" :: Maybe (PolicyDescriptionType') , "CreateDate" :: Maybe (DateType') , "UpdateDate" :: Maybe (DateType') } ) -> Policy
newPolicy'  customize = (Policy <<< customize) { "Arn": Nothing, "AttachmentCount": Nothing, "CreateDate": Nothing, "DefaultVersionId": Nothing, "Description": Nothing, "IsAttachable": Nothing, "Path": Nothing, "PolicyId": Nothing, "PolicyName": Nothing, "UpdateDate": Nothing }



-- | <p>Contains information about an IAM policy, including the policy document.</p> <p>This data type is used as a response element in the <a>GetAccountAuthorizationDetails</a> action.</p>
newtype PolicyDetail = PolicyDetail 
  { "PolicyName" :: Maybe (PolicyNameType')
  , "PolicyDocument" :: Maybe (PolicyDocumentType')
  }
derive instance newtypePolicyDetail :: Newtype PolicyDetail _
derive instance repGenericPolicyDetail :: Generic PolicyDetail _
instance showPolicyDetail :: Show PolicyDetail where show = genericShow
instance decodePolicyDetail :: Decode PolicyDetail where decode = genericDecode options
instance encodePolicyDetail :: Encode PolicyDetail where encode = genericEncode options

-- | Constructs PolicyDetail from required parameters
newPolicyDetail :: PolicyDetail
newPolicyDetail  = PolicyDetail { "PolicyDocument": Nothing, "PolicyName": Nothing }

-- | Constructs PolicyDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPolicyDetail' :: ( { "PolicyName" :: Maybe (PolicyNameType') , "PolicyDocument" :: Maybe (PolicyDocumentType') } -> {"PolicyName" :: Maybe (PolicyNameType') , "PolicyDocument" :: Maybe (PolicyDocumentType') } ) -> PolicyDetail
newPolicyDetail'  customize = (PolicyDetail <<< customize) { "PolicyDocument": Nothing, "PolicyName": Nothing }



newtype PolicyEvaluationDecisionType = PolicyEvaluationDecisionType String
derive instance newtypePolicyEvaluationDecisionType :: Newtype PolicyEvaluationDecisionType _
derive instance repGenericPolicyEvaluationDecisionType :: Generic PolicyEvaluationDecisionType _
instance showPolicyEvaluationDecisionType :: Show PolicyEvaluationDecisionType where show = genericShow
instance decodePolicyEvaluationDecisionType :: Decode PolicyEvaluationDecisionType where decode = genericDecode options
instance encodePolicyEvaluationDecisionType :: Encode PolicyEvaluationDecisionType where encode = genericEncode options



-- | <p>The request failed because a provided policy could not be successfully evaluated. An additional detailed message indicates the source of the failure.</p>
newtype PolicyEvaluationException = PolicyEvaluationException 
  { "message" :: Maybe (PolicyEvaluationErrorMessage')
  }
derive instance newtypePolicyEvaluationException :: Newtype PolicyEvaluationException _
derive instance repGenericPolicyEvaluationException :: Generic PolicyEvaluationException _
instance showPolicyEvaluationException :: Show PolicyEvaluationException where show = genericShow
instance decodePolicyEvaluationException :: Decode PolicyEvaluationException where decode = genericDecode options
instance encodePolicyEvaluationException :: Encode PolicyEvaluationException where encode = genericEncode options

-- | Constructs PolicyEvaluationException from required parameters
newPolicyEvaluationException :: PolicyEvaluationException
newPolicyEvaluationException  = PolicyEvaluationException { "message": Nothing }

-- | Constructs PolicyEvaluationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPolicyEvaluationException' :: ( { "message" :: Maybe (PolicyEvaluationErrorMessage') } -> {"message" :: Maybe (PolicyEvaluationErrorMessage') } ) -> PolicyEvaluationException
newPolicyEvaluationException'  customize = (PolicyEvaluationException <<< customize) { "message": Nothing }



-- | <p>Contains information about a group that a managed policy is attached to.</p> <p>This data type is used as a response element in the <a>ListEntitiesForPolicy</a> action. </p> <p>For more information about managed policies, refer to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>Using IAM</i> guide. </p>
newtype PolicyGroup = PolicyGroup 
  { "GroupName" :: Maybe (GroupNameType')
  , "GroupId" :: Maybe (IdType')
  }
derive instance newtypePolicyGroup :: Newtype PolicyGroup _
derive instance repGenericPolicyGroup :: Generic PolicyGroup _
instance showPolicyGroup :: Show PolicyGroup where show = genericShow
instance decodePolicyGroup :: Decode PolicyGroup where decode = genericDecode options
instance encodePolicyGroup :: Encode PolicyGroup where encode = genericEncode options

-- | Constructs PolicyGroup from required parameters
newPolicyGroup :: PolicyGroup
newPolicyGroup  = PolicyGroup { "GroupId": Nothing, "GroupName": Nothing }

-- | Constructs PolicyGroup's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPolicyGroup' :: ( { "GroupName" :: Maybe (GroupNameType') , "GroupId" :: Maybe (IdType') } -> {"GroupName" :: Maybe (GroupNameType') , "GroupId" :: Maybe (IdType') } ) -> PolicyGroup
newPolicyGroup'  customize = (PolicyGroup <<< customize) { "GroupId": Nothing, "GroupName": Nothing }



newtype PolicyGroupListType = PolicyGroupListType (Array PolicyGroup)
derive instance newtypePolicyGroupListType :: Newtype PolicyGroupListType _
derive instance repGenericPolicyGroupListType :: Generic PolicyGroupListType _
instance showPolicyGroupListType :: Show PolicyGroupListType where show = genericShow
instance decodePolicyGroupListType :: Decode PolicyGroupListType where decode = genericDecode options
instance encodePolicyGroupListType :: Encode PolicyGroupListType where encode = genericEncode options



newtype PolicyIdentifierType = PolicyIdentifierType String
derive instance newtypePolicyIdentifierType :: Newtype PolicyIdentifierType _
derive instance repGenericPolicyIdentifierType :: Generic PolicyIdentifierType _
instance showPolicyIdentifierType :: Show PolicyIdentifierType where show = genericShow
instance decodePolicyIdentifierType :: Decode PolicyIdentifierType where decode = genericDecode options
instance encodePolicyIdentifierType :: Encode PolicyIdentifierType where encode = genericEncode options



-- | <p>The request failed because AWS service role policies can only be attached to the service-linked role for that service.</p>
newtype PolicyNotAttachableException = PolicyNotAttachableException 
  { "message" :: Maybe (PolicyNotAttachableMessage')
  }
derive instance newtypePolicyNotAttachableException :: Newtype PolicyNotAttachableException _
derive instance repGenericPolicyNotAttachableException :: Generic PolicyNotAttachableException _
instance showPolicyNotAttachableException :: Show PolicyNotAttachableException where show = genericShow
instance decodePolicyNotAttachableException :: Decode PolicyNotAttachableException where decode = genericDecode options
instance encodePolicyNotAttachableException :: Encode PolicyNotAttachableException where encode = genericEncode options

-- | Constructs PolicyNotAttachableException from required parameters
newPolicyNotAttachableException :: PolicyNotAttachableException
newPolicyNotAttachableException  = PolicyNotAttachableException { "message": Nothing }

-- | Constructs PolicyNotAttachableException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPolicyNotAttachableException' :: ( { "message" :: Maybe (PolicyNotAttachableMessage') } -> {"message" :: Maybe (PolicyNotAttachableMessage') } ) -> PolicyNotAttachableException
newPolicyNotAttachableException'  customize = (PolicyNotAttachableException <<< customize) { "message": Nothing }



-- | <p>Contains information about a role that a managed policy is attached to.</p> <p>This data type is used as a response element in the <a>ListEntitiesForPolicy</a> action. </p> <p>For more information about managed policies, refer to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>Using IAM</i> guide. </p>
newtype PolicyRole = PolicyRole 
  { "RoleName" :: Maybe (RoleNameType')
  , "RoleId" :: Maybe (IdType')
  }
derive instance newtypePolicyRole :: Newtype PolicyRole _
derive instance repGenericPolicyRole :: Generic PolicyRole _
instance showPolicyRole :: Show PolicyRole where show = genericShow
instance decodePolicyRole :: Decode PolicyRole where decode = genericDecode options
instance encodePolicyRole :: Encode PolicyRole where encode = genericEncode options

-- | Constructs PolicyRole from required parameters
newPolicyRole :: PolicyRole
newPolicyRole  = PolicyRole { "RoleId": Nothing, "RoleName": Nothing }

-- | Constructs PolicyRole's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPolicyRole' :: ( { "RoleName" :: Maybe (RoleNameType') , "RoleId" :: Maybe (IdType') } -> {"RoleName" :: Maybe (RoleNameType') , "RoleId" :: Maybe (IdType') } ) -> PolicyRole
newPolicyRole'  customize = (PolicyRole <<< customize) { "RoleId": Nothing, "RoleName": Nothing }



newtype PolicyRoleListType = PolicyRoleListType (Array PolicyRole)
derive instance newtypePolicyRoleListType :: Newtype PolicyRoleListType _
derive instance repGenericPolicyRoleListType :: Generic PolicyRoleListType _
instance showPolicyRoleListType :: Show PolicyRoleListType where show = genericShow
instance decodePolicyRoleListType :: Decode PolicyRoleListType where decode = genericDecode options
instance encodePolicyRoleListType :: Encode PolicyRoleListType where encode = genericEncode options



newtype PolicySourceType = PolicySourceType String
derive instance newtypePolicySourceType :: Newtype PolicySourceType _
derive instance repGenericPolicySourceType :: Generic PolicySourceType _
instance showPolicySourceType :: Show PolicySourceType where show = genericShow
instance decodePolicySourceType :: Decode PolicySourceType where decode = genericDecode options
instance encodePolicySourceType :: Encode PolicySourceType where encode = genericEncode options



-- | <p>Contains information about a user that a managed policy is attached to.</p> <p>This data type is used as a response element in the <a>ListEntitiesForPolicy</a> action. </p> <p>For more information about managed policies, refer to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>Using IAM</i> guide. </p>
newtype PolicyUser = PolicyUser 
  { "UserName" :: Maybe (UserNameType')
  , "UserId" :: Maybe (IdType')
  }
derive instance newtypePolicyUser :: Newtype PolicyUser _
derive instance repGenericPolicyUser :: Generic PolicyUser _
instance showPolicyUser :: Show PolicyUser where show = genericShow
instance decodePolicyUser :: Decode PolicyUser where decode = genericDecode options
instance encodePolicyUser :: Encode PolicyUser where encode = genericEncode options

-- | Constructs PolicyUser from required parameters
newPolicyUser :: PolicyUser
newPolicyUser  = PolicyUser { "UserId": Nothing, "UserName": Nothing }

-- | Constructs PolicyUser's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPolicyUser' :: ( { "UserName" :: Maybe (UserNameType') , "UserId" :: Maybe (IdType') } -> {"UserName" :: Maybe (UserNameType') , "UserId" :: Maybe (IdType') } ) -> PolicyUser
newPolicyUser'  customize = (PolicyUser <<< customize) { "UserId": Nothing, "UserName": Nothing }



newtype PolicyUserListType = PolicyUserListType (Array PolicyUser)
derive instance newtypePolicyUserListType :: Newtype PolicyUserListType _
derive instance repGenericPolicyUserListType :: Generic PolicyUserListType _
instance showPolicyUserListType :: Show PolicyUserListType where show = genericShow
instance decodePolicyUserListType :: Decode PolicyUserListType where decode = genericDecode options
instance encodePolicyUserListType :: Encode PolicyUserListType where encode = genericEncode options



-- | <p>Contains information about a version of a managed policy.</p> <p>This data type is used as a response element in the <a>CreatePolicyVersion</a>, <a>GetPolicyVersion</a>, <a>ListPolicyVersions</a>, and <a>GetAccountAuthorizationDetails</a> actions. </p> <p>For more information about managed policies, refer to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>Using IAM</i> guide. </p>
newtype PolicyVersion = PolicyVersion 
  { "Document" :: Maybe (PolicyDocumentType')
  , "VersionId" :: Maybe (PolicyVersionIdType')
  , "IsDefaultVersion" :: Maybe (BooleanType')
  , "CreateDate" :: Maybe (DateType')
  }
derive instance newtypePolicyVersion :: Newtype PolicyVersion _
derive instance repGenericPolicyVersion :: Generic PolicyVersion _
instance showPolicyVersion :: Show PolicyVersion where show = genericShow
instance decodePolicyVersion :: Decode PolicyVersion where decode = genericDecode options
instance encodePolicyVersion :: Encode PolicyVersion where encode = genericEncode options

-- | Constructs PolicyVersion from required parameters
newPolicyVersion :: PolicyVersion
newPolicyVersion  = PolicyVersion { "CreateDate": Nothing, "Document": Nothing, "IsDefaultVersion": Nothing, "VersionId": Nothing }

-- | Constructs PolicyVersion's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPolicyVersion' :: ( { "Document" :: Maybe (PolicyDocumentType') , "VersionId" :: Maybe (PolicyVersionIdType') , "IsDefaultVersion" :: Maybe (BooleanType') , "CreateDate" :: Maybe (DateType') } -> {"Document" :: Maybe (PolicyDocumentType') , "VersionId" :: Maybe (PolicyVersionIdType') , "IsDefaultVersion" :: Maybe (BooleanType') , "CreateDate" :: Maybe (DateType') } ) -> PolicyVersion
newPolicyVersion'  customize = (PolicyVersion <<< customize) { "CreateDate": Nothing, "Document": Nothing, "IsDefaultVersion": Nothing, "VersionId": Nothing }



-- | <p>Contains the row and column of a location of a <code>Statement</code> element in a policy document.</p> <p>This data type is used as a member of the <code> <a>Statement</a> </code> type.</p>
newtype Position = Position 
  { "Line" :: Maybe (LineNumber)
  , "Column" :: Maybe (ColumnNumber)
  }
derive instance newtypePosition :: Newtype Position _
derive instance repGenericPosition :: Generic Position _
instance showPosition :: Show Position where show = genericShow
instance decodePosition :: Decode Position where decode = genericDecode options
instance encodePosition :: Encode Position where encode = genericEncode options

-- | Constructs Position from required parameters
newPosition :: Position
newPosition  = Position { "Column": Nothing, "Line": Nothing }

-- | Constructs Position's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPosition' :: ( { "Line" :: Maybe (LineNumber) , "Column" :: Maybe (ColumnNumber) } -> {"Line" :: Maybe (LineNumber) , "Column" :: Maybe (ColumnNumber) } ) -> Position
newPosition'  customize = (Position <<< customize) { "Column": Nothing, "Line": Nothing }



newtype PutGroupPolicyRequest = PutGroupPolicyRequest 
  { "GroupName" :: (GroupNameType')
  , "PolicyName" :: (PolicyNameType')
  , "PolicyDocument" :: (PolicyDocumentType')
  }
derive instance newtypePutGroupPolicyRequest :: Newtype PutGroupPolicyRequest _
derive instance repGenericPutGroupPolicyRequest :: Generic PutGroupPolicyRequest _
instance showPutGroupPolicyRequest :: Show PutGroupPolicyRequest where show = genericShow
instance decodePutGroupPolicyRequest :: Decode PutGroupPolicyRequest where decode = genericDecode options
instance encodePutGroupPolicyRequest :: Encode PutGroupPolicyRequest where encode = genericEncode options

-- | Constructs PutGroupPolicyRequest from required parameters
newPutGroupPolicyRequest :: GroupNameType' -> PolicyDocumentType' -> PolicyNameType' -> PutGroupPolicyRequest
newPutGroupPolicyRequest _GroupName _PolicyDocument _PolicyName = PutGroupPolicyRequest { "GroupName": _GroupName, "PolicyDocument": _PolicyDocument, "PolicyName": _PolicyName }

-- | Constructs PutGroupPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutGroupPolicyRequest' :: GroupNameType' -> PolicyDocumentType' -> PolicyNameType' -> ( { "GroupName" :: (GroupNameType') , "PolicyName" :: (PolicyNameType') , "PolicyDocument" :: (PolicyDocumentType') } -> {"GroupName" :: (GroupNameType') , "PolicyName" :: (PolicyNameType') , "PolicyDocument" :: (PolicyDocumentType') } ) -> PutGroupPolicyRequest
newPutGroupPolicyRequest' _GroupName _PolicyDocument _PolicyName customize = (PutGroupPolicyRequest <<< customize) { "GroupName": _GroupName, "PolicyDocument": _PolicyDocument, "PolicyName": _PolicyName }



newtype PutRolePolicyRequest = PutRolePolicyRequest 
  { "RoleName" :: (RoleNameType')
  , "PolicyName" :: (PolicyNameType')
  , "PolicyDocument" :: (PolicyDocumentType')
  }
derive instance newtypePutRolePolicyRequest :: Newtype PutRolePolicyRequest _
derive instance repGenericPutRolePolicyRequest :: Generic PutRolePolicyRequest _
instance showPutRolePolicyRequest :: Show PutRolePolicyRequest where show = genericShow
instance decodePutRolePolicyRequest :: Decode PutRolePolicyRequest where decode = genericDecode options
instance encodePutRolePolicyRequest :: Encode PutRolePolicyRequest where encode = genericEncode options

-- | Constructs PutRolePolicyRequest from required parameters
newPutRolePolicyRequest :: PolicyDocumentType' -> PolicyNameType' -> RoleNameType' -> PutRolePolicyRequest
newPutRolePolicyRequest _PolicyDocument _PolicyName _RoleName = PutRolePolicyRequest { "PolicyDocument": _PolicyDocument, "PolicyName": _PolicyName, "RoleName": _RoleName }

-- | Constructs PutRolePolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutRolePolicyRequest' :: PolicyDocumentType' -> PolicyNameType' -> RoleNameType' -> ( { "RoleName" :: (RoleNameType') , "PolicyName" :: (PolicyNameType') , "PolicyDocument" :: (PolicyDocumentType') } -> {"RoleName" :: (RoleNameType') , "PolicyName" :: (PolicyNameType') , "PolicyDocument" :: (PolicyDocumentType') } ) -> PutRolePolicyRequest
newPutRolePolicyRequest' _PolicyDocument _PolicyName _RoleName customize = (PutRolePolicyRequest <<< customize) { "PolicyDocument": _PolicyDocument, "PolicyName": _PolicyName, "RoleName": _RoleName }



newtype PutUserPolicyRequest = PutUserPolicyRequest 
  { "UserName" :: (ExistingUserNameType')
  , "PolicyName" :: (PolicyNameType')
  , "PolicyDocument" :: (PolicyDocumentType')
  }
derive instance newtypePutUserPolicyRequest :: Newtype PutUserPolicyRequest _
derive instance repGenericPutUserPolicyRequest :: Generic PutUserPolicyRequest _
instance showPutUserPolicyRequest :: Show PutUserPolicyRequest where show = genericShow
instance decodePutUserPolicyRequest :: Decode PutUserPolicyRequest where decode = genericDecode options
instance encodePutUserPolicyRequest :: Encode PutUserPolicyRequest where encode = genericEncode options

-- | Constructs PutUserPolicyRequest from required parameters
newPutUserPolicyRequest :: PolicyDocumentType' -> PolicyNameType' -> ExistingUserNameType' -> PutUserPolicyRequest
newPutUserPolicyRequest _PolicyDocument _PolicyName _UserName = PutUserPolicyRequest { "PolicyDocument": _PolicyDocument, "PolicyName": _PolicyName, "UserName": _UserName }

-- | Constructs PutUserPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutUserPolicyRequest' :: PolicyDocumentType' -> PolicyNameType' -> ExistingUserNameType' -> ( { "UserName" :: (ExistingUserNameType') , "PolicyName" :: (PolicyNameType') , "PolicyDocument" :: (PolicyDocumentType') } -> {"UserName" :: (ExistingUserNameType') , "PolicyName" :: (PolicyNameType') , "PolicyDocument" :: (PolicyDocumentType') } ) -> PutUserPolicyRequest
newPutUserPolicyRequest' _PolicyDocument _PolicyName _UserName customize = (PutUserPolicyRequest <<< customize) { "PolicyDocument": _PolicyDocument, "PolicyName": _PolicyName, "UserName": _UserName }



newtype ReasonType = ReasonType String
derive instance newtypeReasonType :: Newtype ReasonType _
derive instance repGenericReasonType :: Generic ReasonType _
instance showReasonType :: Show ReasonType where show = genericShow
instance decodeReasonType :: Decode ReasonType where decode = genericDecode options
instance encodeReasonType :: Encode ReasonType where encode = genericEncode options



newtype RegionNameType = RegionNameType String
derive instance newtypeRegionNameType :: Newtype RegionNameType _
derive instance repGenericRegionNameType :: Generic RegionNameType _
instance showRegionNameType :: Show RegionNameType where show = genericShow
instance decodeRegionNameType :: Decode RegionNameType where decode = genericDecode options
instance encodeRegionNameType :: Encode RegionNameType where encode = genericEncode options



newtype RemoveClientIDFromOpenIDConnectProviderRequest = RemoveClientIDFromOpenIDConnectProviderRequest 
  { "OpenIDConnectProviderArn" :: (ArnType')
  , "ClientID" :: (ClientIDType')
  }
derive instance newtypeRemoveClientIDFromOpenIDConnectProviderRequest :: Newtype RemoveClientIDFromOpenIDConnectProviderRequest _
derive instance repGenericRemoveClientIDFromOpenIDConnectProviderRequest :: Generic RemoveClientIDFromOpenIDConnectProviderRequest _
instance showRemoveClientIDFromOpenIDConnectProviderRequest :: Show RemoveClientIDFromOpenIDConnectProviderRequest where show = genericShow
instance decodeRemoveClientIDFromOpenIDConnectProviderRequest :: Decode RemoveClientIDFromOpenIDConnectProviderRequest where decode = genericDecode options
instance encodeRemoveClientIDFromOpenIDConnectProviderRequest :: Encode RemoveClientIDFromOpenIDConnectProviderRequest where encode = genericEncode options

-- | Constructs RemoveClientIDFromOpenIDConnectProviderRequest from required parameters
newRemoveClientIDFromOpenIDConnectProviderRequest :: ClientIDType' -> ArnType' -> RemoveClientIDFromOpenIDConnectProviderRequest
newRemoveClientIDFromOpenIDConnectProviderRequest _ClientID _OpenIDConnectProviderArn = RemoveClientIDFromOpenIDConnectProviderRequest { "ClientID": _ClientID, "OpenIDConnectProviderArn": _OpenIDConnectProviderArn }

-- | Constructs RemoveClientIDFromOpenIDConnectProviderRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRemoveClientIDFromOpenIDConnectProviderRequest' :: ClientIDType' -> ArnType' -> ( { "OpenIDConnectProviderArn" :: (ArnType') , "ClientID" :: (ClientIDType') } -> {"OpenIDConnectProviderArn" :: (ArnType') , "ClientID" :: (ClientIDType') } ) -> RemoveClientIDFromOpenIDConnectProviderRequest
newRemoveClientIDFromOpenIDConnectProviderRequest' _ClientID _OpenIDConnectProviderArn customize = (RemoveClientIDFromOpenIDConnectProviderRequest <<< customize) { "ClientID": _ClientID, "OpenIDConnectProviderArn": _OpenIDConnectProviderArn }



newtype RemoveRoleFromInstanceProfileRequest = RemoveRoleFromInstanceProfileRequest 
  { "InstanceProfileName" :: (InstanceProfileNameType')
  , "RoleName" :: (RoleNameType')
  }
derive instance newtypeRemoveRoleFromInstanceProfileRequest :: Newtype RemoveRoleFromInstanceProfileRequest _
derive instance repGenericRemoveRoleFromInstanceProfileRequest :: Generic RemoveRoleFromInstanceProfileRequest _
instance showRemoveRoleFromInstanceProfileRequest :: Show RemoveRoleFromInstanceProfileRequest where show = genericShow
instance decodeRemoveRoleFromInstanceProfileRequest :: Decode RemoveRoleFromInstanceProfileRequest where decode = genericDecode options
instance encodeRemoveRoleFromInstanceProfileRequest :: Encode RemoveRoleFromInstanceProfileRequest where encode = genericEncode options

-- | Constructs RemoveRoleFromInstanceProfileRequest from required parameters
newRemoveRoleFromInstanceProfileRequest :: InstanceProfileNameType' -> RoleNameType' -> RemoveRoleFromInstanceProfileRequest
newRemoveRoleFromInstanceProfileRequest _InstanceProfileName _RoleName = RemoveRoleFromInstanceProfileRequest { "InstanceProfileName": _InstanceProfileName, "RoleName": _RoleName }

-- | Constructs RemoveRoleFromInstanceProfileRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRemoveRoleFromInstanceProfileRequest' :: InstanceProfileNameType' -> RoleNameType' -> ( { "InstanceProfileName" :: (InstanceProfileNameType') , "RoleName" :: (RoleNameType') } -> {"InstanceProfileName" :: (InstanceProfileNameType') , "RoleName" :: (RoleNameType') } ) -> RemoveRoleFromInstanceProfileRequest
newRemoveRoleFromInstanceProfileRequest' _InstanceProfileName _RoleName customize = (RemoveRoleFromInstanceProfileRequest <<< customize) { "InstanceProfileName": _InstanceProfileName, "RoleName": _RoleName }



newtype RemoveUserFromGroupRequest = RemoveUserFromGroupRequest 
  { "GroupName" :: (GroupNameType')
  , "UserName" :: (ExistingUserNameType')
  }
derive instance newtypeRemoveUserFromGroupRequest :: Newtype RemoveUserFromGroupRequest _
derive instance repGenericRemoveUserFromGroupRequest :: Generic RemoveUserFromGroupRequest _
instance showRemoveUserFromGroupRequest :: Show RemoveUserFromGroupRequest where show = genericShow
instance decodeRemoveUserFromGroupRequest :: Decode RemoveUserFromGroupRequest where decode = genericDecode options
instance encodeRemoveUserFromGroupRequest :: Encode RemoveUserFromGroupRequest where encode = genericEncode options

-- | Constructs RemoveUserFromGroupRequest from required parameters
newRemoveUserFromGroupRequest :: GroupNameType' -> ExistingUserNameType' -> RemoveUserFromGroupRequest
newRemoveUserFromGroupRequest _GroupName _UserName = RemoveUserFromGroupRequest { "GroupName": _GroupName, "UserName": _UserName }

-- | Constructs RemoveUserFromGroupRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRemoveUserFromGroupRequest' :: GroupNameType' -> ExistingUserNameType' -> ( { "GroupName" :: (GroupNameType') , "UserName" :: (ExistingUserNameType') } -> {"GroupName" :: (GroupNameType') , "UserName" :: (ExistingUserNameType') } ) -> RemoveUserFromGroupRequest
newRemoveUserFromGroupRequest' _GroupName _UserName customize = (RemoveUserFromGroupRequest <<< customize) { "GroupName": _GroupName, "UserName": _UserName }



newtype ReportContentType = ReportContentType String
derive instance newtypeReportContentType :: Newtype ReportContentType _
derive instance repGenericReportContentType :: Generic ReportContentType _
instance showReportContentType :: Show ReportContentType where show = genericShow
instance decodeReportContentType :: Decode ReportContentType where decode = genericDecode options
instance encodeReportContentType :: Encode ReportContentType where encode = genericEncode options



newtype ReportFormatType = ReportFormatType String
derive instance newtypeReportFormatType :: Newtype ReportFormatType _
derive instance repGenericReportFormatType :: Generic ReportFormatType _
instance showReportFormatType :: Show ReportFormatType where show = genericShow
instance decodeReportFormatType :: Decode ReportFormatType where decode = genericDecode options
instance encodeReportFormatType :: Encode ReportFormatType where encode = genericEncode options



newtype ReportStateDescriptionType = ReportStateDescriptionType String
derive instance newtypeReportStateDescriptionType :: Newtype ReportStateDescriptionType _
derive instance repGenericReportStateDescriptionType :: Generic ReportStateDescriptionType _
instance showReportStateDescriptionType :: Show ReportStateDescriptionType where show = genericShow
instance decodeReportStateDescriptionType :: Decode ReportStateDescriptionType where decode = genericDecode options
instance encodeReportStateDescriptionType :: Encode ReportStateDescriptionType where encode = genericEncode options



newtype ReportStateType = ReportStateType String
derive instance newtypeReportStateType :: Newtype ReportStateType _
derive instance repGenericReportStateType :: Generic ReportStateType _
instance showReportStateType :: Show ReportStateType where show = genericShow
instance decodeReportStateType :: Decode ReportStateType where decode = genericDecode options
instance encodeReportStateType :: Encode ReportStateType where encode = genericEncode options



newtype ResetServiceSpecificCredentialRequest = ResetServiceSpecificCredentialRequest 
  { "UserName" :: Maybe (UserNameType')
  , "ServiceSpecificCredentialId" :: (ServiceSpecificCredentialId')
  }
derive instance newtypeResetServiceSpecificCredentialRequest :: Newtype ResetServiceSpecificCredentialRequest _
derive instance repGenericResetServiceSpecificCredentialRequest :: Generic ResetServiceSpecificCredentialRequest _
instance showResetServiceSpecificCredentialRequest :: Show ResetServiceSpecificCredentialRequest where show = genericShow
instance decodeResetServiceSpecificCredentialRequest :: Decode ResetServiceSpecificCredentialRequest where decode = genericDecode options
instance encodeResetServiceSpecificCredentialRequest :: Encode ResetServiceSpecificCredentialRequest where encode = genericEncode options

-- | Constructs ResetServiceSpecificCredentialRequest from required parameters
newResetServiceSpecificCredentialRequest :: ServiceSpecificCredentialId' -> ResetServiceSpecificCredentialRequest
newResetServiceSpecificCredentialRequest _ServiceSpecificCredentialId = ResetServiceSpecificCredentialRequest { "ServiceSpecificCredentialId": _ServiceSpecificCredentialId, "UserName": Nothing }

-- | Constructs ResetServiceSpecificCredentialRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResetServiceSpecificCredentialRequest' :: ServiceSpecificCredentialId' -> ( { "UserName" :: Maybe (UserNameType') , "ServiceSpecificCredentialId" :: (ServiceSpecificCredentialId') } -> {"UserName" :: Maybe (UserNameType') , "ServiceSpecificCredentialId" :: (ServiceSpecificCredentialId') } ) -> ResetServiceSpecificCredentialRequest
newResetServiceSpecificCredentialRequest' _ServiceSpecificCredentialId customize = (ResetServiceSpecificCredentialRequest <<< customize) { "ServiceSpecificCredentialId": _ServiceSpecificCredentialId, "UserName": Nothing }



newtype ResetServiceSpecificCredentialResponse = ResetServiceSpecificCredentialResponse 
  { "ServiceSpecificCredential" :: Maybe (ServiceSpecificCredential)
  }
derive instance newtypeResetServiceSpecificCredentialResponse :: Newtype ResetServiceSpecificCredentialResponse _
derive instance repGenericResetServiceSpecificCredentialResponse :: Generic ResetServiceSpecificCredentialResponse _
instance showResetServiceSpecificCredentialResponse :: Show ResetServiceSpecificCredentialResponse where show = genericShow
instance decodeResetServiceSpecificCredentialResponse :: Decode ResetServiceSpecificCredentialResponse where decode = genericDecode options
instance encodeResetServiceSpecificCredentialResponse :: Encode ResetServiceSpecificCredentialResponse where encode = genericEncode options

-- | Constructs ResetServiceSpecificCredentialResponse from required parameters
newResetServiceSpecificCredentialResponse :: ResetServiceSpecificCredentialResponse
newResetServiceSpecificCredentialResponse  = ResetServiceSpecificCredentialResponse { "ServiceSpecificCredential": Nothing }

-- | Constructs ResetServiceSpecificCredentialResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResetServiceSpecificCredentialResponse' :: ( { "ServiceSpecificCredential" :: Maybe (ServiceSpecificCredential) } -> {"ServiceSpecificCredential" :: Maybe (ServiceSpecificCredential) } ) -> ResetServiceSpecificCredentialResponse
newResetServiceSpecificCredentialResponse'  customize = (ResetServiceSpecificCredentialResponse <<< customize) { "ServiceSpecificCredential": Nothing }



newtype ResourceHandlingOptionType = ResourceHandlingOptionType String
derive instance newtypeResourceHandlingOptionType :: Newtype ResourceHandlingOptionType _
derive instance repGenericResourceHandlingOptionType :: Generic ResourceHandlingOptionType _
instance showResourceHandlingOptionType :: Show ResourceHandlingOptionType where show = genericShow
instance decodeResourceHandlingOptionType :: Decode ResourceHandlingOptionType where decode = genericDecode options
instance encodeResourceHandlingOptionType :: Encode ResourceHandlingOptionType where encode = genericEncode options



newtype ResourceNameListType = ResourceNameListType (Array ResourceNameType)
derive instance newtypeResourceNameListType :: Newtype ResourceNameListType _
derive instance repGenericResourceNameListType :: Generic ResourceNameListType _
instance showResourceNameListType :: Show ResourceNameListType where show = genericShow
instance decodeResourceNameListType :: Decode ResourceNameListType where decode = genericDecode options
instance encodeResourceNameListType :: Encode ResourceNameListType where encode = genericEncode options



newtype ResourceNameType = ResourceNameType String
derive instance newtypeResourceNameType :: Newtype ResourceNameType _
derive instance repGenericResourceNameType :: Generic ResourceNameType _
instance showResourceNameType :: Show ResourceNameType where show = genericShow
instance decodeResourceNameType :: Decode ResourceNameType where decode = genericDecode options
instance encodeResourceNameType :: Encode ResourceNameType where encode = genericEncode options



-- | <p>Contains the result of the simulation of a single API action call on a single resource.</p> <p>This data type is used by a member of the <a>EvaluationResult</a> data type.</p>
newtype ResourceSpecificResult = ResourceSpecificResult 
  { "EvalResourceName" :: (ResourceNameType)
  , "EvalResourceDecision" :: (PolicyEvaluationDecisionType)
  , "MatchedStatements" :: Maybe (StatementListType)
  , "MissingContextValues" :: Maybe (ContextKeyNamesResultListType)
  , "EvalDecisionDetails" :: Maybe (EvalDecisionDetailsType)
  }
derive instance newtypeResourceSpecificResult :: Newtype ResourceSpecificResult _
derive instance repGenericResourceSpecificResult :: Generic ResourceSpecificResult _
instance showResourceSpecificResult :: Show ResourceSpecificResult where show = genericShow
instance decodeResourceSpecificResult :: Decode ResourceSpecificResult where decode = genericDecode options
instance encodeResourceSpecificResult :: Encode ResourceSpecificResult where encode = genericEncode options

-- | Constructs ResourceSpecificResult from required parameters
newResourceSpecificResult :: PolicyEvaluationDecisionType -> ResourceNameType -> ResourceSpecificResult
newResourceSpecificResult _EvalResourceDecision _EvalResourceName = ResourceSpecificResult { "EvalResourceDecision": _EvalResourceDecision, "EvalResourceName": _EvalResourceName, "EvalDecisionDetails": Nothing, "MatchedStatements": Nothing, "MissingContextValues": Nothing }

-- | Constructs ResourceSpecificResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceSpecificResult' :: PolicyEvaluationDecisionType -> ResourceNameType -> ( { "EvalResourceName" :: (ResourceNameType) , "EvalResourceDecision" :: (PolicyEvaluationDecisionType) , "MatchedStatements" :: Maybe (StatementListType) , "MissingContextValues" :: Maybe (ContextKeyNamesResultListType) , "EvalDecisionDetails" :: Maybe (EvalDecisionDetailsType) } -> {"EvalResourceName" :: (ResourceNameType) , "EvalResourceDecision" :: (PolicyEvaluationDecisionType) , "MatchedStatements" :: Maybe (StatementListType) , "MissingContextValues" :: Maybe (ContextKeyNamesResultListType) , "EvalDecisionDetails" :: Maybe (EvalDecisionDetailsType) } ) -> ResourceSpecificResult
newResourceSpecificResult' _EvalResourceDecision _EvalResourceName customize = (ResourceSpecificResult <<< customize) { "EvalResourceDecision": _EvalResourceDecision, "EvalResourceName": _EvalResourceName, "EvalDecisionDetails": Nothing, "MatchedStatements": Nothing, "MissingContextValues": Nothing }



newtype ResourceSpecificResultListType = ResourceSpecificResultListType (Array ResourceSpecificResult)
derive instance newtypeResourceSpecificResultListType :: Newtype ResourceSpecificResultListType _
derive instance repGenericResourceSpecificResultListType :: Generic ResourceSpecificResultListType _
instance showResourceSpecificResultListType :: Show ResourceSpecificResultListType where show = genericShow
instance decodeResourceSpecificResultListType :: Decode ResourceSpecificResultListType where decode = genericDecode options
instance encodeResourceSpecificResultListType :: Encode ResourceSpecificResultListType where encode = genericEncode options



newtype ResyncMFADeviceRequest = ResyncMFADeviceRequest 
  { "UserName" :: (ExistingUserNameType')
  , "SerialNumber" :: (SerialNumberType')
  , "AuthenticationCode1" :: (AuthenticationCodeType')
  , "AuthenticationCode2" :: (AuthenticationCodeType')
  }
derive instance newtypeResyncMFADeviceRequest :: Newtype ResyncMFADeviceRequest _
derive instance repGenericResyncMFADeviceRequest :: Generic ResyncMFADeviceRequest _
instance showResyncMFADeviceRequest :: Show ResyncMFADeviceRequest where show = genericShow
instance decodeResyncMFADeviceRequest :: Decode ResyncMFADeviceRequest where decode = genericDecode options
instance encodeResyncMFADeviceRequest :: Encode ResyncMFADeviceRequest where encode = genericEncode options

-- | Constructs ResyncMFADeviceRequest from required parameters
newResyncMFADeviceRequest :: AuthenticationCodeType' -> AuthenticationCodeType' -> SerialNumberType' -> ExistingUserNameType' -> ResyncMFADeviceRequest
newResyncMFADeviceRequest _AuthenticationCode1 _AuthenticationCode2 _SerialNumber _UserName = ResyncMFADeviceRequest { "AuthenticationCode1": _AuthenticationCode1, "AuthenticationCode2": _AuthenticationCode2, "SerialNumber": _SerialNumber, "UserName": _UserName }

-- | Constructs ResyncMFADeviceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResyncMFADeviceRequest' :: AuthenticationCodeType' -> AuthenticationCodeType' -> SerialNumberType' -> ExistingUserNameType' -> ( { "UserName" :: (ExistingUserNameType') , "SerialNumber" :: (SerialNumberType') , "AuthenticationCode1" :: (AuthenticationCodeType') , "AuthenticationCode2" :: (AuthenticationCodeType') } -> {"UserName" :: (ExistingUserNameType') , "SerialNumber" :: (SerialNumberType') , "AuthenticationCode1" :: (AuthenticationCodeType') , "AuthenticationCode2" :: (AuthenticationCodeType') } ) -> ResyncMFADeviceRequest
newResyncMFADeviceRequest' _AuthenticationCode1 _AuthenticationCode2 _SerialNumber _UserName customize = (ResyncMFADeviceRequest <<< customize) { "AuthenticationCode1": _AuthenticationCode1, "AuthenticationCode2": _AuthenticationCode2, "SerialNumber": _SerialNumber, "UserName": _UserName }



-- | <p>Contains information about an IAM role. This structure is returned as a response element in several APIs that interact with roles.</p>
newtype Role = Role 
  { "Path" :: (PathType')
  , "RoleName" :: (RoleNameType')
  , "RoleId" :: (IdType')
  , "Arn" :: (ArnType')
  , "CreateDate" :: (DateType')
  , "AssumeRolePolicyDocument" :: Maybe (PolicyDocumentType')
  , "Description" :: Maybe (RoleDescriptionType')
  }
derive instance newtypeRole :: Newtype Role _
derive instance repGenericRole :: Generic Role _
instance showRole :: Show Role where show = genericShow
instance decodeRole :: Decode Role where decode = genericDecode options
instance encodeRole :: Encode Role where encode = genericEncode options

-- | Constructs Role from required parameters
newRole :: ArnType' -> DateType' -> PathType' -> IdType' -> RoleNameType' -> Role
newRole _Arn _CreateDate _Path _RoleId _RoleName = Role { "Arn": _Arn, "CreateDate": _CreateDate, "Path": _Path, "RoleId": _RoleId, "RoleName": _RoleName, "AssumeRolePolicyDocument": Nothing, "Description": Nothing }

-- | Constructs Role's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRole' :: ArnType' -> DateType' -> PathType' -> IdType' -> RoleNameType' -> ( { "Path" :: (PathType') , "RoleName" :: (RoleNameType') , "RoleId" :: (IdType') , "Arn" :: (ArnType') , "CreateDate" :: (DateType') , "AssumeRolePolicyDocument" :: Maybe (PolicyDocumentType') , "Description" :: Maybe (RoleDescriptionType') } -> {"Path" :: (PathType') , "RoleName" :: (RoleNameType') , "RoleId" :: (IdType') , "Arn" :: (ArnType') , "CreateDate" :: (DateType') , "AssumeRolePolicyDocument" :: Maybe (PolicyDocumentType') , "Description" :: Maybe (RoleDescriptionType') } ) -> Role
newRole' _Arn _CreateDate _Path _RoleId _RoleName customize = (Role <<< customize) { "Arn": _Arn, "CreateDate": _CreateDate, "Path": _Path, "RoleId": _RoleId, "RoleName": _RoleName, "AssumeRolePolicyDocument": Nothing, "Description": Nothing }



-- | <p>Contains information about an IAM role, including all of the role's policies.</p> <p>This data type is used as a response element in the <a>GetAccountAuthorizationDetails</a> action.</p>
newtype RoleDetail = RoleDetail 
  { "Path" :: Maybe (PathType')
  , "RoleName" :: Maybe (RoleNameType')
  , "RoleId" :: Maybe (IdType')
  , "Arn" :: Maybe (ArnType')
  , "CreateDate" :: Maybe (DateType')
  , "AssumeRolePolicyDocument" :: Maybe (PolicyDocumentType')
  , "InstanceProfileList" :: Maybe (InstanceProfileListType')
  , "RolePolicyList" :: Maybe (PolicyDetailListType')
  , "AttachedManagedPolicies" :: Maybe (AttachedPoliciesListType')
  }
derive instance newtypeRoleDetail :: Newtype RoleDetail _
derive instance repGenericRoleDetail :: Generic RoleDetail _
instance showRoleDetail :: Show RoleDetail where show = genericShow
instance decodeRoleDetail :: Decode RoleDetail where decode = genericDecode options
instance encodeRoleDetail :: Encode RoleDetail where encode = genericEncode options

-- | Constructs RoleDetail from required parameters
newRoleDetail :: RoleDetail
newRoleDetail  = RoleDetail { "Arn": Nothing, "AssumeRolePolicyDocument": Nothing, "AttachedManagedPolicies": Nothing, "CreateDate": Nothing, "InstanceProfileList": Nothing, "Path": Nothing, "RoleId": Nothing, "RoleName": Nothing, "RolePolicyList": Nothing }

-- | Constructs RoleDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRoleDetail' :: ( { "Path" :: Maybe (PathType') , "RoleName" :: Maybe (RoleNameType') , "RoleId" :: Maybe (IdType') , "Arn" :: Maybe (ArnType') , "CreateDate" :: Maybe (DateType') , "AssumeRolePolicyDocument" :: Maybe (PolicyDocumentType') , "InstanceProfileList" :: Maybe (InstanceProfileListType') , "RolePolicyList" :: Maybe (PolicyDetailListType') , "AttachedManagedPolicies" :: Maybe (AttachedPoliciesListType') } -> {"Path" :: Maybe (PathType') , "RoleName" :: Maybe (RoleNameType') , "RoleId" :: Maybe (IdType') , "Arn" :: Maybe (ArnType') , "CreateDate" :: Maybe (DateType') , "AssumeRolePolicyDocument" :: Maybe (PolicyDocumentType') , "InstanceProfileList" :: Maybe (InstanceProfileListType') , "RolePolicyList" :: Maybe (PolicyDetailListType') , "AttachedManagedPolicies" :: Maybe (AttachedPoliciesListType') } ) -> RoleDetail
newRoleDetail'  customize = (RoleDetail <<< customize) { "Arn": Nothing, "AssumeRolePolicyDocument": Nothing, "AttachedManagedPolicies": Nothing, "CreateDate": Nothing, "InstanceProfileList": Nothing, "Path": Nothing, "RoleId": Nothing, "RoleName": Nothing, "RolePolicyList": Nothing }



newtype RoleUsageListType = RoleUsageListType (Array RoleUsageType)
derive instance newtypeRoleUsageListType :: Newtype RoleUsageListType _
derive instance repGenericRoleUsageListType :: Generic RoleUsageListType _
instance showRoleUsageListType :: Show RoleUsageListType where show = genericShow
instance decodeRoleUsageListType :: Decode RoleUsageListType where decode = genericDecode options
instance encodeRoleUsageListType :: Encode RoleUsageListType where encode = genericEncode options



-- | <p>An object that contains details about how a service-linked role is used.</p> <p>This data type is used as a response element in the <a>GetServiceLinkedRoleDeletionStatus</a> operation.</p>
newtype RoleUsageType = RoleUsageType 
  { "Region" :: Maybe (RegionNameType)
  , "Resources" :: Maybe (ArnListType)
  }
derive instance newtypeRoleUsageType :: Newtype RoleUsageType _
derive instance repGenericRoleUsageType :: Generic RoleUsageType _
instance showRoleUsageType :: Show RoleUsageType where show = genericShow
instance decodeRoleUsageType :: Decode RoleUsageType where decode = genericDecode options
instance encodeRoleUsageType :: Encode RoleUsageType where encode = genericEncode options

-- | Constructs RoleUsageType from required parameters
newRoleUsageType :: RoleUsageType
newRoleUsageType  = RoleUsageType { "Region": Nothing, "Resources": Nothing }

-- | Constructs RoleUsageType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRoleUsageType' :: ( { "Region" :: Maybe (RegionNameType) , "Resources" :: Maybe (ArnListType) } -> {"Region" :: Maybe (RegionNameType) , "Resources" :: Maybe (ArnListType) } ) -> RoleUsageType
newRoleUsageType'  customize = (RoleUsageType <<< customize) { "Region": Nothing, "Resources": Nothing }



newtype SAMLMetadataDocumentType = SAMLMetadataDocumentType String
derive instance newtypeSAMLMetadataDocumentType :: Newtype SAMLMetadataDocumentType _
derive instance repGenericSAMLMetadataDocumentType :: Generic SAMLMetadataDocumentType _
instance showSAMLMetadataDocumentType :: Show SAMLMetadataDocumentType where show = genericShow
instance decodeSAMLMetadataDocumentType :: Decode SAMLMetadataDocumentType where decode = genericDecode options
instance encodeSAMLMetadataDocumentType :: Encode SAMLMetadataDocumentType where encode = genericEncode options



-- | <p>Contains the list of SAML providers for this account.</p>
newtype SAMLProviderListEntry = SAMLProviderListEntry 
  { "Arn" :: Maybe (ArnType')
  , "ValidUntil" :: Maybe (DateType')
  , "CreateDate" :: Maybe (DateType')
  }
derive instance newtypeSAMLProviderListEntry :: Newtype SAMLProviderListEntry _
derive instance repGenericSAMLProviderListEntry :: Generic SAMLProviderListEntry _
instance showSAMLProviderListEntry :: Show SAMLProviderListEntry where show = genericShow
instance decodeSAMLProviderListEntry :: Decode SAMLProviderListEntry where decode = genericDecode options
instance encodeSAMLProviderListEntry :: Encode SAMLProviderListEntry where encode = genericEncode options

-- | Constructs SAMLProviderListEntry from required parameters
newSAMLProviderListEntry :: SAMLProviderListEntry
newSAMLProviderListEntry  = SAMLProviderListEntry { "Arn": Nothing, "CreateDate": Nothing, "ValidUntil": Nothing }

-- | Constructs SAMLProviderListEntry's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSAMLProviderListEntry' :: ( { "Arn" :: Maybe (ArnType') , "ValidUntil" :: Maybe (DateType') , "CreateDate" :: Maybe (DateType') } -> {"Arn" :: Maybe (ArnType') , "ValidUntil" :: Maybe (DateType') , "CreateDate" :: Maybe (DateType') } ) -> SAMLProviderListEntry
newSAMLProviderListEntry'  customize = (SAMLProviderListEntry <<< customize) { "Arn": Nothing, "CreateDate": Nothing, "ValidUntil": Nothing }



newtype SAMLProviderListType = SAMLProviderListType (Array SAMLProviderListEntry)
derive instance newtypeSAMLProviderListType :: Newtype SAMLProviderListType _
derive instance repGenericSAMLProviderListType :: Generic SAMLProviderListType _
instance showSAMLProviderListType :: Show SAMLProviderListType where show = genericShow
instance decodeSAMLProviderListType :: Decode SAMLProviderListType where decode = genericDecode options
instance encodeSAMLProviderListType :: Encode SAMLProviderListType where encode = genericEncode options



newtype SAMLProviderNameType = SAMLProviderNameType String
derive instance newtypeSAMLProviderNameType :: Newtype SAMLProviderNameType _
derive instance repGenericSAMLProviderNameType :: Generic SAMLProviderNameType _
instance showSAMLProviderNameType :: Show SAMLProviderNameType where show = genericShow
instance decodeSAMLProviderNameType :: Decode SAMLProviderNameType where decode = genericDecode options
instance encodeSAMLProviderNameType :: Encode SAMLProviderNameType where encode = genericEncode options



-- | <p>Contains information about an SSH public key.</p> <p>This data type is used as a response element in the <a>GetSSHPublicKey</a> and <a>UploadSSHPublicKey</a> actions. </p>
newtype SSHPublicKey = SSHPublicKey 
  { "UserName" :: (UserNameType')
  , "SSHPublicKeyId" :: (PublicKeyIdType')
  , "Fingerprint" :: (PublicKeyFingerprintType')
  , "SSHPublicKeyBody" :: (PublicKeyMaterialType')
  , "Status" :: (StatusType')
  , "UploadDate" :: Maybe (DateType')
  }
derive instance newtypeSSHPublicKey :: Newtype SSHPublicKey _
derive instance repGenericSSHPublicKey :: Generic SSHPublicKey _
instance showSSHPublicKey :: Show SSHPublicKey where show = genericShow
instance decodeSSHPublicKey :: Decode SSHPublicKey where decode = genericDecode options
instance encodeSSHPublicKey :: Encode SSHPublicKey where encode = genericEncode options

-- | Constructs SSHPublicKey from required parameters
newSSHPublicKey :: PublicKeyFingerprintType' -> PublicKeyMaterialType' -> PublicKeyIdType' -> StatusType' -> UserNameType' -> SSHPublicKey
newSSHPublicKey _Fingerprint _SSHPublicKeyBody _SSHPublicKeyId _Status _UserName = SSHPublicKey { "Fingerprint": _Fingerprint, "SSHPublicKeyBody": _SSHPublicKeyBody, "SSHPublicKeyId": _SSHPublicKeyId, "Status": _Status, "UserName": _UserName, "UploadDate": Nothing }

-- | Constructs SSHPublicKey's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSSHPublicKey' :: PublicKeyFingerprintType' -> PublicKeyMaterialType' -> PublicKeyIdType' -> StatusType' -> UserNameType' -> ( { "UserName" :: (UserNameType') , "SSHPublicKeyId" :: (PublicKeyIdType') , "Fingerprint" :: (PublicKeyFingerprintType') , "SSHPublicKeyBody" :: (PublicKeyMaterialType') , "Status" :: (StatusType') , "UploadDate" :: Maybe (DateType') } -> {"UserName" :: (UserNameType') , "SSHPublicKeyId" :: (PublicKeyIdType') , "Fingerprint" :: (PublicKeyFingerprintType') , "SSHPublicKeyBody" :: (PublicKeyMaterialType') , "Status" :: (StatusType') , "UploadDate" :: Maybe (DateType') } ) -> SSHPublicKey
newSSHPublicKey' _Fingerprint _SSHPublicKeyBody _SSHPublicKeyId _Status _UserName customize = (SSHPublicKey <<< customize) { "Fingerprint": _Fingerprint, "SSHPublicKeyBody": _SSHPublicKeyBody, "SSHPublicKeyId": _SSHPublicKeyId, "Status": _Status, "UserName": _UserName, "UploadDate": Nothing }



newtype SSHPublicKeyListType = SSHPublicKeyListType (Array SSHPublicKeyMetadata)
derive instance newtypeSSHPublicKeyListType :: Newtype SSHPublicKeyListType _
derive instance repGenericSSHPublicKeyListType :: Generic SSHPublicKeyListType _
instance showSSHPublicKeyListType :: Show SSHPublicKeyListType where show = genericShow
instance decodeSSHPublicKeyListType :: Decode SSHPublicKeyListType where decode = genericDecode options
instance encodeSSHPublicKeyListType :: Encode SSHPublicKeyListType where encode = genericEncode options



-- | <p>Contains information about an SSH public key, without the key's body or fingerprint.</p> <p>This data type is used as a response element in the <a>ListSSHPublicKeys</a> action.</p>
newtype SSHPublicKeyMetadata = SSHPublicKeyMetadata 
  { "UserName" :: (UserNameType')
  , "SSHPublicKeyId" :: (PublicKeyIdType')
  , "Status" :: (StatusType')
  , "UploadDate" :: (DateType')
  }
derive instance newtypeSSHPublicKeyMetadata :: Newtype SSHPublicKeyMetadata _
derive instance repGenericSSHPublicKeyMetadata :: Generic SSHPublicKeyMetadata _
instance showSSHPublicKeyMetadata :: Show SSHPublicKeyMetadata where show = genericShow
instance decodeSSHPublicKeyMetadata :: Decode SSHPublicKeyMetadata where decode = genericDecode options
instance encodeSSHPublicKeyMetadata :: Encode SSHPublicKeyMetadata where encode = genericEncode options

-- | Constructs SSHPublicKeyMetadata from required parameters
newSSHPublicKeyMetadata :: PublicKeyIdType' -> StatusType' -> DateType' -> UserNameType' -> SSHPublicKeyMetadata
newSSHPublicKeyMetadata _SSHPublicKeyId _Status _UploadDate _UserName = SSHPublicKeyMetadata { "SSHPublicKeyId": _SSHPublicKeyId, "Status": _Status, "UploadDate": _UploadDate, "UserName": _UserName }

-- | Constructs SSHPublicKeyMetadata's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSSHPublicKeyMetadata' :: PublicKeyIdType' -> StatusType' -> DateType' -> UserNameType' -> ( { "UserName" :: (UserNameType') , "SSHPublicKeyId" :: (PublicKeyIdType') , "Status" :: (StatusType') , "UploadDate" :: (DateType') } -> {"UserName" :: (UserNameType') , "SSHPublicKeyId" :: (PublicKeyIdType') , "Status" :: (StatusType') , "UploadDate" :: (DateType') } ) -> SSHPublicKeyMetadata
newSSHPublicKeyMetadata' _SSHPublicKeyId _Status _UploadDate _UserName customize = (SSHPublicKeyMetadata <<< customize) { "SSHPublicKeyId": _SSHPublicKeyId, "Status": _Status, "UploadDate": _UploadDate, "UserName": _UserName }



-- | <p>Contains information about a server certificate.</p> <p> This data type is used as a response element in the <a>GetServerCertificate</a> action. </p>
newtype ServerCertificate = ServerCertificate 
  { "ServerCertificateMetadata" :: (ServerCertificateMetadata)
  , "CertificateBody" :: (CertificateBodyType')
  , "CertificateChain" :: Maybe (CertificateChainType')
  }
derive instance newtypeServerCertificate :: Newtype ServerCertificate _
derive instance repGenericServerCertificate :: Generic ServerCertificate _
instance showServerCertificate :: Show ServerCertificate where show = genericShow
instance decodeServerCertificate :: Decode ServerCertificate where decode = genericDecode options
instance encodeServerCertificate :: Encode ServerCertificate where encode = genericEncode options

-- | Constructs ServerCertificate from required parameters
newServerCertificate :: CertificateBodyType' -> ServerCertificateMetadata -> ServerCertificate
newServerCertificate _CertificateBody _ServerCertificateMetadata = ServerCertificate { "CertificateBody": _CertificateBody, "ServerCertificateMetadata": _ServerCertificateMetadata, "CertificateChain": Nothing }

-- | Constructs ServerCertificate's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServerCertificate' :: CertificateBodyType' -> ServerCertificateMetadata -> ( { "ServerCertificateMetadata" :: (ServerCertificateMetadata) , "CertificateBody" :: (CertificateBodyType') , "CertificateChain" :: Maybe (CertificateChainType') } -> {"ServerCertificateMetadata" :: (ServerCertificateMetadata) , "CertificateBody" :: (CertificateBodyType') , "CertificateChain" :: Maybe (CertificateChainType') } ) -> ServerCertificate
newServerCertificate' _CertificateBody _ServerCertificateMetadata customize = (ServerCertificate <<< customize) { "CertificateBody": _CertificateBody, "ServerCertificateMetadata": _ServerCertificateMetadata, "CertificateChain": Nothing }



-- | <p>Contains information about a server certificate without its certificate body, certificate chain, and private key.</p> <p> This data type is used as a response element in the <a>UploadServerCertificate</a> and <a>ListServerCertificates</a> actions. </p>
newtype ServerCertificateMetadata = ServerCertificateMetadata 
  { "Path" :: (PathType')
  , "ServerCertificateName" :: (ServerCertificateNameType')
  , "ServerCertificateId" :: (IdType')
  , "Arn" :: (ArnType')
  , "UploadDate" :: Maybe (DateType')
  , "Expiration" :: Maybe (DateType')
  }
derive instance newtypeServerCertificateMetadata :: Newtype ServerCertificateMetadata _
derive instance repGenericServerCertificateMetadata :: Generic ServerCertificateMetadata _
instance showServerCertificateMetadata :: Show ServerCertificateMetadata where show = genericShow
instance decodeServerCertificateMetadata :: Decode ServerCertificateMetadata where decode = genericDecode options
instance encodeServerCertificateMetadata :: Encode ServerCertificateMetadata where encode = genericEncode options

-- | Constructs ServerCertificateMetadata from required parameters
newServerCertificateMetadata :: ArnType' -> PathType' -> IdType' -> ServerCertificateNameType' -> ServerCertificateMetadata
newServerCertificateMetadata _Arn _Path _ServerCertificateId _ServerCertificateName = ServerCertificateMetadata { "Arn": _Arn, "Path": _Path, "ServerCertificateId": _ServerCertificateId, "ServerCertificateName": _ServerCertificateName, "Expiration": Nothing, "UploadDate": Nothing }

-- | Constructs ServerCertificateMetadata's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServerCertificateMetadata' :: ArnType' -> PathType' -> IdType' -> ServerCertificateNameType' -> ( { "Path" :: (PathType') , "ServerCertificateName" :: (ServerCertificateNameType') , "ServerCertificateId" :: (IdType') , "Arn" :: (ArnType') , "UploadDate" :: Maybe (DateType') , "Expiration" :: Maybe (DateType') } -> {"Path" :: (PathType') , "ServerCertificateName" :: (ServerCertificateNameType') , "ServerCertificateId" :: (IdType') , "Arn" :: (ArnType') , "UploadDate" :: Maybe (DateType') , "Expiration" :: Maybe (DateType') } ) -> ServerCertificateMetadata
newServerCertificateMetadata' _Arn _Path _ServerCertificateId _ServerCertificateName customize = (ServerCertificateMetadata <<< customize) { "Arn": _Arn, "Path": _Path, "ServerCertificateId": _ServerCertificateId, "ServerCertificateName": _ServerCertificateName, "Expiration": Nothing, "UploadDate": Nothing }



-- | <p>The request processing has failed because of an unknown error, exception or failure.</p>
newtype ServiceFailureException = ServiceFailureException 
  { "message" :: Maybe (ServiceFailureExceptionMessage')
  }
derive instance newtypeServiceFailureException :: Newtype ServiceFailureException _
derive instance repGenericServiceFailureException :: Generic ServiceFailureException _
instance showServiceFailureException :: Show ServiceFailureException where show = genericShow
instance decodeServiceFailureException :: Decode ServiceFailureException where decode = genericDecode options
instance encodeServiceFailureException :: Encode ServiceFailureException where encode = genericEncode options

-- | Constructs ServiceFailureException from required parameters
newServiceFailureException :: ServiceFailureException
newServiceFailureException  = ServiceFailureException { "message": Nothing }

-- | Constructs ServiceFailureException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServiceFailureException' :: ( { "message" :: Maybe (ServiceFailureExceptionMessage') } -> {"message" :: Maybe (ServiceFailureExceptionMessage') } ) -> ServiceFailureException
newServiceFailureException'  customize = (ServiceFailureException <<< customize) { "message": Nothing }



-- | <p>The specified service does not support service-specific credentials.</p>
newtype ServiceNotSupportedException = ServiceNotSupportedException 
  { "message" :: Maybe (ServiceNotSupportedMessage')
  }
derive instance newtypeServiceNotSupportedException :: Newtype ServiceNotSupportedException _
derive instance repGenericServiceNotSupportedException :: Generic ServiceNotSupportedException _
instance showServiceNotSupportedException :: Show ServiceNotSupportedException where show = genericShow
instance decodeServiceNotSupportedException :: Decode ServiceNotSupportedException where decode = genericDecode options
instance encodeServiceNotSupportedException :: Encode ServiceNotSupportedException where encode = genericEncode options

-- | Constructs ServiceNotSupportedException from required parameters
newServiceNotSupportedException :: ServiceNotSupportedException
newServiceNotSupportedException  = ServiceNotSupportedException { "message": Nothing }

-- | Constructs ServiceNotSupportedException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServiceNotSupportedException' :: ( { "message" :: Maybe (ServiceNotSupportedMessage') } -> {"message" :: Maybe (ServiceNotSupportedMessage') } ) -> ServiceNotSupportedException
newServiceNotSupportedException'  customize = (ServiceNotSupportedException <<< customize) { "message": Nothing }



-- | <p>Contains the details of a service specific credential.</p>
newtype ServiceSpecificCredential = ServiceSpecificCredential 
  { "CreateDate" :: (DateType')
  , "ServiceName" :: (ServiceName')
  , "ServiceUserName" :: (ServiceUserName')
  , "ServicePassword" :: (ServicePassword')
  , "ServiceSpecificCredentialId" :: (ServiceSpecificCredentialId')
  , "UserName" :: (UserNameType')
  , "Status" :: (StatusType')
  }
derive instance newtypeServiceSpecificCredential :: Newtype ServiceSpecificCredential _
derive instance repGenericServiceSpecificCredential :: Generic ServiceSpecificCredential _
instance showServiceSpecificCredential :: Show ServiceSpecificCredential where show = genericShow
instance decodeServiceSpecificCredential :: Decode ServiceSpecificCredential where decode = genericDecode options
instance encodeServiceSpecificCredential :: Encode ServiceSpecificCredential where encode = genericEncode options

-- | Constructs ServiceSpecificCredential from required parameters
newServiceSpecificCredential :: DateType' -> ServiceName' -> ServicePassword' -> ServiceSpecificCredentialId' -> ServiceUserName' -> StatusType' -> UserNameType' -> ServiceSpecificCredential
newServiceSpecificCredential _CreateDate _ServiceName _ServicePassword _ServiceSpecificCredentialId _ServiceUserName _Status _UserName = ServiceSpecificCredential { "CreateDate": _CreateDate, "ServiceName": _ServiceName, "ServicePassword": _ServicePassword, "ServiceSpecificCredentialId": _ServiceSpecificCredentialId, "ServiceUserName": _ServiceUserName, "Status": _Status, "UserName": _UserName }

-- | Constructs ServiceSpecificCredential's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServiceSpecificCredential' :: DateType' -> ServiceName' -> ServicePassword' -> ServiceSpecificCredentialId' -> ServiceUserName' -> StatusType' -> UserNameType' -> ( { "CreateDate" :: (DateType') , "ServiceName" :: (ServiceName') , "ServiceUserName" :: (ServiceUserName') , "ServicePassword" :: (ServicePassword') , "ServiceSpecificCredentialId" :: (ServiceSpecificCredentialId') , "UserName" :: (UserNameType') , "Status" :: (StatusType') } -> {"CreateDate" :: (DateType') , "ServiceName" :: (ServiceName') , "ServiceUserName" :: (ServiceUserName') , "ServicePassword" :: (ServicePassword') , "ServiceSpecificCredentialId" :: (ServiceSpecificCredentialId') , "UserName" :: (UserNameType') , "Status" :: (StatusType') } ) -> ServiceSpecificCredential
newServiceSpecificCredential' _CreateDate _ServiceName _ServicePassword _ServiceSpecificCredentialId _ServiceUserName _Status _UserName customize = (ServiceSpecificCredential <<< customize) { "CreateDate": _CreateDate, "ServiceName": _ServiceName, "ServicePassword": _ServicePassword, "ServiceSpecificCredentialId": _ServiceSpecificCredentialId, "ServiceUserName": _ServiceUserName, "Status": _Status, "UserName": _UserName }



-- | <p>Contains additional details about a service-specific credential.</p>
newtype ServiceSpecificCredentialMetadata = ServiceSpecificCredentialMetadata 
  { "UserName" :: (UserNameType')
  , "Status" :: (StatusType')
  , "ServiceUserName" :: (ServiceUserName')
  , "CreateDate" :: (DateType')
  , "ServiceSpecificCredentialId" :: (ServiceSpecificCredentialId')
  , "ServiceName" :: (ServiceName')
  }
derive instance newtypeServiceSpecificCredentialMetadata :: Newtype ServiceSpecificCredentialMetadata _
derive instance repGenericServiceSpecificCredentialMetadata :: Generic ServiceSpecificCredentialMetadata _
instance showServiceSpecificCredentialMetadata :: Show ServiceSpecificCredentialMetadata where show = genericShow
instance decodeServiceSpecificCredentialMetadata :: Decode ServiceSpecificCredentialMetadata where decode = genericDecode options
instance encodeServiceSpecificCredentialMetadata :: Encode ServiceSpecificCredentialMetadata where encode = genericEncode options

-- | Constructs ServiceSpecificCredentialMetadata from required parameters
newServiceSpecificCredentialMetadata :: DateType' -> ServiceName' -> ServiceSpecificCredentialId' -> ServiceUserName' -> StatusType' -> UserNameType' -> ServiceSpecificCredentialMetadata
newServiceSpecificCredentialMetadata _CreateDate _ServiceName _ServiceSpecificCredentialId _ServiceUserName _Status _UserName = ServiceSpecificCredentialMetadata { "CreateDate": _CreateDate, "ServiceName": _ServiceName, "ServiceSpecificCredentialId": _ServiceSpecificCredentialId, "ServiceUserName": _ServiceUserName, "Status": _Status, "UserName": _UserName }

-- | Constructs ServiceSpecificCredentialMetadata's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServiceSpecificCredentialMetadata' :: DateType' -> ServiceName' -> ServiceSpecificCredentialId' -> ServiceUserName' -> StatusType' -> UserNameType' -> ( { "UserName" :: (UserNameType') , "Status" :: (StatusType') , "ServiceUserName" :: (ServiceUserName') , "CreateDate" :: (DateType') , "ServiceSpecificCredentialId" :: (ServiceSpecificCredentialId') , "ServiceName" :: (ServiceName') } -> {"UserName" :: (UserNameType') , "Status" :: (StatusType') , "ServiceUserName" :: (ServiceUserName') , "CreateDate" :: (DateType') , "ServiceSpecificCredentialId" :: (ServiceSpecificCredentialId') , "ServiceName" :: (ServiceName') } ) -> ServiceSpecificCredentialMetadata
newServiceSpecificCredentialMetadata' _CreateDate _ServiceName _ServiceSpecificCredentialId _ServiceUserName _Status _UserName customize = (ServiceSpecificCredentialMetadata <<< customize) { "CreateDate": _CreateDate, "ServiceName": _ServiceName, "ServiceSpecificCredentialId": _ServiceSpecificCredentialId, "ServiceUserName": _ServiceUserName, "Status": _Status, "UserName": _UserName }



newtype ServiceSpecificCredentialsListType = ServiceSpecificCredentialsListType (Array ServiceSpecificCredentialMetadata)
derive instance newtypeServiceSpecificCredentialsListType :: Newtype ServiceSpecificCredentialsListType _
derive instance repGenericServiceSpecificCredentialsListType :: Generic ServiceSpecificCredentialsListType _
instance showServiceSpecificCredentialsListType :: Show ServiceSpecificCredentialsListType where show = genericShow
instance decodeServiceSpecificCredentialsListType :: Decode ServiceSpecificCredentialsListType where decode = genericDecode options
instance encodeServiceSpecificCredentialsListType :: Encode ServiceSpecificCredentialsListType where encode = genericEncode options



newtype SetDefaultPolicyVersionRequest = SetDefaultPolicyVersionRequest 
  { "PolicyArn" :: (ArnType')
  , "VersionId" :: (PolicyVersionIdType')
  }
derive instance newtypeSetDefaultPolicyVersionRequest :: Newtype SetDefaultPolicyVersionRequest _
derive instance repGenericSetDefaultPolicyVersionRequest :: Generic SetDefaultPolicyVersionRequest _
instance showSetDefaultPolicyVersionRequest :: Show SetDefaultPolicyVersionRequest where show = genericShow
instance decodeSetDefaultPolicyVersionRequest :: Decode SetDefaultPolicyVersionRequest where decode = genericDecode options
instance encodeSetDefaultPolicyVersionRequest :: Encode SetDefaultPolicyVersionRequest where encode = genericEncode options

-- | Constructs SetDefaultPolicyVersionRequest from required parameters
newSetDefaultPolicyVersionRequest :: ArnType' -> PolicyVersionIdType' -> SetDefaultPolicyVersionRequest
newSetDefaultPolicyVersionRequest _PolicyArn _VersionId = SetDefaultPolicyVersionRequest { "PolicyArn": _PolicyArn, "VersionId": _VersionId }

-- | Constructs SetDefaultPolicyVersionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetDefaultPolicyVersionRequest' :: ArnType' -> PolicyVersionIdType' -> ( { "PolicyArn" :: (ArnType') , "VersionId" :: (PolicyVersionIdType') } -> {"PolicyArn" :: (ArnType') , "VersionId" :: (PolicyVersionIdType') } ) -> SetDefaultPolicyVersionRequest
newSetDefaultPolicyVersionRequest' _PolicyArn _VersionId customize = (SetDefaultPolicyVersionRequest <<< customize) { "PolicyArn": _PolicyArn, "VersionId": _VersionId }



-- | <p>Contains information about an X.509 signing certificate.</p> <p>This data type is used as a response element in the <a>UploadSigningCertificate</a> and <a>ListSigningCertificates</a> actions. </p>
newtype SigningCertificate = SigningCertificate 
  { "UserName" :: (UserNameType')
  , "CertificateId" :: (CertificateIdType')
  , "CertificateBody" :: (CertificateBodyType')
  , "Status" :: (StatusType')
  , "UploadDate" :: Maybe (DateType')
  }
derive instance newtypeSigningCertificate :: Newtype SigningCertificate _
derive instance repGenericSigningCertificate :: Generic SigningCertificate _
instance showSigningCertificate :: Show SigningCertificate where show = genericShow
instance decodeSigningCertificate :: Decode SigningCertificate where decode = genericDecode options
instance encodeSigningCertificate :: Encode SigningCertificate where encode = genericEncode options

-- | Constructs SigningCertificate from required parameters
newSigningCertificate :: CertificateBodyType' -> CertificateIdType' -> StatusType' -> UserNameType' -> SigningCertificate
newSigningCertificate _CertificateBody _CertificateId _Status _UserName = SigningCertificate { "CertificateBody": _CertificateBody, "CertificateId": _CertificateId, "Status": _Status, "UserName": _UserName, "UploadDate": Nothing }

-- | Constructs SigningCertificate's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSigningCertificate' :: CertificateBodyType' -> CertificateIdType' -> StatusType' -> UserNameType' -> ( { "UserName" :: (UserNameType') , "CertificateId" :: (CertificateIdType') , "CertificateBody" :: (CertificateBodyType') , "Status" :: (StatusType') , "UploadDate" :: Maybe (DateType') } -> {"UserName" :: (UserNameType') , "CertificateId" :: (CertificateIdType') , "CertificateBody" :: (CertificateBodyType') , "Status" :: (StatusType') , "UploadDate" :: Maybe (DateType') } ) -> SigningCertificate
newSigningCertificate' _CertificateBody _CertificateId _Status _UserName customize = (SigningCertificate <<< customize) { "CertificateBody": _CertificateBody, "CertificateId": _CertificateId, "Status": _Status, "UserName": _UserName, "UploadDate": Nothing }



newtype SimulateCustomPolicyRequest = SimulateCustomPolicyRequest 
  { "PolicyInputList" :: (SimulationPolicyListType)
  , "ActionNames" :: (ActionNameListType)
  , "ResourceArns" :: Maybe (ResourceNameListType)
  , "ResourcePolicy" :: Maybe (PolicyDocumentType')
  , "ResourceOwner" :: Maybe (ResourceNameType)
  , "CallerArn" :: Maybe (ResourceNameType)
  , "ContextEntries" :: Maybe (ContextEntryListType)
  , "ResourceHandlingOption" :: Maybe (ResourceHandlingOptionType)
  , "MaxItems" :: Maybe (MaxItemsType')
  , "Marker" :: Maybe (MarkerType')
  }
derive instance newtypeSimulateCustomPolicyRequest :: Newtype SimulateCustomPolicyRequest _
derive instance repGenericSimulateCustomPolicyRequest :: Generic SimulateCustomPolicyRequest _
instance showSimulateCustomPolicyRequest :: Show SimulateCustomPolicyRequest where show = genericShow
instance decodeSimulateCustomPolicyRequest :: Decode SimulateCustomPolicyRequest where decode = genericDecode options
instance encodeSimulateCustomPolicyRequest :: Encode SimulateCustomPolicyRequest where encode = genericEncode options

-- | Constructs SimulateCustomPolicyRequest from required parameters
newSimulateCustomPolicyRequest :: ActionNameListType -> SimulationPolicyListType -> SimulateCustomPolicyRequest
newSimulateCustomPolicyRequest _ActionNames _PolicyInputList = SimulateCustomPolicyRequest { "ActionNames": _ActionNames, "PolicyInputList": _PolicyInputList, "CallerArn": Nothing, "ContextEntries": Nothing, "Marker": Nothing, "MaxItems": Nothing, "ResourceArns": Nothing, "ResourceHandlingOption": Nothing, "ResourceOwner": Nothing, "ResourcePolicy": Nothing }

-- | Constructs SimulateCustomPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSimulateCustomPolicyRequest' :: ActionNameListType -> SimulationPolicyListType -> ( { "PolicyInputList" :: (SimulationPolicyListType) , "ActionNames" :: (ActionNameListType) , "ResourceArns" :: Maybe (ResourceNameListType) , "ResourcePolicy" :: Maybe (PolicyDocumentType') , "ResourceOwner" :: Maybe (ResourceNameType) , "CallerArn" :: Maybe (ResourceNameType) , "ContextEntries" :: Maybe (ContextEntryListType) , "ResourceHandlingOption" :: Maybe (ResourceHandlingOptionType) , "MaxItems" :: Maybe (MaxItemsType') , "Marker" :: Maybe (MarkerType') } -> {"PolicyInputList" :: (SimulationPolicyListType) , "ActionNames" :: (ActionNameListType) , "ResourceArns" :: Maybe (ResourceNameListType) , "ResourcePolicy" :: Maybe (PolicyDocumentType') , "ResourceOwner" :: Maybe (ResourceNameType) , "CallerArn" :: Maybe (ResourceNameType) , "ContextEntries" :: Maybe (ContextEntryListType) , "ResourceHandlingOption" :: Maybe (ResourceHandlingOptionType) , "MaxItems" :: Maybe (MaxItemsType') , "Marker" :: Maybe (MarkerType') } ) -> SimulateCustomPolicyRequest
newSimulateCustomPolicyRequest' _ActionNames _PolicyInputList customize = (SimulateCustomPolicyRequest <<< customize) { "ActionNames": _ActionNames, "PolicyInputList": _PolicyInputList, "CallerArn": Nothing, "ContextEntries": Nothing, "Marker": Nothing, "MaxItems": Nothing, "ResourceArns": Nothing, "ResourceHandlingOption": Nothing, "ResourceOwner": Nothing, "ResourcePolicy": Nothing }



-- | <p>Contains the response to a successful <a>SimulatePrincipalPolicy</a> or <a>SimulateCustomPolicy</a> request.</p>
newtype SimulatePolicyResponse = SimulatePolicyResponse 
  { "EvaluationResults" :: Maybe (EvaluationResultsListType)
  , "IsTruncated" :: Maybe (BooleanType')
  , "Marker" :: Maybe (MarkerType')
  }
derive instance newtypeSimulatePolicyResponse :: Newtype SimulatePolicyResponse _
derive instance repGenericSimulatePolicyResponse :: Generic SimulatePolicyResponse _
instance showSimulatePolicyResponse :: Show SimulatePolicyResponse where show = genericShow
instance decodeSimulatePolicyResponse :: Decode SimulatePolicyResponse where decode = genericDecode options
instance encodeSimulatePolicyResponse :: Encode SimulatePolicyResponse where encode = genericEncode options

-- | Constructs SimulatePolicyResponse from required parameters
newSimulatePolicyResponse :: SimulatePolicyResponse
newSimulatePolicyResponse  = SimulatePolicyResponse { "EvaluationResults": Nothing, "IsTruncated": Nothing, "Marker": Nothing }

-- | Constructs SimulatePolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSimulatePolicyResponse' :: ( { "EvaluationResults" :: Maybe (EvaluationResultsListType) , "IsTruncated" :: Maybe (BooleanType') , "Marker" :: Maybe (MarkerType') } -> {"EvaluationResults" :: Maybe (EvaluationResultsListType) , "IsTruncated" :: Maybe (BooleanType') , "Marker" :: Maybe (MarkerType') } ) -> SimulatePolicyResponse
newSimulatePolicyResponse'  customize = (SimulatePolicyResponse <<< customize) { "EvaluationResults": Nothing, "IsTruncated": Nothing, "Marker": Nothing }



newtype SimulatePrincipalPolicyRequest = SimulatePrincipalPolicyRequest 
  { "PolicySourceArn" :: (ArnType')
  , "PolicyInputList" :: Maybe (SimulationPolicyListType)
  , "ActionNames" :: (ActionNameListType)
  , "ResourceArns" :: Maybe (ResourceNameListType)
  , "ResourcePolicy" :: Maybe (PolicyDocumentType')
  , "ResourceOwner" :: Maybe (ResourceNameType)
  , "CallerArn" :: Maybe (ResourceNameType)
  , "ContextEntries" :: Maybe (ContextEntryListType)
  , "ResourceHandlingOption" :: Maybe (ResourceHandlingOptionType)
  , "MaxItems" :: Maybe (MaxItemsType')
  , "Marker" :: Maybe (MarkerType')
  }
derive instance newtypeSimulatePrincipalPolicyRequest :: Newtype SimulatePrincipalPolicyRequest _
derive instance repGenericSimulatePrincipalPolicyRequest :: Generic SimulatePrincipalPolicyRequest _
instance showSimulatePrincipalPolicyRequest :: Show SimulatePrincipalPolicyRequest where show = genericShow
instance decodeSimulatePrincipalPolicyRequest :: Decode SimulatePrincipalPolicyRequest where decode = genericDecode options
instance encodeSimulatePrincipalPolicyRequest :: Encode SimulatePrincipalPolicyRequest where encode = genericEncode options

-- | Constructs SimulatePrincipalPolicyRequest from required parameters
newSimulatePrincipalPolicyRequest :: ActionNameListType -> ArnType' -> SimulatePrincipalPolicyRequest
newSimulatePrincipalPolicyRequest _ActionNames _PolicySourceArn = SimulatePrincipalPolicyRequest { "ActionNames": _ActionNames, "PolicySourceArn": _PolicySourceArn, "CallerArn": Nothing, "ContextEntries": Nothing, "Marker": Nothing, "MaxItems": Nothing, "PolicyInputList": Nothing, "ResourceArns": Nothing, "ResourceHandlingOption": Nothing, "ResourceOwner": Nothing, "ResourcePolicy": Nothing }

-- | Constructs SimulatePrincipalPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSimulatePrincipalPolicyRequest' :: ActionNameListType -> ArnType' -> ( { "PolicySourceArn" :: (ArnType') , "PolicyInputList" :: Maybe (SimulationPolicyListType) , "ActionNames" :: (ActionNameListType) , "ResourceArns" :: Maybe (ResourceNameListType) , "ResourcePolicy" :: Maybe (PolicyDocumentType') , "ResourceOwner" :: Maybe (ResourceNameType) , "CallerArn" :: Maybe (ResourceNameType) , "ContextEntries" :: Maybe (ContextEntryListType) , "ResourceHandlingOption" :: Maybe (ResourceHandlingOptionType) , "MaxItems" :: Maybe (MaxItemsType') , "Marker" :: Maybe (MarkerType') } -> {"PolicySourceArn" :: (ArnType') , "PolicyInputList" :: Maybe (SimulationPolicyListType) , "ActionNames" :: (ActionNameListType) , "ResourceArns" :: Maybe (ResourceNameListType) , "ResourcePolicy" :: Maybe (PolicyDocumentType') , "ResourceOwner" :: Maybe (ResourceNameType) , "CallerArn" :: Maybe (ResourceNameType) , "ContextEntries" :: Maybe (ContextEntryListType) , "ResourceHandlingOption" :: Maybe (ResourceHandlingOptionType) , "MaxItems" :: Maybe (MaxItemsType') , "Marker" :: Maybe (MarkerType') } ) -> SimulatePrincipalPolicyRequest
newSimulatePrincipalPolicyRequest' _ActionNames _PolicySourceArn customize = (SimulatePrincipalPolicyRequest <<< customize) { "ActionNames": _ActionNames, "PolicySourceArn": _PolicySourceArn, "CallerArn": Nothing, "ContextEntries": Nothing, "Marker": Nothing, "MaxItems": Nothing, "PolicyInputList": Nothing, "ResourceArns": Nothing, "ResourceHandlingOption": Nothing, "ResourceOwner": Nothing, "ResourcePolicy": Nothing }



newtype SimulationPolicyListType = SimulationPolicyListType (Array PolicyDocumentType')
derive instance newtypeSimulationPolicyListType :: Newtype SimulationPolicyListType _
derive instance repGenericSimulationPolicyListType :: Generic SimulationPolicyListType _
instance showSimulationPolicyListType :: Show SimulationPolicyListType where show = genericShow
instance decodeSimulationPolicyListType :: Decode SimulationPolicyListType where decode = genericDecode options
instance encodeSimulationPolicyListType :: Encode SimulationPolicyListType where encode = genericEncode options



-- | <p>Contains a reference to a <code>Statement</code> element in a policy document that determines the result of the simulation.</p> <p>This data type is used by the <code>MatchedStatements</code> member of the <code> <a>EvaluationResult</a> </code> type.</p>
newtype Statement = Statement 
  { "SourcePolicyId" :: Maybe (PolicyIdentifierType)
  , "SourcePolicyType" :: Maybe (PolicySourceType)
  , "StartPosition" :: Maybe (Position)
  , "EndPosition" :: Maybe (Position)
  }
derive instance newtypeStatement :: Newtype Statement _
derive instance repGenericStatement :: Generic Statement _
instance showStatement :: Show Statement where show = genericShow
instance decodeStatement :: Decode Statement where decode = genericDecode options
instance encodeStatement :: Encode Statement where encode = genericEncode options

-- | Constructs Statement from required parameters
newStatement :: Statement
newStatement  = Statement { "EndPosition": Nothing, "SourcePolicyId": Nothing, "SourcePolicyType": Nothing, "StartPosition": Nothing }

-- | Constructs Statement's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStatement' :: ( { "SourcePolicyId" :: Maybe (PolicyIdentifierType) , "SourcePolicyType" :: Maybe (PolicySourceType) , "StartPosition" :: Maybe (Position) , "EndPosition" :: Maybe (Position) } -> {"SourcePolicyId" :: Maybe (PolicyIdentifierType) , "SourcePolicyType" :: Maybe (PolicySourceType) , "StartPosition" :: Maybe (Position) , "EndPosition" :: Maybe (Position) } ) -> Statement
newStatement'  customize = (Statement <<< customize) { "EndPosition": Nothing, "SourcePolicyId": Nothing, "SourcePolicyType": Nothing, "StartPosition": Nothing }



newtype StatementListType = StatementListType (Array Statement)
derive instance newtypeStatementListType :: Newtype StatementListType _
derive instance repGenericStatementListType :: Generic StatementListType _
instance showStatementListType :: Show StatementListType where show = genericShow
instance decodeStatementListType :: Decode StatementListType where decode = genericDecode options
instance encodeStatementListType :: Encode StatementListType where encode = genericEncode options



-- | <p>The request was rejected because only the service that depends on the service-linked role can modify or delete the role on your behalf. The error message includes the name of the service that depends on this service-linked role. You must request the change through that service.</p>
newtype UnmodifiableEntityException = UnmodifiableEntityException 
  { "message" :: Maybe (UnmodifiableEntityMessage')
  }
derive instance newtypeUnmodifiableEntityException :: Newtype UnmodifiableEntityException _
derive instance repGenericUnmodifiableEntityException :: Generic UnmodifiableEntityException _
instance showUnmodifiableEntityException :: Show UnmodifiableEntityException where show = genericShow
instance decodeUnmodifiableEntityException :: Decode UnmodifiableEntityException where decode = genericDecode options
instance encodeUnmodifiableEntityException :: Encode UnmodifiableEntityException where encode = genericEncode options

-- | Constructs UnmodifiableEntityException from required parameters
newUnmodifiableEntityException :: UnmodifiableEntityException
newUnmodifiableEntityException  = UnmodifiableEntityException { "message": Nothing }

-- | Constructs UnmodifiableEntityException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUnmodifiableEntityException' :: ( { "message" :: Maybe (UnmodifiableEntityMessage') } -> {"message" :: Maybe (UnmodifiableEntityMessage') } ) -> UnmodifiableEntityException
newUnmodifiableEntityException'  customize = (UnmodifiableEntityException <<< customize) { "message": Nothing }



-- | <p>The request was rejected because the public key encoding format is unsupported or unrecognized.</p>
newtype UnrecognizedPublicKeyEncodingException = UnrecognizedPublicKeyEncodingException 
  { "message" :: Maybe (UnrecognizedPublicKeyEncodingMessage')
  }
derive instance newtypeUnrecognizedPublicKeyEncodingException :: Newtype UnrecognizedPublicKeyEncodingException _
derive instance repGenericUnrecognizedPublicKeyEncodingException :: Generic UnrecognizedPublicKeyEncodingException _
instance showUnrecognizedPublicKeyEncodingException :: Show UnrecognizedPublicKeyEncodingException where show = genericShow
instance decodeUnrecognizedPublicKeyEncodingException :: Decode UnrecognizedPublicKeyEncodingException where decode = genericDecode options
instance encodeUnrecognizedPublicKeyEncodingException :: Encode UnrecognizedPublicKeyEncodingException where encode = genericEncode options

-- | Constructs UnrecognizedPublicKeyEncodingException from required parameters
newUnrecognizedPublicKeyEncodingException :: UnrecognizedPublicKeyEncodingException
newUnrecognizedPublicKeyEncodingException  = UnrecognizedPublicKeyEncodingException { "message": Nothing }

-- | Constructs UnrecognizedPublicKeyEncodingException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUnrecognizedPublicKeyEncodingException' :: ( { "message" :: Maybe (UnrecognizedPublicKeyEncodingMessage') } -> {"message" :: Maybe (UnrecognizedPublicKeyEncodingMessage') } ) -> UnrecognizedPublicKeyEncodingException
newUnrecognizedPublicKeyEncodingException'  customize = (UnrecognizedPublicKeyEncodingException <<< customize) { "message": Nothing }



newtype UpdateAccessKeyRequest = UpdateAccessKeyRequest 
  { "UserName" :: Maybe (ExistingUserNameType')
  , "AccessKeyId" :: (AccessKeyIdType')
  , "Status" :: (StatusType')
  }
derive instance newtypeUpdateAccessKeyRequest :: Newtype UpdateAccessKeyRequest _
derive instance repGenericUpdateAccessKeyRequest :: Generic UpdateAccessKeyRequest _
instance showUpdateAccessKeyRequest :: Show UpdateAccessKeyRequest where show = genericShow
instance decodeUpdateAccessKeyRequest :: Decode UpdateAccessKeyRequest where decode = genericDecode options
instance encodeUpdateAccessKeyRequest :: Encode UpdateAccessKeyRequest where encode = genericEncode options

-- | Constructs UpdateAccessKeyRequest from required parameters
newUpdateAccessKeyRequest :: AccessKeyIdType' -> StatusType' -> UpdateAccessKeyRequest
newUpdateAccessKeyRequest _AccessKeyId _Status = UpdateAccessKeyRequest { "AccessKeyId": _AccessKeyId, "Status": _Status, "UserName": Nothing }

-- | Constructs UpdateAccessKeyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateAccessKeyRequest' :: AccessKeyIdType' -> StatusType' -> ( { "UserName" :: Maybe (ExistingUserNameType') , "AccessKeyId" :: (AccessKeyIdType') , "Status" :: (StatusType') } -> {"UserName" :: Maybe (ExistingUserNameType') , "AccessKeyId" :: (AccessKeyIdType') , "Status" :: (StatusType') } ) -> UpdateAccessKeyRequest
newUpdateAccessKeyRequest' _AccessKeyId _Status customize = (UpdateAccessKeyRequest <<< customize) { "AccessKeyId": _AccessKeyId, "Status": _Status, "UserName": Nothing }



newtype UpdateAccountPasswordPolicyRequest = UpdateAccountPasswordPolicyRequest 
  { "MinimumPasswordLength" :: Maybe (MinimumPasswordLengthType')
  , "RequireSymbols" :: Maybe (BooleanType')
  , "RequireNumbers" :: Maybe (BooleanType')
  , "RequireUppercaseCharacters" :: Maybe (BooleanType')
  , "RequireLowercaseCharacters" :: Maybe (BooleanType')
  , "AllowUsersToChangePassword" :: Maybe (BooleanType')
  , "MaxPasswordAge" :: Maybe (MaxPasswordAgeType')
  , "PasswordReusePrevention" :: Maybe (PasswordReusePreventionType')
  , "HardExpiry" :: Maybe (BooleanObjectType')
  }
derive instance newtypeUpdateAccountPasswordPolicyRequest :: Newtype UpdateAccountPasswordPolicyRequest _
derive instance repGenericUpdateAccountPasswordPolicyRequest :: Generic UpdateAccountPasswordPolicyRequest _
instance showUpdateAccountPasswordPolicyRequest :: Show UpdateAccountPasswordPolicyRequest where show = genericShow
instance decodeUpdateAccountPasswordPolicyRequest :: Decode UpdateAccountPasswordPolicyRequest where decode = genericDecode options
instance encodeUpdateAccountPasswordPolicyRequest :: Encode UpdateAccountPasswordPolicyRequest where encode = genericEncode options

-- | Constructs UpdateAccountPasswordPolicyRequest from required parameters
newUpdateAccountPasswordPolicyRequest :: UpdateAccountPasswordPolicyRequest
newUpdateAccountPasswordPolicyRequest  = UpdateAccountPasswordPolicyRequest { "AllowUsersToChangePassword": Nothing, "HardExpiry": Nothing, "MaxPasswordAge": Nothing, "MinimumPasswordLength": Nothing, "PasswordReusePrevention": Nothing, "RequireLowercaseCharacters": Nothing, "RequireNumbers": Nothing, "RequireSymbols": Nothing, "RequireUppercaseCharacters": Nothing }

-- | Constructs UpdateAccountPasswordPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateAccountPasswordPolicyRequest' :: ( { "MinimumPasswordLength" :: Maybe (MinimumPasswordLengthType') , "RequireSymbols" :: Maybe (BooleanType') , "RequireNumbers" :: Maybe (BooleanType') , "RequireUppercaseCharacters" :: Maybe (BooleanType') , "RequireLowercaseCharacters" :: Maybe (BooleanType') , "AllowUsersToChangePassword" :: Maybe (BooleanType') , "MaxPasswordAge" :: Maybe (MaxPasswordAgeType') , "PasswordReusePrevention" :: Maybe (PasswordReusePreventionType') , "HardExpiry" :: Maybe (BooleanObjectType') } -> {"MinimumPasswordLength" :: Maybe (MinimumPasswordLengthType') , "RequireSymbols" :: Maybe (BooleanType') , "RequireNumbers" :: Maybe (BooleanType') , "RequireUppercaseCharacters" :: Maybe (BooleanType') , "RequireLowercaseCharacters" :: Maybe (BooleanType') , "AllowUsersToChangePassword" :: Maybe (BooleanType') , "MaxPasswordAge" :: Maybe (MaxPasswordAgeType') , "PasswordReusePrevention" :: Maybe (PasswordReusePreventionType') , "HardExpiry" :: Maybe (BooleanObjectType') } ) -> UpdateAccountPasswordPolicyRequest
newUpdateAccountPasswordPolicyRequest'  customize = (UpdateAccountPasswordPolicyRequest <<< customize) { "AllowUsersToChangePassword": Nothing, "HardExpiry": Nothing, "MaxPasswordAge": Nothing, "MinimumPasswordLength": Nothing, "PasswordReusePrevention": Nothing, "RequireLowercaseCharacters": Nothing, "RequireNumbers": Nothing, "RequireSymbols": Nothing, "RequireUppercaseCharacters": Nothing }



newtype UpdateAssumeRolePolicyRequest = UpdateAssumeRolePolicyRequest 
  { "RoleName" :: (RoleNameType')
  , "PolicyDocument" :: (PolicyDocumentType')
  }
derive instance newtypeUpdateAssumeRolePolicyRequest :: Newtype UpdateAssumeRolePolicyRequest _
derive instance repGenericUpdateAssumeRolePolicyRequest :: Generic UpdateAssumeRolePolicyRequest _
instance showUpdateAssumeRolePolicyRequest :: Show UpdateAssumeRolePolicyRequest where show = genericShow
instance decodeUpdateAssumeRolePolicyRequest :: Decode UpdateAssumeRolePolicyRequest where decode = genericDecode options
instance encodeUpdateAssumeRolePolicyRequest :: Encode UpdateAssumeRolePolicyRequest where encode = genericEncode options

-- | Constructs UpdateAssumeRolePolicyRequest from required parameters
newUpdateAssumeRolePolicyRequest :: PolicyDocumentType' -> RoleNameType' -> UpdateAssumeRolePolicyRequest
newUpdateAssumeRolePolicyRequest _PolicyDocument _RoleName = UpdateAssumeRolePolicyRequest { "PolicyDocument": _PolicyDocument, "RoleName": _RoleName }

-- | Constructs UpdateAssumeRolePolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateAssumeRolePolicyRequest' :: PolicyDocumentType' -> RoleNameType' -> ( { "RoleName" :: (RoleNameType') , "PolicyDocument" :: (PolicyDocumentType') } -> {"RoleName" :: (RoleNameType') , "PolicyDocument" :: (PolicyDocumentType') } ) -> UpdateAssumeRolePolicyRequest
newUpdateAssumeRolePolicyRequest' _PolicyDocument _RoleName customize = (UpdateAssumeRolePolicyRequest <<< customize) { "PolicyDocument": _PolicyDocument, "RoleName": _RoleName }



newtype UpdateGroupRequest = UpdateGroupRequest 
  { "GroupName" :: (GroupNameType')
  , "NewPath" :: Maybe (PathType')
  , "NewGroupName" :: Maybe (GroupNameType')
  }
derive instance newtypeUpdateGroupRequest :: Newtype UpdateGroupRequest _
derive instance repGenericUpdateGroupRequest :: Generic UpdateGroupRequest _
instance showUpdateGroupRequest :: Show UpdateGroupRequest where show = genericShow
instance decodeUpdateGroupRequest :: Decode UpdateGroupRequest where decode = genericDecode options
instance encodeUpdateGroupRequest :: Encode UpdateGroupRequest where encode = genericEncode options

-- | Constructs UpdateGroupRequest from required parameters
newUpdateGroupRequest :: GroupNameType' -> UpdateGroupRequest
newUpdateGroupRequest _GroupName = UpdateGroupRequest { "GroupName": _GroupName, "NewGroupName": Nothing, "NewPath": Nothing }

-- | Constructs UpdateGroupRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateGroupRequest' :: GroupNameType' -> ( { "GroupName" :: (GroupNameType') , "NewPath" :: Maybe (PathType') , "NewGroupName" :: Maybe (GroupNameType') } -> {"GroupName" :: (GroupNameType') , "NewPath" :: Maybe (PathType') , "NewGroupName" :: Maybe (GroupNameType') } ) -> UpdateGroupRequest
newUpdateGroupRequest' _GroupName customize = (UpdateGroupRequest <<< customize) { "GroupName": _GroupName, "NewGroupName": Nothing, "NewPath": Nothing }



newtype UpdateLoginProfileRequest = UpdateLoginProfileRequest 
  { "UserName" :: (UserNameType')
  , "Password" :: Maybe (PasswordType')
  , "PasswordResetRequired" :: Maybe (BooleanObjectType')
  }
derive instance newtypeUpdateLoginProfileRequest :: Newtype UpdateLoginProfileRequest _
derive instance repGenericUpdateLoginProfileRequest :: Generic UpdateLoginProfileRequest _
instance showUpdateLoginProfileRequest :: Show UpdateLoginProfileRequest where show = genericShow
instance decodeUpdateLoginProfileRequest :: Decode UpdateLoginProfileRequest where decode = genericDecode options
instance encodeUpdateLoginProfileRequest :: Encode UpdateLoginProfileRequest where encode = genericEncode options

-- | Constructs UpdateLoginProfileRequest from required parameters
newUpdateLoginProfileRequest :: UserNameType' -> UpdateLoginProfileRequest
newUpdateLoginProfileRequest _UserName = UpdateLoginProfileRequest { "UserName": _UserName, "Password": Nothing, "PasswordResetRequired": Nothing }

-- | Constructs UpdateLoginProfileRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateLoginProfileRequest' :: UserNameType' -> ( { "UserName" :: (UserNameType') , "Password" :: Maybe (PasswordType') , "PasswordResetRequired" :: Maybe (BooleanObjectType') } -> {"UserName" :: (UserNameType') , "Password" :: Maybe (PasswordType') , "PasswordResetRequired" :: Maybe (BooleanObjectType') } ) -> UpdateLoginProfileRequest
newUpdateLoginProfileRequest' _UserName customize = (UpdateLoginProfileRequest <<< customize) { "UserName": _UserName, "Password": Nothing, "PasswordResetRequired": Nothing }



newtype UpdateOpenIDConnectProviderThumbprintRequest = UpdateOpenIDConnectProviderThumbprintRequest 
  { "OpenIDConnectProviderArn" :: (ArnType')
  , "ThumbprintList" :: (ThumbprintListType')
  }
derive instance newtypeUpdateOpenIDConnectProviderThumbprintRequest :: Newtype UpdateOpenIDConnectProviderThumbprintRequest _
derive instance repGenericUpdateOpenIDConnectProviderThumbprintRequest :: Generic UpdateOpenIDConnectProviderThumbprintRequest _
instance showUpdateOpenIDConnectProviderThumbprintRequest :: Show UpdateOpenIDConnectProviderThumbprintRequest where show = genericShow
instance decodeUpdateOpenIDConnectProviderThumbprintRequest :: Decode UpdateOpenIDConnectProviderThumbprintRequest where decode = genericDecode options
instance encodeUpdateOpenIDConnectProviderThumbprintRequest :: Encode UpdateOpenIDConnectProviderThumbprintRequest where encode = genericEncode options

-- | Constructs UpdateOpenIDConnectProviderThumbprintRequest from required parameters
newUpdateOpenIDConnectProviderThumbprintRequest :: ArnType' -> ThumbprintListType' -> UpdateOpenIDConnectProviderThumbprintRequest
newUpdateOpenIDConnectProviderThumbprintRequest _OpenIDConnectProviderArn _ThumbprintList = UpdateOpenIDConnectProviderThumbprintRequest { "OpenIDConnectProviderArn": _OpenIDConnectProviderArn, "ThumbprintList": _ThumbprintList }

-- | Constructs UpdateOpenIDConnectProviderThumbprintRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateOpenIDConnectProviderThumbprintRequest' :: ArnType' -> ThumbprintListType' -> ( { "OpenIDConnectProviderArn" :: (ArnType') , "ThumbprintList" :: (ThumbprintListType') } -> {"OpenIDConnectProviderArn" :: (ArnType') , "ThumbprintList" :: (ThumbprintListType') } ) -> UpdateOpenIDConnectProviderThumbprintRequest
newUpdateOpenIDConnectProviderThumbprintRequest' _OpenIDConnectProviderArn _ThumbprintList customize = (UpdateOpenIDConnectProviderThumbprintRequest <<< customize) { "OpenIDConnectProviderArn": _OpenIDConnectProviderArn, "ThumbprintList": _ThumbprintList }



newtype UpdateRoleDescriptionRequest = UpdateRoleDescriptionRequest 
  { "RoleName" :: (RoleNameType')
  , "Description" :: (RoleDescriptionType')
  }
derive instance newtypeUpdateRoleDescriptionRequest :: Newtype UpdateRoleDescriptionRequest _
derive instance repGenericUpdateRoleDescriptionRequest :: Generic UpdateRoleDescriptionRequest _
instance showUpdateRoleDescriptionRequest :: Show UpdateRoleDescriptionRequest where show = genericShow
instance decodeUpdateRoleDescriptionRequest :: Decode UpdateRoleDescriptionRequest where decode = genericDecode options
instance encodeUpdateRoleDescriptionRequest :: Encode UpdateRoleDescriptionRequest where encode = genericEncode options

-- | Constructs UpdateRoleDescriptionRequest from required parameters
newUpdateRoleDescriptionRequest :: RoleDescriptionType' -> RoleNameType' -> UpdateRoleDescriptionRequest
newUpdateRoleDescriptionRequest _Description _RoleName = UpdateRoleDescriptionRequest { "Description": _Description, "RoleName": _RoleName }

-- | Constructs UpdateRoleDescriptionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateRoleDescriptionRequest' :: RoleDescriptionType' -> RoleNameType' -> ( { "RoleName" :: (RoleNameType') , "Description" :: (RoleDescriptionType') } -> {"RoleName" :: (RoleNameType') , "Description" :: (RoleDescriptionType') } ) -> UpdateRoleDescriptionRequest
newUpdateRoleDescriptionRequest' _Description _RoleName customize = (UpdateRoleDescriptionRequest <<< customize) { "Description": _Description, "RoleName": _RoleName }



newtype UpdateRoleDescriptionResponse = UpdateRoleDescriptionResponse 
  { "Role" :: Maybe (Role)
  }
derive instance newtypeUpdateRoleDescriptionResponse :: Newtype UpdateRoleDescriptionResponse _
derive instance repGenericUpdateRoleDescriptionResponse :: Generic UpdateRoleDescriptionResponse _
instance showUpdateRoleDescriptionResponse :: Show UpdateRoleDescriptionResponse where show = genericShow
instance decodeUpdateRoleDescriptionResponse :: Decode UpdateRoleDescriptionResponse where decode = genericDecode options
instance encodeUpdateRoleDescriptionResponse :: Encode UpdateRoleDescriptionResponse where encode = genericEncode options

-- | Constructs UpdateRoleDescriptionResponse from required parameters
newUpdateRoleDescriptionResponse :: UpdateRoleDescriptionResponse
newUpdateRoleDescriptionResponse  = UpdateRoleDescriptionResponse { "Role": Nothing }

-- | Constructs UpdateRoleDescriptionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateRoleDescriptionResponse' :: ( { "Role" :: Maybe (Role) } -> {"Role" :: Maybe (Role) } ) -> UpdateRoleDescriptionResponse
newUpdateRoleDescriptionResponse'  customize = (UpdateRoleDescriptionResponse <<< customize) { "Role": Nothing }



newtype UpdateSAMLProviderRequest = UpdateSAMLProviderRequest 
  { "SAMLMetadataDocument" :: (SAMLMetadataDocumentType)
  , "SAMLProviderArn" :: (ArnType')
  }
derive instance newtypeUpdateSAMLProviderRequest :: Newtype UpdateSAMLProviderRequest _
derive instance repGenericUpdateSAMLProviderRequest :: Generic UpdateSAMLProviderRequest _
instance showUpdateSAMLProviderRequest :: Show UpdateSAMLProviderRequest where show = genericShow
instance decodeUpdateSAMLProviderRequest :: Decode UpdateSAMLProviderRequest where decode = genericDecode options
instance encodeUpdateSAMLProviderRequest :: Encode UpdateSAMLProviderRequest where encode = genericEncode options

-- | Constructs UpdateSAMLProviderRequest from required parameters
newUpdateSAMLProviderRequest :: SAMLMetadataDocumentType -> ArnType' -> UpdateSAMLProviderRequest
newUpdateSAMLProviderRequest _SAMLMetadataDocument _SAMLProviderArn = UpdateSAMLProviderRequest { "SAMLMetadataDocument": _SAMLMetadataDocument, "SAMLProviderArn": _SAMLProviderArn }

-- | Constructs UpdateSAMLProviderRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateSAMLProviderRequest' :: SAMLMetadataDocumentType -> ArnType' -> ( { "SAMLMetadataDocument" :: (SAMLMetadataDocumentType) , "SAMLProviderArn" :: (ArnType') } -> {"SAMLMetadataDocument" :: (SAMLMetadataDocumentType) , "SAMLProviderArn" :: (ArnType') } ) -> UpdateSAMLProviderRequest
newUpdateSAMLProviderRequest' _SAMLMetadataDocument _SAMLProviderArn customize = (UpdateSAMLProviderRequest <<< customize) { "SAMLMetadataDocument": _SAMLMetadataDocument, "SAMLProviderArn": _SAMLProviderArn }



-- | <p>Contains the response to a successful <a>UpdateSAMLProvider</a> request. </p>
newtype UpdateSAMLProviderResponse = UpdateSAMLProviderResponse 
  { "SAMLProviderArn" :: Maybe (ArnType')
  }
derive instance newtypeUpdateSAMLProviderResponse :: Newtype UpdateSAMLProviderResponse _
derive instance repGenericUpdateSAMLProviderResponse :: Generic UpdateSAMLProviderResponse _
instance showUpdateSAMLProviderResponse :: Show UpdateSAMLProviderResponse where show = genericShow
instance decodeUpdateSAMLProviderResponse :: Decode UpdateSAMLProviderResponse where decode = genericDecode options
instance encodeUpdateSAMLProviderResponse :: Encode UpdateSAMLProviderResponse where encode = genericEncode options

-- | Constructs UpdateSAMLProviderResponse from required parameters
newUpdateSAMLProviderResponse :: UpdateSAMLProviderResponse
newUpdateSAMLProviderResponse  = UpdateSAMLProviderResponse { "SAMLProviderArn": Nothing }

-- | Constructs UpdateSAMLProviderResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateSAMLProviderResponse' :: ( { "SAMLProviderArn" :: Maybe (ArnType') } -> {"SAMLProviderArn" :: Maybe (ArnType') } ) -> UpdateSAMLProviderResponse
newUpdateSAMLProviderResponse'  customize = (UpdateSAMLProviderResponse <<< customize) { "SAMLProviderArn": Nothing }



newtype UpdateSSHPublicKeyRequest = UpdateSSHPublicKeyRequest 
  { "UserName" :: (UserNameType')
  , "SSHPublicKeyId" :: (PublicKeyIdType')
  , "Status" :: (StatusType')
  }
derive instance newtypeUpdateSSHPublicKeyRequest :: Newtype UpdateSSHPublicKeyRequest _
derive instance repGenericUpdateSSHPublicKeyRequest :: Generic UpdateSSHPublicKeyRequest _
instance showUpdateSSHPublicKeyRequest :: Show UpdateSSHPublicKeyRequest where show = genericShow
instance decodeUpdateSSHPublicKeyRequest :: Decode UpdateSSHPublicKeyRequest where decode = genericDecode options
instance encodeUpdateSSHPublicKeyRequest :: Encode UpdateSSHPublicKeyRequest where encode = genericEncode options

-- | Constructs UpdateSSHPublicKeyRequest from required parameters
newUpdateSSHPublicKeyRequest :: PublicKeyIdType' -> StatusType' -> UserNameType' -> UpdateSSHPublicKeyRequest
newUpdateSSHPublicKeyRequest _SSHPublicKeyId _Status _UserName = UpdateSSHPublicKeyRequest { "SSHPublicKeyId": _SSHPublicKeyId, "Status": _Status, "UserName": _UserName }

-- | Constructs UpdateSSHPublicKeyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateSSHPublicKeyRequest' :: PublicKeyIdType' -> StatusType' -> UserNameType' -> ( { "UserName" :: (UserNameType') , "SSHPublicKeyId" :: (PublicKeyIdType') , "Status" :: (StatusType') } -> {"UserName" :: (UserNameType') , "SSHPublicKeyId" :: (PublicKeyIdType') , "Status" :: (StatusType') } ) -> UpdateSSHPublicKeyRequest
newUpdateSSHPublicKeyRequest' _SSHPublicKeyId _Status _UserName customize = (UpdateSSHPublicKeyRequest <<< customize) { "SSHPublicKeyId": _SSHPublicKeyId, "Status": _Status, "UserName": _UserName }



newtype UpdateServerCertificateRequest = UpdateServerCertificateRequest 
  { "ServerCertificateName" :: (ServerCertificateNameType')
  , "NewPath" :: Maybe (PathType')
  , "NewServerCertificateName" :: Maybe (ServerCertificateNameType')
  }
derive instance newtypeUpdateServerCertificateRequest :: Newtype UpdateServerCertificateRequest _
derive instance repGenericUpdateServerCertificateRequest :: Generic UpdateServerCertificateRequest _
instance showUpdateServerCertificateRequest :: Show UpdateServerCertificateRequest where show = genericShow
instance decodeUpdateServerCertificateRequest :: Decode UpdateServerCertificateRequest where decode = genericDecode options
instance encodeUpdateServerCertificateRequest :: Encode UpdateServerCertificateRequest where encode = genericEncode options

-- | Constructs UpdateServerCertificateRequest from required parameters
newUpdateServerCertificateRequest :: ServerCertificateNameType' -> UpdateServerCertificateRequest
newUpdateServerCertificateRequest _ServerCertificateName = UpdateServerCertificateRequest { "ServerCertificateName": _ServerCertificateName, "NewPath": Nothing, "NewServerCertificateName": Nothing }

-- | Constructs UpdateServerCertificateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateServerCertificateRequest' :: ServerCertificateNameType' -> ( { "ServerCertificateName" :: (ServerCertificateNameType') , "NewPath" :: Maybe (PathType') , "NewServerCertificateName" :: Maybe (ServerCertificateNameType') } -> {"ServerCertificateName" :: (ServerCertificateNameType') , "NewPath" :: Maybe (PathType') , "NewServerCertificateName" :: Maybe (ServerCertificateNameType') } ) -> UpdateServerCertificateRequest
newUpdateServerCertificateRequest' _ServerCertificateName customize = (UpdateServerCertificateRequest <<< customize) { "ServerCertificateName": _ServerCertificateName, "NewPath": Nothing, "NewServerCertificateName": Nothing }



newtype UpdateServiceSpecificCredentialRequest = UpdateServiceSpecificCredentialRequest 
  { "UserName" :: Maybe (UserNameType')
  , "ServiceSpecificCredentialId" :: (ServiceSpecificCredentialId')
  , "Status" :: (StatusType')
  }
derive instance newtypeUpdateServiceSpecificCredentialRequest :: Newtype UpdateServiceSpecificCredentialRequest _
derive instance repGenericUpdateServiceSpecificCredentialRequest :: Generic UpdateServiceSpecificCredentialRequest _
instance showUpdateServiceSpecificCredentialRequest :: Show UpdateServiceSpecificCredentialRequest where show = genericShow
instance decodeUpdateServiceSpecificCredentialRequest :: Decode UpdateServiceSpecificCredentialRequest where decode = genericDecode options
instance encodeUpdateServiceSpecificCredentialRequest :: Encode UpdateServiceSpecificCredentialRequest where encode = genericEncode options

-- | Constructs UpdateServiceSpecificCredentialRequest from required parameters
newUpdateServiceSpecificCredentialRequest :: ServiceSpecificCredentialId' -> StatusType' -> UpdateServiceSpecificCredentialRequest
newUpdateServiceSpecificCredentialRequest _ServiceSpecificCredentialId _Status = UpdateServiceSpecificCredentialRequest { "ServiceSpecificCredentialId": _ServiceSpecificCredentialId, "Status": _Status, "UserName": Nothing }

-- | Constructs UpdateServiceSpecificCredentialRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateServiceSpecificCredentialRequest' :: ServiceSpecificCredentialId' -> StatusType' -> ( { "UserName" :: Maybe (UserNameType') , "ServiceSpecificCredentialId" :: (ServiceSpecificCredentialId') , "Status" :: (StatusType') } -> {"UserName" :: Maybe (UserNameType') , "ServiceSpecificCredentialId" :: (ServiceSpecificCredentialId') , "Status" :: (StatusType') } ) -> UpdateServiceSpecificCredentialRequest
newUpdateServiceSpecificCredentialRequest' _ServiceSpecificCredentialId _Status customize = (UpdateServiceSpecificCredentialRequest <<< customize) { "ServiceSpecificCredentialId": _ServiceSpecificCredentialId, "Status": _Status, "UserName": Nothing }



newtype UpdateSigningCertificateRequest = UpdateSigningCertificateRequest 
  { "UserName" :: Maybe (ExistingUserNameType')
  , "CertificateId" :: (CertificateIdType')
  , "Status" :: (StatusType')
  }
derive instance newtypeUpdateSigningCertificateRequest :: Newtype UpdateSigningCertificateRequest _
derive instance repGenericUpdateSigningCertificateRequest :: Generic UpdateSigningCertificateRequest _
instance showUpdateSigningCertificateRequest :: Show UpdateSigningCertificateRequest where show = genericShow
instance decodeUpdateSigningCertificateRequest :: Decode UpdateSigningCertificateRequest where decode = genericDecode options
instance encodeUpdateSigningCertificateRequest :: Encode UpdateSigningCertificateRequest where encode = genericEncode options

-- | Constructs UpdateSigningCertificateRequest from required parameters
newUpdateSigningCertificateRequest :: CertificateIdType' -> StatusType' -> UpdateSigningCertificateRequest
newUpdateSigningCertificateRequest _CertificateId _Status = UpdateSigningCertificateRequest { "CertificateId": _CertificateId, "Status": _Status, "UserName": Nothing }

-- | Constructs UpdateSigningCertificateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateSigningCertificateRequest' :: CertificateIdType' -> StatusType' -> ( { "UserName" :: Maybe (ExistingUserNameType') , "CertificateId" :: (CertificateIdType') , "Status" :: (StatusType') } -> {"UserName" :: Maybe (ExistingUserNameType') , "CertificateId" :: (CertificateIdType') , "Status" :: (StatusType') } ) -> UpdateSigningCertificateRequest
newUpdateSigningCertificateRequest' _CertificateId _Status customize = (UpdateSigningCertificateRequest <<< customize) { "CertificateId": _CertificateId, "Status": _Status, "UserName": Nothing }



newtype UpdateUserRequest = UpdateUserRequest 
  { "UserName" :: (ExistingUserNameType')
  , "NewPath" :: Maybe (PathType')
  , "NewUserName" :: Maybe (UserNameType')
  }
derive instance newtypeUpdateUserRequest :: Newtype UpdateUserRequest _
derive instance repGenericUpdateUserRequest :: Generic UpdateUserRequest _
instance showUpdateUserRequest :: Show UpdateUserRequest where show = genericShow
instance decodeUpdateUserRequest :: Decode UpdateUserRequest where decode = genericDecode options
instance encodeUpdateUserRequest :: Encode UpdateUserRequest where encode = genericEncode options

-- | Constructs UpdateUserRequest from required parameters
newUpdateUserRequest :: ExistingUserNameType' -> UpdateUserRequest
newUpdateUserRequest _UserName = UpdateUserRequest { "UserName": _UserName, "NewPath": Nothing, "NewUserName": Nothing }

-- | Constructs UpdateUserRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateUserRequest' :: ExistingUserNameType' -> ( { "UserName" :: (ExistingUserNameType') , "NewPath" :: Maybe (PathType') , "NewUserName" :: Maybe (UserNameType') } -> {"UserName" :: (ExistingUserNameType') , "NewPath" :: Maybe (PathType') , "NewUserName" :: Maybe (UserNameType') } ) -> UpdateUserRequest
newUpdateUserRequest' _UserName customize = (UpdateUserRequest <<< customize) { "UserName": _UserName, "NewPath": Nothing, "NewUserName": Nothing }



newtype UploadSSHPublicKeyRequest = UploadSSHPublicKeyRequest 
  { "UserName" :: (UserNameType')
  , "SSHPublicKeyBody" :: (PublicKeyMaterialType')
  }
derive instance newtypeUploadSSHPublicKeyRequest :: Newtype UploadSSHPublicKeyRequest _
derive instance repGenericUploadSSHPublicKeyRequest :: Generic UploadSSHPublicKeyRequest _
instance showUploadSSHPublicKeyRequest :: Show UploadSSHPublicKeyRequest where show = genericShow
instance decodeUploadSSHPublicKeyRequest :: Decode UploadSSHPublicKeyRequest where decode = genericDecode options
instance encodeUploadSSHPublicKeyRequest :: Encode UploadSSHPublicKeyRequest where encode = genericEncode options

-- | Constructs UploadSSHPublicKeyRequest from required parameters
newUploadSSHPublicKeyRequest :: PublicKeyMaterialType' -> UserNameType' -> UploadSSHPublicKeyRequest
newUploadSSHPublicKeyRequest _SSHPublicKeyBody _UserName = UploadSSHPublicKeyRequest { "SSHPublicKeyBody": _SSHPublicKeyBody, "UserName": _UserName }

-- | Constructs UploadSSHPublicKeyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUploadSSHPublicKeyRequest' :: PublicKeyMaterialType' -> UserNameType' -> ( { "UserName" :: (UserNameType') , "SSHPublicKeyBody" :: (PublicKeyMaterialType') } -> {"UserName" :: (UserNameType') , "SSHPublicKeyBody" :: (PublicKeyMaterialType') } ) -> UploadSSHPublicKeyRequest
newUploadSSHPublicKeyRequest' _SSHPublicKeyBody _UserName customize = (UploadSSHPublicKeyRequest <<< customize) { "SSHPublicKeyBody": _SSHPublicKeyBody, "UserName": _UserName }



-- | <p>Contains the response to a successful <a>UploadSSHPublicKey</a> request.</p>
newtype UploadSSHPublicKeyResponse = UploadSSHPublicKeyResponse 
  { "SSHPublicKey" :: Maybe (SSHPublicKey)
  }
derive instance newtypeUploadSSHPublicKeyResponse :: Newtype UploadSSHPublicKeyResponse _
derive instance repGenericUploadSSHPublicKeyResponse :: Generic UploadSSHPublicKeyResponse _
instance showUploadSSHPublicKeyResponse :: Show UploadSSHPublicKeyResponse where show = genericShow
instance decodeUploadSSHPublicKeyResponse :: Decode UploadSSHPublicKeyResponse where decode = genericDecode options
instance encodeUploadSSHPublicKeyResponse :: Encode UploadSSHPublicKeyResponse where encode = genericEncode options

-- | Constructs UploadSSHPublicKeyResponse from required parameters
newUploadSSHPublicKeyResponse :: UploadSSHPublicKeyResponse
newUploadSSHPublicKeyResponse  = UploadSSHPublicKeyResponse { "SSHPublicKey": Nothing }

-- | Constructs UploadSSHPublicKeyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUploadSSHPublicKeyResponse' :: ( { "SSHPublicKey" :: Maybe (SSHPublicKey) } -> {"SSHPublicKey" :: Maybe (SSHPublicKey) } ) -> UploadSSHPublicKeyResponse
newUploadSSHPublicKeyResponse'  customize = (UploadSSHPublicKeyResponse <<< customize) { "SSHPublicKey": Nothing }



newtype UploadServerCertificateRequest = UploadServerCertificateRequest 
  { "Path" :: Maybe (PathType')
  , "ServerCertificateName" :: (ServerCertificateNameType')
  , "CertificateBody" :: (CertificateBodyType')
  , "PrivateKey" :: (PrivateKeyType')
  , "CertificateChain" :: Maybe (CertificateChainType')
  }
derive instance newtypeUploadServerCertificateRequest :: Newtype UploadServerCertificateRequest _
derive instance repGenericUploadServerCertificateRequest :: Generic UploadServerCertificateRequest _
instance showUploadServerCertificateRequest :: Show UploadServerCertificateRequest where show = genericShow
instance decodeUploadServerCertificateRequest :: Decode UploadServerCertificateRequest where decode = genericDecode options
instance encodeUploadServerCertificateRequest :: Encode UploadServerCertificateRequest where encode = genericEncode options

-- | Constructs UploadServerCertificateRequest from required parameters
newUploadServerCertificateRequest :: CertificateBodyType' -> PrivateKeyType' -> ServerCertificateNameType' -> UploadServerCertificateRequest
newUploadServerCertificateRequest _CertificateBody _PrivateKey _ServerCertificateName = UploadServerCertificateRequest { "CertificateBody": _CertificateBody, "PrivateKey": _PrivateKey, "ServerCertificateName": _ServerCertificateName, "CertificateChain": Nothing, "Path": Nothing }

-- | Constructs UploadServerCertificateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUploadServerCertificateRequest' :: CertificateBodyType' -> PrivateKeyType' -> ServerCertificateNameType' -> ( { "Path" :: Maybe (PathType') , "ServerCertificateName" :: (ServerCertificateNameType') , "CertificateBody" :: (CertificateBodyType') , "PrivateKey" :: (PrivateKeyType') , "CertificateChain" :: Maybe (CertificateChainType') } -> {"Path" :: Maybe (PathType') , "ServerCertificateName" :: (ServerCertificateNameType') , "CertificateBody" :: (CertificateBodyType') , "PrivateKey" :: (PrivateKeyType') , "CertificateChain" :: Maybe (CertificateChainType') } ) -> UploadServerCertificateRequest
newUploadServerCertificateRequest' _CertificateBody _PrivateKey _ServerCertificateName customize = (UploadServerCertificateRequest <<< customize) { "CertificateBody": _CertificateBody, "PrivateKey": _PrivateKey, "ServerCertificateName": _ServerCertificateName, "CertificateChain": Nothing, "Path": Nothing }



-- | <p>Contains the response to a successful <a>UploadServerCertificate</a> request. </p>
newtype UploadServerCertificateResponse = UploadServerCertificateResponse 
  { "ServerCertificateMetadata" :: Maybe (ServerCertificateMetadata)
  }
derive instance newtypeUploadServerCertificateResponse :: Newtype UploadServerCertificateResponse _
derive instance repGenericUploadServerCertificateResponse :: Generic UploadServerCertificateResponse _
instance showUploadServerCertificateResponse :: Show UploadServerCertificateResponse where show = genericShow
instance decodeUploadServerCertificateResponse :: Decode UploadServerCertificateResponse where decode = genericDecode options
instance encodeUploadServerCertificateResponse :: Encode UploadServerCertificateResponse where encode = genericEncode options

-- | Constructs UploadServerCertificateResponse from required parameters
newUploadServerCertificateResponse :: UploadServerCertificateResponse
newUploadServerCertificateResponse  = UploadServerCertificateResponse { "ServerCertificateMetadata": Nothing }

-- | Constructs UploadServerCertificateResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUploadServerCertificateResponse' :: ( { "ServerCertificateMetadata" :: Maybe (ServerCertificateMetadata) } -> {"ServerCertificateMetadata" :: Maybe (ServerCertificateMetadata) } ) -> UploadServerCertificateResponse
newUploadServerCertificateResponse'  customize = (UploadServerCertificateResponse <<< customize) { "ServerCertificateMetadata": Nothing }



newtype UploadSigningCertificateRequest = UploadSigningCertificateRequest 
  { "UserName" :: Maybe (ExistingUserNameType')
  , "CertificateBody" :: (CertificateBodyType')
  }
derive instance newtypeUploadSigningCertificateRequest :: Newtype UploadSigningCertificateRequest _
derive instance repGenericUploadSigningCertificateRequest :: Generic UploadSigningCertificateRequest _
instance showUploadSigningCertificateRequest :: Show UploadSigningCertificateRequest where show = genericShow
instance decodeUploadSigningCertificateRequest :: Decode UploadSigningCertificateRequest where decode = genericDecode options
instance encodeUploadSigningCertificateRequest :: Encode UploadSigningCertificateRequest where encode = genericEncode options

-- | Constructs UploadSigningCertificateRequest from required parameters
newUploadSigningCertificateRequest :: CertificateBodyType' -> UploadSigningCertificateRequest
newUploadSigningCertificateRequest _CertificateBody = UploadSigningCertificateRequest { "CertificateBody": _CertificateBody, "UserName": Nothing }

-- | Constructs UploadSigningCertificateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUploadSigningCertificateRequest' :: CertificateBodyType' -> ( { "UserName" :: Maybe (ExistingUserNameType') , "CertificateBody" :: (CertificateBodyType') } -> {"UserName" :: Maybe (ExistingUserNameType') , "CertificateBody" :: (CertificateBodyType') } ) -> UploadSigningCertificateRequest
newUploadSigningCertificateRequest' _CertificateBody customize = (UploadSigningCertificateRequest <<< customize) { "CertificateBody": _CertificateBody, "UserName": Nothing }



-- | <p>Contains the response to a successful <a>UploadSigningCertificate</a> request. </p>
newtype UploadSigningCertificateResponse = UploadSigningCertificateResponse 
  { "Certificate" :: (SigningCertificate)
  }
derive instance newtypeUploadSigningCertificateResponse :: Newtype UploadSigningCertificateResponse _
derive instance repGenericUploadSigningCertificateResponse :: Generic UploadSigningCertificateResponse _
instance showUploadSigningCertificateResponse :: Show UploadSigningCertificateResponse where show = genericShow
instance decodeUploadSigningCertificateResponse :: Decode UploadSigningCertificateResponse where decode = genericDecode options
instance encodeUploadSigningCertificateResponse :: Encode UploadSigningCertificateResponse where encode = genericEncode options

-- | Constructs UploadSigningCertificateResponse from required parameters
newUploadSigningCertificateResponse :: SigningCertificate -> UploadSigningCertificateResponse
newUploadSigningCertificateResponse _Certificate = UploadSigningCertificateResponse { "Certificate": _Certificate }

-- | Constructs UploadSigningCertificateResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUploadSigningCertificateResponse' :: SigningCertificate -> ( { "Certificate" :: (SigningCertificate) } -> {"Certificate" :: (SigningCertificate) } ) -> UploadSigningCertificateResponse
newUploadSigningCertificateResponse' _Certificate customize = (UploadSigningCertificateResponse <<< customize) { "Certificate": _Certificate }



-- | <p>Contains information about an IAM user entity.</p> <p>This data type is used as a response element in the following actions:</p> <ul> <li> <p> <a>CreateUser</a> </p> </li> <li> <p> <a>GetUser</a> </p> </li> <li> <p> <a>ListUsers</a> </p> </li> </ul>
newtype User = User 
  { "Path" :: (PathType')
  , "UserName" :: (UserNameType')
  , "UserId" :: (IdType')
  , "Arn" :: (ArnType')
  , "CreateDate" :: (DateType')
  , "PasswordLastUsed" :: Maybe (DateType')
  }
derive instance newtypeUser :: Newtype User _
derive instance repGenericUser :: Generic User _
instance showUser :: Show User where show = genericShow
instance decodeUser :: Decode User where decode = genericDecode options
instance encodeUser :: Encode User where encode = genericEncode options

-- | Constructs User from required parameters
newUser :: ArnType' -> DateType' -> PathType' -> IdType' -> UserNameType' -> User
newUser _Arn _CreateDate _Path _UserId _UserName = User { "Arn": _Arn, "CreateDate": _CreateDate, "Path": _Path, "UserId": _UserId, "UserName": _UserName, "PasswordLastUsed": Nothing }

-- | Constructs User's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUser' :: ArnType' -> DateType' -> PathType' -> IdType' -> UserNameType' -> ( { "Path" :: (PathType') , "UserName" :: (UserNameType') , "UserId" :: (IdType') , "Arn" :: (ArnType') , "CreateDate" :: (DateType') , "PasswordLastUsed" :: Maybe (DateType') } -> {"Path" :: (PathType') , "UserName" :: (UserNameType') , "UserId" :: (IdType') , "Arn" :: (ArnType') , "CreateDate" :: (DateType') , "PasswordLastUsed" :: Maybe (DateType') } ) -> User
newUser' _Arn _CreateDate _Path _UserId _UserName customize = (User <<< customize) { "Arn": _Arn, "CreateDate": _CreateDate, "Path": _Path, "UserId": _UserId, "UserName": _UserName, "PasswordLastUsed": Nothing }



-- | <p>Contains information about an IAM user, including all the user's policies and all the IAM groups the user is in.</p> <p>This data type is used as a response element in the <a>GetAccountAuthorizationDetails</a> action.</p>
newtype UserDetail = UserDetail 
  { "Path" :: Maybe (PathType')
  , "UserName" :: Maybe (UserNameType')
  , "UserId" :: Maybe (IdType')
  , "Arn" :: Maybe (ArnType')
  , "CreateDate" :: Maybe (DateType')
  , "UserPolicyList" :: Maybe (PolicyDetailListType')
  , "GroupList" :: Maybe (GroupNameListType')
  , "AttachedManagedPolicies" :: Maybe (AttachedPoliciesListType')
  }
derive instance newtypeUserDetail :: Newtype UserDetail _
derive instance repGenericUserDetail :: Generic UserDetail _
instance showUserDetail :: Show UserDetail where show = genericShow
instance decodeUserDetail :: Decode UserDetail where decode = genericDecode options
instance encodeUserDetail :: Encode UserDetail where encode = genericEncode options

-- | Constructs UserDetail from required parameters
newUserDetail :: UserDetail
newUserDetail  = UserDetail { "Arn": Nothing, "AttachedManagedPolicies": Nothing, "CreateDate": Nothing, "GroupList": Nothing, "Path": Nothing, "UserId": Nothing, "UserName": Nothing, "UserPolicyList": Nothing }

-- | Constructs UserDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUserDetail' :: ( { "Path" :: Maybe (PathType') , "UserName" :: Maybe (UserNameType') , "UserId" :: Maybe (IdType') , "Arn" :: Maybe (ArnType') , "CreateDate" :: Maybe (DateType') , "UserPolicyList" :: Maybe (PolicyDetailListType') , "GroupList" :: Maybe (GroupNameListType') , "AttachedManagedPolicies" :: Maybe (AttachedPoliciesListType') } -> {"Path" :: Maybe (PathType') , "UserName" :: Maybe (UserNameType') , "UserId" :: Maybe (IdType') , "Arn" :: Maybe (ArnType') , "CreateDate" :: Maybe (DateType') , "UserPolicyList" :: Maybe (PolicyDetailListType') , "GroupList" :: Maybe (GroupNameListType') , "AttachedManagedPolicies" :: Maybe (AttachedPoliciesListType') } ) -> UserDetail
newUserDetail'  customize = (UserDetail <<< customize) { "Arn": Nothing, "AttachedManagedPolicies": Nothing, "CreateDate": Nothing, "GroupList": Nothing, "Path": Nothing, "UserId": Nothing, "UserName": Nothing, "UserPolicyList": Nothing }



-- | <p>Contains information about a virtual MFA device.</p>
newtype VirtualMFADevice = VirtualMFADevice 
  { "SerialNumber" :: (SerialNumberType')
  , "Base32StringSeed" :: Maybe (BootstrapDatum)
  , "QRCodePNG" :: Maybe (BootstrapDatum)
  , "User" :: Maybe (User)
  , "EnableDate" :: Maybe (DateType')
  }
derive instance newtypeVirtualMFADevice :: Newtype VirtualMFADevice _
derive instance repGenericVirtualMFADevice :: Generic VirtualMFADevice _
instance showVirtualMFADevice :: Show VirtualMFADevice where show = genericShow
instance decodeVirtualMFADevice :: Decode VirtualMFADevice where decode = genericDecode options
instance encodeVirtualMFADevice :: Encode VirtualMFADevice where encode = genericEncode options

-- | Constructs VirtualMFADevice from required parameters
newVirtualMFADevice :: SerialNumberType' -> VirtualMFADevice
newVirtualMFADevice _SerialNumber = VirtualMFADevice { "SerialNumber": _SerialNumber, "Base32StringSeed": Nothing, "EnableDate": Nothing, "QRCodePNG": Nothing, "User": Nothing }

-- | Constructs VirtualMFADevice's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVirtualMFADevice' :: SerialNumberType' -> ( { "SerialNumber" :: (SerialNumberType') , "Base32StringSeed" :: Maybe (BootstrapDatum) , "QRCodePNG" :: Maybe (BootstrapDatum) , "User" :: Maybe (User) , "EnableDate" :: Maybe (DateType') } -> {"SerialNumber" :: (SerialNumberType') , "Base32StringSeed" :: Maybe (BootstrapDatum) , "QRCodePNG" :: Maybe (BootstrapDatum) , "User" :: Maybe (User) , "EnableDate" :: Maybe (DateType') } ) -> VirtualMFADevice
newVirtualMFADevice' _SerialNumber customize = (VirtualMFADevice <<< customize) { "SerialNumber": _SerialNumber, "Base32StringSeed": Nothing, "EnableDate": Nothing, "QRCodePNG": Nothing, "User": Nothing }



newtype AccessKeyIdType' = AccessKeyIdType' String
derive instance newtypeAccessKeyIdType' :: Newtype AccessKeyIdType' _
derive instance repGenericAccessKeyIdType' :: Generic AccessKeyIdType' _
instance showAccessKeyIdType' :: Show AccessKeyIdType' where show = genericShow
instance decodeAccessKeyIdType' :: Decode AccessKeyIdType' where decode = genericDecode options
instance encodeAccessKeyIdType' :: Encode AccessKeyIdType' where encode = genericEncode options



-- | <p>Contains a list of access key metadata.</p> <p>This data type is used as a response element in the <a>ListAccessKeys</a> action.</p>
newtype AccessKeyMetadataListType' = AccessKeyMetadataListType' (Array AccessKeyMetadata)
derive instance newtypeAccessKeyMetadataListType' :: Newtype AccessKeyMetadataListType' _
derive instance repGenericAccessKeyMetadataListType' :: Generic AccessKeyMetadataListType' _
instance showAccessKeyMetadataListType' :: Show AccessKeyMetadataListType' where show = genericShow
instance decodeAccessKeyMetadataListType' :: Decode AccessKeyMetadataListType' where decode = genericDecode options
instance encodeAccessKeyMetadataListType' :: Encode AccessKeyMetadataListType' where encode = genericEncode options



newtype AccessKeySecretType' = AccessKeySecretType' String
derive instance newtypeAccessKeySecretType' :: Newtype AccessKeySecretType' _
derive instance repGenericAccessKeySecretType' :: Generic AccessKeySecretType' _
instance showAccessKeySecretType' :: Show AccessKeySecretType' where show = genericShow
instance decodeAccessKeySecretType' :: Decode AccessKeySecretType' where decode = genericDecode options
instance encodeAccessKeySecretType' :: Encode AccessKeySecretType' where encode = genericEncode options



newtype AccountAliasListType' = AccountAliasListType' (Array AccountAliasType')
derive instance newtypeAccountAliasListType' :: Newtype AccountAliasListType' _
derive instance repGenericAccountAliasListType' :: Generic AccountAliasListType' _
instance showAccountAliasListType' :: Show AccountAliasListType' where show = genericShow
instance decodeAccountAliasListType' :: Decode AccountAliasListType' where decode = genericDecode options
instance encodeAccountAliasListType' :: Encode AccountAliasListType' where encode = genericEncode options



newtype AccountAliasType' = AccountAliasType' String
derive instance newtypeAccountAliasType' :: Newtype AccountAliasType' _
derive instance repGenericAccountAliasType' :: Generic AccountAliasType' _
instance showAccountAliasType' :: Show AccountAliasType' where show = genericShow
instance decodeAccountAliasType' :: Decode AccountAliasType' where decode = genericDecode options
instance encodeAccountAliasType' :: Encode AccountAliasType' where encode = genericEncode options



-- | <p>The Amazon Resource Name (ARN). ARNs are unique identifiers for AWS resources.</p> <p>For more information about ARNs, go to <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>. </p>
newtype ArnType' = ArnType' String
derive instance newtypeArnType' :: Newtype ArnType' _
derive instance repGenericArnType' :: Generic ArnType' _
instance showArnType' :: Show ArnType' where show = genericShow
instance decodeArnType' :: Decode ArnType' where decode = genericDecode options
instance encodeArnType' :: Encode ArnType' where encode = genericEncode options



newtype AssignmentStatusType' = AssignmentStatusType' String
derive instance newtypeAssignmentStatusType' :: Newtype AssignmentStatusType' _
derive instance repGenericAssignmentStatusType' :: Generic AssignmentStatusType' _
instance showAssignmentStatusType' :: Show AssignmentStatusType' where show = genericShow
instance decodeAssignmentStatusType' :: Decode AssignmentStatusType' where decode = genericDecode options
instance encodeAssignmentStatusType' :: Encode AssignmentStatusType' where encode = genericEncode options



newtype AttachedPoliciesListType' = AttachedPoliciesListType' (Array AttachedPolicy)
derive instance newtypeAttachedPoliciesListType' :: Newtype AttachedPoliciesListType' _
derive instance repGenericAttachedPoliciesListType' :: Generic AttachedPoliciesListType' _
instance showAttachedPoliciesListType' :: Show AttachedPoliciesListType' where show = genericShow
instance decodeAttachedPoliciesListType' :: Decode AttachedPoliciesListType' where decode = genericDecode options
instance encodeAttachedPoliciesListType' :: Encode AttachedPoliciesListType' where encode = genericEncode options



newtype AttachmentCountType' = AttachmentCountType' Int
derive instance newtypeAttachmentCountType' :: Newtype AttachmentCountType' _
derive instance repGenericAttachmentCountType' :: Generic AttachmentCountType' _
instance showAttachmentCountType' :: Show AttachmentCountType' where show = genericShow
instance decodeAttachmentCountType' :: Decode AttachmentCountType' where decode = genericDecode options
instance encodeAttachmentCountType' :: Encode AttachmentCountType' where encode = genericEncode options



newtype AuthenticationCodeType' = AuthenticationCodeType' String
derive instance newtypeAuthenticationCodeType' :: Newtype AuthenticationCodeType' _
derive instance repGenericAuthenticationCodeType' :: Generic AuthenticationCodeType' _
instance showAuthenticationCodeType' :: Show AuthenticationCodeType' where show = genericShow
instance decodeAuthenticationCodeType' :: Decode AuthenticationCodeType' where decode = genericDecode options
instance encodeAuthenticationCodeType' :: Encode AuthenticationCodeType' where encode = genericEncode options



newtype BooleanObjectType' = BooleanObjectType' Boolean
derive instance newtypeBooleanObjectType' :: Newtype BooleanObjectType' _
derive instance repGenericBooleanObjectType' :: Generic BooleanObjectType' _
instance showBooleanObjectType' :: Show BooleanObjectType' where show = genericShow
instance decodeBooleanObjectType' :: Decode BooleanObjectType' where decode = genericDecode options
instance encodeBooleanObjectType' :: Encode BooleanObjectType' where encode = genericEncode options



newtype BooleanType' = BooleanType' Boolean
derive instance newtypeBooleanType' :: Newtype BooleanType' _
derive instance repGenericBooleanType' :: Generic BooleanType' _
instance showBooleanType' :: Show BooleanType' where show = genericShow
instance decodeBooleanType' :: Decode BooleanType' where decode = genericDecode options
instance encodeBooleanType' :: Encode BooleanType' where encode = genericEncode options



newtype CertificateBodyType' = CertificateBodyType' String
derive instance newtypeCertificateBodyType' :: Newtype CertificateBodyType' _
derive instance repGenericCertificateBodyType' :: Generic CertificateBodyType' _
instance showCertificateBodyType' :: Show CertificateBodyType' where show = genericShow
instance decodeCertificateBodyType' :: Decode CertificateBodyType' where decode = genericDecode options
instance encodeCertificateBodyType' :: Encode CertificateBodyType' where encode = genericEncode options



newtype CertificateChainType' = CertificateChainType' String
derive instance newtypeCertificateChainType' :: Newtype CertificateChainType' _
derive instance repGenericCertificateChainType' :: Generic CertificateChainType' _
instance showCertificateChainType' :: Show CertificateChainType' where show = genericShow
instance decodeCertificateChainType' :: Decode CertificateChainType' where decode = genericDecode options
instance encodeCertificateChainType' :: Encode CertificateChainType' where encode = genericEncode options



newtype CertificateIdType' = CertificateIdType' String
derive instance newtypeCertificateIdType' :: Newtype CertificateIdType' _
derive instance repGenericCertificateIdType' :: Generic CertificateIdType' _
instance showCertificateIdType' :: Show CertificateIdType' where show = genericShow
instance decodeCertificateIdType' :: Decode CertificateIdType' where decode = genericDecode options
instance encodeCertificateIdType' :: Encode CertificateIdType' where encode = genericEncode options



-- | <p>Contains a list of signing certificates.</p> <p>This data type is used as a response element in the <a>ListSigningCertificates</a> action.</p>
newtype CertificateListType' = CertificateListType' (Array SigningCertificate)
derive instance newtypeCertificateListType' :: Newtype CertificateListType' _
derive instance repGenericCertificateListType' :: Generic CertificateListType' _
instance showCertificateListType' :: Show CertificateListType' where show = genericShow
instance decodeCertificateListType' :: Decode CertificateListType' where decode = genericDecode options
instance encodeCertificateListType' :: Encode CertificateListType' where encode = genericEncode options



newtype ClientIDListType' = ClientIDListType' (Array ClientIDType')
derive instance newtypeClientIDListType' :: Newtype ClientIDListType' _
derive instance repGenericClientIDListType' :: Generic ClientIDListType' _
instance showClientIDListType' :: Show ClientIDListType' where show = genericShow
instance decodeClientIDListType' :: Decode ClientIDListType' where decode = genericDecode options
instance encodeClientIDListType' :: Encode ClientIDListType' where encode = genericEncode options



newtype ClientIDType' = ClientIDType' String
derive instance newtypeClientIDType' :: Newtype ClientIDType' _
derive instance repGenericClientIDType' :: Generic ClientIDType' _
instance showClientIDType' :: Show ClientIDType' where show = genericShow
instance decodeClientIDType' :: Decode ClientIDType' where decode = genericDecode options
instance encodeClientIDType' :: Encode ClientIDType' where encode = genericEncode options



newtype CredentialReportExpiredExceptionMessage' = CredentialReportExpiredExceptionMessage' String
derive instance newtypeCredentialReportExpiredExceptionMessage' :: Newtype CredentialReportExpiredExceptionMessage' _
derive instance repGenericCredentialReportExpiredExceptionMessage' :: Generic CredentialReportExpiredExceptionMessage' _
instance showCredentialReportExpiredExceptionMessage' :: Show CredentialReportExpiredExceptionMessage' where show = genericShow
instance decodeCredentialReportExpiredExceptionMessage' :: Decode CredentialReportExpiredExceptionMessage' where decode = genericDecode options
instance encodeCredentialReportExpiredExceptionMessage' :: Encode CredentialReportExpiredExceptionMessage' where encode = genericEncode options



newtype CredentialReportNotPresentExceptionMessage' = CredentialReportNotPresentExceptionMessage' String
derive instance newtypeCredentialReportNotPresentExceptionMessage' :: Newtype CredentialReportNotPresentExceptionMessage' _
derive instance repGenericCredentialReportNotPresentExceptionMessage' :: Generic CredentialReportNotPresentExceptionMessage' _
instance showCredentialReportNotPresentExceptionMessage' :: Show CredentialReportNotPresentExceptionMessage' where show = genericShow
instance decodeCredentialReportNotPresentExceptionMessage' :: Decode CredentialReportNotPresentExceptionMessage' where decode = genericDecode options
instance encodeCredentialReportNotPresentExceptionMessage' :: Encode CredentialReportNotPresentExceptionMessage' where encode = genericEncode options



newtype CredentialReportNotReadyExceptionMessage' = CredentialReportNotReadyExceptionMessage' String
derive instance newtypeCredentialReportNotReadyExceptionMessage' :: Newtype CredentialReportNotReadyExceptionMessage' _
derive instance repGenericCredentialReportNotReadyExceptionMessage' :: Generic CredentialReportNotReadyExceptionMessage' _
instance showCredentialReportNotReadyExceptionMessage' :: Show CredentialReportNotReadyExceptionMessage' where show = genericShow
instance decodeCredentialReportNotReadyExceptionMessage' :: Decode CredentialReportNotReadyExceptionMessage' where decode = genericDecode options
instance encodeCredentialReportNotReadyExceptionMessage' :: Encode CredentialReportNotReadyExceptionMessage' where encode = genericEncode options



newtype CustomSuffixType' = CustomSuffixType' String
derive instance newtypeCustomSuffixType' :: Newtype CustomSuffixType' _
derive instance repGenericCustomSuffixType' :: Generic CustomSuffixType' _
instance showCustomSuffixType' :: Show CustomSuffixType' where show = genericShow
instance decodeCustomSuffixType' :: Decode CustomSuffixType' where decode = genericDecode options
instance encodeCustomSuffixType' :: Encode CustomSuffixType' where encode = genericEncode options



newtype DateType' = DateType' Types.Timestamp
derive instance newtypeDateType' :: Newtype DateType' _
derive instance repGenericDateType' :: Generic DateType' _
instance showDateType' :: Show DateType' where show = genericShow
instance decodeDateType' :: Decode DateType' where decode = genericDecode options
instance encodeDateType' :: Encode DateType' where encode = genericEncode options



newtype DeleteConflictMessage' = DeleteConflictMessage' String
derive instance newtypeDeleteConflictMessage' :: Newtype DeleteConflictMessage' _
derive instance repGenericDeleteConflictMessage' :: Generic DeleteConflictMessage' _
instance showDeleteConflictMessage' :: Show DeleteConflictMessage' where show = genericShow
instance decodeDeleteConflictMessage' :: Decode DeleteConflictMessage' where decode = genericDecode options
instance encodeDeleteConflictMessage' :: Encode DeleteConflictMessage' where encode = genericEncode options



newtype DuplicateCertificateMessage' = DuplicateCertificateMessage' String
derive instance newtypeDuplicateCertificateMessage' :: Newtype DuplicateCertificateMessage' _
derive instance repGenericDuplicateCertificateMessage' :: Generic DuplicateCertificateMessage' _
instance showDuplicateCertificateMessage' :: Show DuplicateCertificateMessage' where show = genericShow
instance decodeDuplicateCertificateMessage' :: Decode DuplicateCertificateMessage' where decode = genericDecode options
instance encodeDuplicateCertificateMessage' :: Encode DuplicateCertificateMessage' where encode = genericEncode options



newtype DuplicateSSHPublicKeyMessage' = DuplicateSSHPublicKeyMessage' String
derive instance newtypeDuplicateSSHPublicKeyMessage' :: Newtype DuplicateSSHPublicKeyMessage' _
derive instance repGenericDuplicateSSHPublicKeyMessage' :: Generic DuplicateSSHPublicKeyMessage' _
instance showDuplicateSSHPublicKeyMessage' :: Show DuplicateSSHPublicKeyMessage' where show = genericShow
instance decodeDuplicateSSHPublicKeyMessage' :: Decode DuplicateSSHPublicKeyMessage' where decode = genericDecode options
instance encodeDuplicateSSHPublicKeyMessage' :: Encode DuplicateSSHPublicKeyMessage' where encode = genericEncode options



newtype EncodingType' = EncodingType' String
derive instance newtypeEncodingType' :: Newtype EncodingType' _
derive instance repGenericEncodingType' :: Generic EncodingType' _
instance showEncodingType' :: Show EncodingType' where show = genericShow
instance decodeEncodingType' :: Decode EncodingType' where decode = genericDecode options
instance encodeEncodingType' :: Encode EncodingType' where encode = genericEncode options



newtype EntityAlreadyExistsMessage' = EntityAlreadyExistsMessage' String
derive instance newtypeEntityAlreadyExistsMessage' :: Newtype EntityAlreadyExistsMessage' _
derive instance repGenericEntityAlreadyExistsMessage' :: Generic EntityAlreadyExistsMessage' _
instance showEntityAlreadyExistsMessage' :: Show EntityAlreadyExistsMessage' where show = genericShow
instance decodeEntityAlreadyExistsMessage' :: Decode EntityAlreadyExistsMessage' where decode = genericDecode options
instance encodeEntityAlreadyExistsMessage' :: Encode EntityAlreadyExistsMessage' where encode = genericEncode options



newtype EntityListType' = EntityListType' (Array EntityType)
derive instance newtypeEntityListType' :: Newtype EntityListType' _
derive instance repGenericEntityListType' :: Generic EntityListType' _
instance showEntityListType' :: Show EntityListType' where show = genericShow
instance decodeEntityListType' :: Decode EntityListType' where decode = genericDecode options
instance encodeEntityListType' :: Encode EntityListType' where encode = genericEncode options



newtype EntityTemporarilyUnmodifiableMessage' = EntityTemporarilyUnmodifiableMessage' String
derive instance newtypeEntityTemporarilyUnmodifiableMessage' :: Newtype EntityTemporarilyUnmodifiableMessage' _
derive instance repGenericEntityTemporarilyUnmodifiableMessage' :: Generic EntityTemporarilyUnmodifiableMessage' _
instance showEntityTemporarilyUnmodifiableMessage' :: Show EntityTemporarilyUnmodifiableMessage' where show = genericShow
instance decodeEntityTemporarilyUnmodifiableMessage' :: Decode EntityTemporarilyUnmodifiableMessage' where decode = genericDecode options
instance encodeEntityTemporarilyUnmodifiableMessage' :: Encode EntityTemporarilyUnmodifiableMessage' where encode = genericEncode options



newtype ExistingUserNameType' = ExistingUserNameType' String
derive instance newtypeExistingUserNameType' :: Newtype ExistingUserNameType' _
derive instance repGenericExistingUserNameType' :: Generic ExistingUserNameType' _
instance showExistingUserNameType' :: Show ExistingUserNameType' where show = genericShow
instance decodeExistingUserNameType' :: Decode ExistingUserNameType' where decode = genericDecode options
instance encodeExistingUserNameType' :: Encode ExistingUserNameType' where encode = genericEncode options



newtype GroupDetailListType' = GroupDetailListType' (Array GroupDetail)
derive instance newtypeGroupDetailListType' :: Newtype GroupDetailListType' _
derive instance repGenericGroupDetailListType' :: Generic GroupDetailListType' _
instance showGroupDetailListType' :: Show GroupDetailListType' where show = genericShow
instance decodeGroupDetailListType' :: Decode GroupDetailListType' where decode = genericDecode options
instance encodeGroupDetailListType' :: Encode GroupDetailListType' where encode = genericEncode options



-- | <p>Contains a list of IAM groups.</p> <p>This data type is used as a response element in the <a>ListGroups</a> action.</p>
newtype GroupListType' = GroupListType' (Array Group)
derive instance newtypeGroupListType' :: Newtype GroupListType' _
derive instance repGenericGroupListType' :: Generic GroupListType' _
instance showGroupListType' :: Show GroupListType' where show = genericShow
instance decodeGroupListType' :: Decode GroupListType' where decode = genericDecode options
instance encodeGroupListType' :: Encode GroupListType' where encode = genericEncode options



newtype GroupNameListType' = GroupNameListType' (Array GroupNameType')
derive instance newtypeGroupNameListType' :: Newtype GroupNameListType' _
derive instance repGenericGroupNameListType' :: Generic GroupNameListType' _
instance showGroupNameListType' :: Show GroupNameListType' where show = genericShow
instance decodeGroupNameListType' :: Decode GroupNameListType' where decode = genericDecode options
instance encodeGroupNameListType' :: Encode GroupNameListType' where encode = genericEncode options



newtype GroupNameType' = GroupNameType' String
derive instance newtypeGroupNameType' :: Newtype GroupNameType' _
derive instance repGenericGroupNameType' :: Generic GroupNameType' _
instance showGroupNameType' :: Show GroupNameType' where show = genericShow
instance decodeGroupNameType' :: Decode GroupNameType' where decode = genericDecode options
instance encodeGroupNameType' :: Encode GroupNameType' where encode = genericEncode options



newtype IdType' = IdType' String
derive instance newtypeIdType' :: Newtype IdType' _
derive instance repGenericIdType' :: Generic IdType' _
instance showIdType' :: Show IdType' where show = genericShow
instance decodeIdType' :: Decode IdType' where decode = genericDecode options
instance encodeIdType' :: Encode IdType' where encode = genericEncode options



-- | <p>Contains a list of instance profiles.</p>
newtype InstanceProfileListType' = InstanceProfileListType' (Array InstanceProfile)
derive instance newtypeInstanceProfileListType' :: Newtype InstanceProfileListType' _
derive instance repGenericInstanceProfileListType' :: Generic InstanceProfileListType' _
instance showInstanceProfileListType' :: Show InstanceProfileListType' where show = genericShow
instance decodeInstanceProfileListType' :: Decode InstanceProfileListType' where decode = genericDecode options
instance encodeInstanceProfileListType' :: Encode InstanceProfileListType' where encode = genericEncode options



newtype InstanceProfileNameType' = InstanceProfileNameType' String
derive instance newtypeInstanceProfileNameType' :: Newtype InstanceProfileNameType' _
derive instance repGenericInstanceProfileNameType' :: Generic InstanceProfileNameType' _
instance showInstanceProfileNameType' :: Show InstanceProfileNameType' where show = genericShow
instance decodeInstanceProfileNameType' :: Decode InstanceProfileNameType' where decode = genericDecode options
instance encodeInstanceProfileNameType' :: Encode InstanceProfileNameType' where encode = genericEncode options



newtype InvalidAuthenticationCodeMessage' = InvalidAuthenticationCodeMessage' String
derive instance newtypeInvalidAuthenticationCodeMessage' :: Newtype InvalidAuthenticationCodeMessage' _
derive instance repGenericInvalidAuthenticationCodeMessage' :: Generic InvalidAuthenticationCodeMessage' _
instance showInvalidAuthenticationCodeMessage' :: Show InvalidAuthenticationCodeMessage' where show = genericShow
instance decodeInvalidAuthenticationCodeMessage' :: Decode InvalidAuthenticationCodeMessage' where decode = genericDecode options
instance encodeInvalidAuthenticationCodeMessage' :: Encode InvalidAuthenticationCodeMessage' where encode = genericEncode options



newtype InvalidCertificateMessage' = InvalidCertificateMessage' String
derive instance newtypeInvalidCertificateMessage' :: Newtype InvalidCertificateMessage' _
derive instance repGenericInvalidCertificateMessage' :: Generic InvalidCertificateMessage' _
instance showInvalidCertificateMessage' :: Show InvalidCertificateMessage' where show = genericShow
instance decodeInvalidCertificateMessage' :: Decode InvalidCertificateMessage' where decode = genericDecode options
instance encodeInvalidCertificateMessage' :: Encode InvalidCertificateMessage' where encode = genericEncode options



newtype InvalidInputMessage' = InvalidInputMessage' String
derive instance newtypeInvalidInputMessage' :: Newtype InvalidInputMessage' _
derive instance repGenericInvalidInputMessage' :: Generic InvalidInputMessage' _
instance showInvalidInputMessage' :: Show InvalidInputMessage' where show = genericShow
instance decodeInvalidInputMessage' :: Decode InvalidInputMessage' where decode = genericDecode options
instance encodeInvalidInputMessage' :: Encode InvalidInputMessage' where encode = genericEncode options



newtype InvalidPublicKeyMessage' = InvalidPublicKeyMessage' String
derive instance newtypeInvalidPublicKeyMessage' :: Newtype InvalidPublicKeyMessage' _
derive instance repGenericInvalidPublicKeyMessage' :: Generic InvalidPublicKeyMessage' _
instance showInvalidPublicKeyMessage' :: Show InvalidPublicKeyMessage' where show = genericShow
instance decodeInvalidPublicKeyMessage' :: Decode InvalidPublicKeyMessage' where decode = genericDecode options
instance encodeInvalidPublicKeyMessage' :: Encode InvalidPublicKeyMessage' where encode = genericEncode options



newtype InvalidUserTypeMessage' = InvalidUserTypeMessage' String
derive instance newtypeInvalidUserTypeMessage' :: Newtype InvalidUserTypeMessage' _
derive instance repGenericInvalidUserTypeMessage' :: Generic InvalidUserTypeMessage' _
instance showInvalidUserTypeMessage' :: Show InvalidUserTypeMessage' where show = genericShow
instance decodeInvalidUserTypeMessage' :: Decode InvalidUserTypeMessage' where decode = genericDecode options
instance encodeInvalidUserTypeMessage' :: Encode InvalidUserTypeMessage' where encode = genericEncode options



newtype KeyPairMismatchMessage' = KeyPairMismatchMessage' String
derive instance newtypeKeyPairMismatchMessage' :: Newtype KeyPairMismatchMessage' _
derive instance repGenericKeyPairMismatchMessage' :: Generic KeyPairMismatchMessage' _
instance showKeyPairMismatchMessage' :: Show KeyPairMismatchMessage' where show = genericShow
instance decodeKeyPairMismatchMessage' :: Decode KeyPairMismatchMessage' where decode = genericDecode options
instance encodeKeyPairMismatchMessage' :: Encode KeyPairMismatchMessage' where encode = genericEncode options



newtype LimitExceededMessage' = LimitExceededMessage' String
derive instance newtypeLimitExceededMessage' :: Newtype LimitExceededMessage' _
derive instance repGenericLimitExceededMessage' :: Generic LimitExceededMessage' _
instance showLimitExceededMessage' :: Show LimitExceededMessage' where show = genericShow
instance decodeLimitExceededMessage' :: Decode LimitExceededMessage' where decode = genericDecode options
instance encodeLimitExceededMessage' :: Encode LimitExceededMessage' where encode = genericEncode options



newtype MalformedCertificateMessage' = MalformedCertificateMessage' String
derive instance newtypeMalformedCertificateMessage' :: Newtype MalformedCertificateMessage' _
derive instance repGenericMalformedCertificateMessage' :: Generic MalformedCertificateMessage' _
instance showMalformedCertificateMessage' :: Show MalformedCertificateMessage' where show = genericShow
instance decodeMalformedCertificateMessage' :: Decode MalformedCertificateMessage' where decode = genericDecode options
instance encodeMalformedCertificateMessage' :: Encode MalformedCertificateMessage' where encode = genericEncode options



newtype MalformedPolicyDocumentMessage' = MalformedPolicyDocumentMessage' String
derive instance newtypeMalformedPolicyDocumentMessage' :: Newtype MalformedPolicyDocumentMessage' _
derive instance repGenericMalformedPolicyDocumentMessage' :: Generic MalformedPolicyDocumentMessage' _
instance showMalformedPolicyDocumentMessage' :: Show MalformedPolicyDocumentMessage' where show = genericShow
instance decodeMalformedPolicyDocumentMessage' :: Decode MalformedPolicyDocumentMessage' where decode = genericDecode options
instance encodeMalformedPolicyDocumentMessage' :: Encode MalformedPolicyDocumentMessage' where encode = genericEncode options



newtype MarkerType' = MarkerType' String
derive instance newtypeMarkerType' :: Newtype MarkerType' _
derive instance repGenericMarkerType' :: Generic MarkerType' _
instance showMarkerType' :: Show MarkerType' where show = genericShow
instance decodeMarkerType' :: Decode MarkerType' where decode = genericDecode options
instance encodeMarkerType' :: Encode MarkerType' where encode = genericEncode options



newtype MaxItemsType' = MaxItemsType' Int
derive instance newtypeMaxItemsType' :: Newtype MaxItemsType' _
derive instance repGenericMaxItemsType' :: Generic MaxItemsType' _
instance showMaxItemsType' :: Show MaxItemsType' where show = genericShow
instance decodeMaxItemsType' :: Decode MaxItemsType' where decode = genericDecode options
instance encodeMaxItemsType' :: Encode MaxItemsType' where encode = genericEncode options



newtype MaxPasswordAgeType' = MaxPasswordAgeType' Int
derive instance newtypeMaxPasswordAgeType' :: Newtype MaxPasswordAgeType' _
derive instance repGenericMaxPasswordAgeType' :: Generic MaxPasswordAgeType' _
instance showMaxPasswordAgeType' :: Show MaxPasswordAgeType' where show = genericShow
instance decodeMaxPasswordAgeType' :: Decode MaxPasswordAgeType' where decode = genericDecode options
instance encodeMaxPasswordAgeType' :: Encode MaxPasswordAgeType' where encode = genericEncode options



-- | <p>Contains a list of MFA devices.</p> <p>This data type is used as a response element in the <a>ListMFADevices</a> and <a>ListVirtualMFADevices</a> actions. </p>
newtype MfaDeviceListType' = MfaDeviceListType' (Array MFADevice)
derive instance newtypeMfaDeviceListType' :: Newtype MfaDeviceListType' _
derive instance repGenericMfaDeviceListType' :: Generic MfaDeviceListType' _
instance showMfaDeviceListType' :: Show MfaDeviceListType' where show = genericShow
instance decodeMfaDeviceListType' :: Decode MfaDeviceListType' where decode = genericDecode options
instance encodeMfaDeviceListType' :: Encode MfaDeviceListType' where encode = genericEncode options



newtype MinimumPasswordLengthType' = MinimumPasswordLengthType' Int
derive instance newtypeMinimumPasswordLengthType' :: Newtype MinimumPasswordLengthType' _
derive instance repGenericMinimumPasswordLengthType' :: Generic MinimumPasswordLengthType' _
instance showMinimumPasswordLengthType' :: Show MinimumPasswordLengthType' where show = genericShow
instance decodeMinimumPasswordLengthType' :: Decode MinimumPasswordLengthType' where decode = genericDecode options
instance encodeMinimumPasswordLengthType' :: Encode MinimumPasswordLengthType' where encode = genericEncode options



newtype NoSuchEntityMessage' = NoSuchEntityMessage' String
derive instance newtypeNoSuchEntityMessage' :: Newtype NoSuchEntityMessage' _
derive instance repGenericNoSuchEntityMessage' :: Generic NoSuchEntityMessage' _
instance showNoSuchEntityMessage' :: Show NoSuchEntityMessage' where show = genericShow
instance decodeNoSuchEntityMessage' :: Decode NoSuchEntityMessage' where decode = genericDecode options
instance encodeNoSuchEntityMessage' :: Encode NoSuchEntityMessage' where encode = genericEncode options



newtype PasswordPolicyViolationMessage' = PasswordPolicyViolationMessage' String
derive instance newtypePasswordPolicyViolationMessage' :: Newtype PasswordPolicyViolationMessage' _
derive instance repGenericPasswordPolicyViolationMessage' :: Generic PasswordPolicyViolationMessage' _
instance showPasswordPolicyViolationMessage' :: Show PasswordPolicyViolationMessage' where show = genericShow
instance decodePasswordPolicyViolationMessage' :: Decode PasswordPolicyViolationMessage' where decode = genericDecode options
instance encodePasswordPolicyViolationMessage' :: Encode PasswordPolicyViolationMessage' where encode = genericEncode options



newtype PasswordReusePreventionType' = PasswordReusePreventionType' Int
derive instance newtypePasswordReusePreventionType' :: Newtype PasswordReusePreventionType' _
derive instance repGenericPasswordReusePreventionType' :: Generic PasswordReusePreventionType' _
instance showPasswordReusePreventionType' :: Show PasswordReusePreventionType' where show = genericShow
instance decodePasswordReusePreventionType' :: Decode PasswordReusePreventionType' where decode = genericDecode options
instance encodePasswordReusePreventionType' :: Encode PasswordReusePreventionType' where encode = genericEncode options



newtype PasswordType' = PasswordType' String
derive instance newtypePasswordType' :: Newtype PasswordType' _
derive instance repGenericPasswordType' :: Generic PasswordType' _
instance showPasswordType' :: Show PasswordType' where show = genericShow
instance decodePasswordType' :: Decode PasswordType' where decode = genericDecode options
instance encodePasswordType' :: Encode PasswordType' where encode = genericEncode options



newtype PathPrefixType' = PathPrefixType' String
derive instance newtypePathPrefixType' :: Newtype PathPrefixType' _
derive instance repGenericPathPrefixType' :: Generic PathPrefixType' _
instance showPathPrefixType' :: Show PathPrefixType' where show = genericShow
instance decodePathPrefixType' :: Decode PathPrefixType' where decode = genericDecode options
instance encodePathPrefixType' :: Encode PathPrefixType' where encode = genericEncode options



newtype PathType' = PathType' String
derive instance newtypePathType' :: Newtype PathType' _
derive instance repGenericPathType' :: Generic PathType' _
instance showPathType' :: Show PathType' where show = genericShow
instance decodePathType' :: Decode PathType' where decode = genericDecode options
instance encodePathType' :: Encode PathType' where encode = genericEncode options



newtype PolicyDescriptionType' = PolicyDescriptionType' String
derive instance newtypePolicyDescriptionType' :: Newtype PolicyDescriptionType' _
derive instance repGenericPolicyDescriptionType' :: Generic PolicyDescriptionType' _
instance showPolicyDescriptionType' :: Show PolicyDescriptionType' where show = genericShow
instance decodePolicyDescriptionType' :: Decode PolicyDescriptionType' where decode = genericDecode options
instance encodePolicyDescriptionType' :: Encode PolicyDescriptionType' where encode = genericEncode options



newtype PolicyDetailListType' = PolicyDetailListType' (Array PolicyDetail)
derive instance newtypePolicyDetailListType' :: Newtype PolicyDetailListType' _
derive instance repGenericPolicyDetailListType' :: Generic PolicyDetailListType' _
instance showPolicyDetailListType' :: Show PolicyDetailListType' where show = genericShow
instance decodePolicyDetailListType' :: Decode PolicyDetailListType' where decode = genericDecode options
instance encodePolicyDetailListType' :: Encode PolicyDetailListType' where encode = genericEncode options



newtype PolicyDocumentType' = PolicyDocumentType' String
derive instance newtypePolicyDocumentType' :: Newtype PolicyDocumentType' _
derive instance repGenericPolicyDocumentType' :: Generic PolicyDocumentType' _
instance showPolicyDocumentType' :: Show PolicyDocumentType' where show = genericShow
instance decodePolicyDocumentType' :: Decode PolicyDocumentType' where decode = genericDecode options
instance encodePolicyDocumentType' :: Encode PolicyDocumentType' where encode = genericEncode options



newtype PolicyDocumentVersionListType' = PolicyDocumentVersionListType' (Array PolicyVersion)
derive instance newtypePolicyDocumentVersionListType' :: Newtype PolicyDocumentVersionListType' _
derive instance repGenericPolicyDocumentVersionListType' :: Generic PolicyDocumentVersionListType' _
instance showPolicyDocumentVersionListType' :: Show PolicyDocumentVersionListType' where show = genericShow
instance decodePolicyDocumentVersionListType' :: Decode PolicyDocumentVersionListType' where decode = genericDecode options
instance encodePolicyDocumentVersionListType' :: Encode PolicyDocumentVersionListType' where encode = genericEncode options



newtype PolicyEvaluationErrorMessage' = PolicyEvaluationErrorMessage' String
derive instance newtypePolicyEvaluationErrorMessage' :: Newtype PolicyEvaluationErrorMessage' _
derive instance repGenericPolicyEvaluationErrorMessage' :: Generic PolicyEvaluationErrorMessage' _
instance showPolicyEvaluationErrorMessage' :: Show PolicyEvaluationErrorMessage' where show = genericShow
instance decodePolicyEvaluationErrorMessage' :: Decode PolicyEvaluationErrorMessage' where decode = genericDecode options
instance encodePolicyEvaluationErrorMessage' :: Encode PolicyEvaluationErrorMessage' where encode = genericEncode options



newtype PolicyListType' = PolicyListType' (Array Policy)
derive instance newtypePolicyListType' :: Newtype PolicyListType' _
derive instance repGenericPolicyListType' :: Generic PolicyListType' _
instance showPolicyListType' :: Show PolicyListType' where show = genericShow
instance decodePolicyListType' :: Decode PolicyListType' where decode = genericDecode options
instance encodePolicyListType' :: Encode PolicyListType' where encode = genericEncode options



-- | <p>Contains a list of policy names.</p> <p>This data type is used as a response element in the <a>ListPolicies</a> action.</p>
newtype PolicyNameListType' = PolicyNameListType' (Array PolicyNameType')
derive instance newtypePolicyNameListType' :: Newtype PolicyNameListType' _
derive instance repGenericPolicyNameListType' :: Generic PolicyNameListType' _
instance showPolicyNameListType' :: Show PolicyNameListType' where show = genericShow
instance decodePolicyNameListType' :: Decode PolicyNameListType' where decode = genericDecode options
instance encodePolicyNameListType' :: Encode PolicyNameListType' where encode = genericEncode options



newtype PolicyNameType' = PolicyNameType' String
derive instance newtypePolicyNameType' :: Newtype PolicyNameType' _
derive instance repGenericPolicyNameType' :: Generic PolicyNameType' _
instance showPolicyNameType' :: Show PolicyNameType' where show = genericShow
instance decodePolicyNameType' :: Decode PolicyNameType' where decode = genericDecode options
instance encodePolicyNameType' :: Encode PolicyNameType' where encode = genericEncode options



newtype PolicyNotAttachableMessage' = PolicyNotAttachableMessage' String
derive instance newtypePolicyNotAttachableMessage' :: Newtype PolicyNotAttachableMessage' _
derive instance repGenericPolicyNotAttachableMessage' :: Generic PolicyNotAttachableMessage' _
instance showPolicyNotAttachableMessage' :: Show PolicyNotAttachableMessage' where show = genericShow
instance decodePolicyNotAttachableMessage' :: Decode PolicyNotAttachableMessage' where decode = genericDecode options
instance encodePolicyNotAttachableMessage' :: Encode PolicyNotAttachableMessage' where encode = genericEncode options



newtype PolicyPathType' = PolicyPathType' String
derive instance newtypePolicyPathType' :: Newtype PolicyPathType' _
derive instance repGenericPolicyPathType' :: Generic PolicyPathType' _
instance showPolicyPathType' :: Show PolicyPathType' where show = genericShow
instance decodePolicyPathType' :: Decode PolicyPathType' where decode = genericDecode options
instance encodePolicyPathType' :: Encode PolicyPathType' where encode = genericEncode options



newtype PolicyScopeType' = PolicyScopeType' String
derive instance newtypePolicyScopeType' :: Newtype PolicyScopeType' _
derive instance repGenericPolicyScopeType' :: Generic PolicyScopeType' _
instance showPolicyScopeType' :: Show PolicyScopeType' where show = genericShow
instance decodePolicyScopeType' :: Decode PolicyScopeType' where decode = genericDecode options
instance encodePolicyScopeType' :: Encode PolicyScopeType' where encode = genericEncode options



newtype PolicyVersionIdType' = PolicyVersionIdType' String
derive instance newtypePolicyVersionIdType' :: Newtype PolicyVersionIdType' _
derive instance repGenericPolicyVersionIdType' :: Generic PolicyVersionIdType' _
instance showPolicyVersionIdType' :: Show PolicyVersionIdType' where show = genericShow
instance decodePolicyVersionIdType' :: Decode PolicyVersionIdType' where decode = genericDecode options
instance encodePolicyVersionIdType' :: Encode PolicyVersionIdType' where encode = genericEncode options



newtype PrivateKeyType' = PrivateKeyType' String
derive instance newtypePrivateKeyType' :: Newtype PrivateKeyType' _
derive instance repGenericPrivateKeyType' :: Generic PrivateKeyType' _
instance showPrivateKeyType' :: Show PrivateKeyType' where show = genericShow
instance decodePrivateKeyType' :: Decode PrivateKeyType' where decode = genericDecode options
instance encodePrivateKeyType' :: Encode PrivateKeyType' where encode = genericEncode options



newtype PublicKeyFingerprintType' = PublicKeyFingerprintType' String
derive instance newtypePublicKeyFingerprintType' :: Newtype PublicKeyFingerprintType' _
derive instance repGenericPublicKeyFingerprintType' :: Generic PublicKeyFingerprintType' _
instance showPublicKeyFingerprintType' :: Show PublicKeyFingerprintType' where show = genericShow
instance decodePublicKeyFingerprintType' :: Decode PublicKeyFingerprintType' where decode = genericDecode options
instance encodePublicKeyFingerprintType' :: Encode PublicKeyFingerprintType' where encode = genericEncode options



newtype PublicKeyIdType' = PublicKeyIdType' String
derive instance newtypePublicKeyIdType' :: Newtype PublicKeyIdType' _
derive instance repGenericPublicKeyIdType' :: Generic PublicKeyIdType' _
instance showPublicKeyIdType' :: Show PublicKeyIdType' where show = genericShow
instance decodePublicKeyIdType' :: Decode PublicKeyIdType' where decode = genericDecode options
instance encodePublicKeyIdType' :: Encode PublicKeyIdType' where encode = genericEncode options



newtype PublicKeyMaterialType' = PublicKeyMaterialType' String
derive instance newtypePublicKeyMaterialType' :: Newtype PublicKeyMaterialType' _
derive instance repGenericPublicKeyMaterialType' :: Generic PublicKeyMaterialType' _
instance showPublicKeyMaterialType' :: Show PublicKeyMaterialType' where show = genericShow
instance decodePublicKeyMaterialType' :: Decode PublicKeyMaterialType' where decode = genericDecode options
instance encodePublicKeyMaterialType' :: Encode PublicKeyMaterialType' where encode = genericEncode options



newtype RoleDescriptionType' = RoleDescriptionType' String
derive instance newtypeRoleDescriptionType' :: Newtype RoleDescriptionType' _
derive instance repGenericRoleDescriptionType' :: Generic RoleDescriptionType' _
instance showRoleDescriptionType' :: Show RoleDescriptionType' where show = genericShow
instance decodeRoleDescriptionType' :: Decode RoleDescriptionType' where decode = genericDecode options
instance encodeRoleDescriptionType' :: Encode RoleDescriptionType' where encode = genericEncode options



newtype RoleDetailListType' = RoleDetailListType' (Array RoleDetail)
derive instance newtypeRoleDetailListType' :: Newtype RoleDetailListType' _
derive instance repGenericRoleDetailListType' :: Generic RoleDetailListType' _
instance showRoleDetailListType' :: Show RoleDetailListType' where show = genericShow
instance decodeRoleDetailListType' :: Decode RoleDetailListType' where decode = genericDecode options
instance encodeRoleDetailListType' :: Encode RoleDetailListType' where encode = genericEncode options



-- | <p>Contains a list of IAM roles.</p> <p>This data type is used as a response element in the <a>ListRoles</a> action.</p>
newtype RoleListType' = RoleListType' (Array Role)
derive instance newtypeRoleListType' :: Newtype RoleListType' _
derive instance repGenericRoleListType' :: Generic RoleListType' _
instance showRoleListType' :: Show RoleListType' where show = genericShow
instance decodeRoleListType' :: Decode RoleListType' where decode = genericDecode options
instance encodeRoleListType' :: Encode RoleListType' where encode = genericEncode options



newtype RoleNameType' = RoleNameType' String
derive instance newtypeRoleNameType' :: Newtype RoleNameType' _
derive instance repGenericRoleNameType' :: Generic RoleNameType' _
instance showRoleNameType' :: Show RoleNameType' where show = genericShow
instance decodeRoleNameType' :: Decode RoleNameType' where decode = genericDecode options
instance encodeRoleNameType' :: Encode RoleNameType' where encode = genericEncode options



newtype SerialNumberType' = SerialNumberType' String
derive instance newtypeSerialNumberType' :: Newtype SerialNumberType' _
derive instance repGenericSerialNumberType' :: Generic SerialNumberType' _
instance showSerialNumberType' :: Show SerialNumberType' where show = genericShow
instance decodeSerialNumberType' :: Decode SerialNumberType' where decode = genericDecode options
instance encodeSerialNumberType' :: Encode SerialNumberType' where encode = genericEncode options



newtype ServerCertificateMetadataListType' = ServerCertificateMetadataListType' (Array ServerCertificateMetadata)
derive instance newtypeServerCertificateMetadataListType' :: Newtype ServerCertificateMetadataListType' _
derive instance repGenericServerCertificateMetadataListType' :: Generic ServerCertificateMetadataListType' _
instance showServerCertificateMetadataListType' :: Show ServerCertificateMetadataListType' where show = genericShow
instance decodeServerCertificateMetadataListType' :: Decode ServerCertificateMetadataListType' where decode = genericDecode options
instance encodeServerCertificateMetadataListType' :: Encode ServerCertificateMetadataListType' where encode = genericEncode options



newtype ServerCertificateNameType' = ServerCertificateNameType' String
derive instance newtypeServerCertificateNameType' :: Newtype ServerCertificateNameType' _
derive instance repGenericServerCertificateNameType' :: Generic ServerCertificateNameType' _
instance showServerCertificateNameType' :: Show ServerCertificateNameType' where show = genericShow
instance decodeServerCertificateNameType' :: Decode ServerCertificateNameType' where decode = genericDecode options
instance encodeServerCertificateNameType' :: Encode ServerCertificateNameType' where encode = genericEncode options



newtype ServiceFailureExceptionMessage' = ServiceFailureExceptionMessage' String
derive instance newtypeServiceFailureExceptionMessage' :: Newtype ServiceFailureExceptionMessage' _
derive instance repGenericServiceFailureExceptionMessage' :: Generic ServiceFailureExceptionMessage' _
instance showServiceFailureExceptionMessage' :: Show ServiceFailureExceptionMessage' where show = genericShow
instance decodeServiceFailureExceptionMessage' :: Decode ServiceFailureExceptionMessage' where decode = genericDecode options
instance encodeServiceFailureExceptionMessage' :: Encode ServiceFailureExceptionMessage' where encode = genericEncode options



newtype ServiceName' = ServiceName' String
derive instance newtypeServiceName' :: Newtype ServiceName' _
derive instance repGenericServiceName' :: Generic ServiceName' _
instance showServiceName' :: Show ServiceName' where show = genericShow
instance decodeServiceName' :: Decode ServiceName' where decode = genericDecode options
instance encodeServiceName' :: Encode ServiceName' where encode = genericEncode options



newtype ServiceNotSupportedMessage' = ServiceNotSupportedMessage' String
derive instance newtypeServiceNotSupportedMessage' :: Newtype ServiceNotSupportedMessage' _
derive instance repGenericServiceNotSupportedMessage' :: Generic ServiceNotSupportedMessage' _
instance showServiceNotSupportedMessage' :: Show ServiceNotSupportedMessage' where show = genericShow
instance decodeServiceNotSupportedMessage' :: Decode ServiceNotSupportedMessage' where decode = genericDecode options
instance encodeServiceNotSupportedMessage' :: Encode ServiceNotSupportedMessage' where encode = genericEncode options



newtype ServicePassword' = ServicePassword' String
derive instance newtypeServicePassword' :: Newtype ServicePassword' _
derive instance repGenericServicePassword' :: Generic ServicePassword' _
instance showServicePassword' :: Show ServicePassword' where show = genericShow
instance decodeServicePassword' :: Decode ServicePassword' where decode = genericDecode options
instance encodeServicePassword' :: Encode ServicePassword' where encode = genericEncode options



newtype ServiceSpecificCredentialId' = ServiceSpecificCredentialId' String
derive instance newtypeServiceSpecificCredentialId' :: Newtype ServiceSpecificCredentialId' _
derive instance repGenericServiceSpecificCredentialId' :: Generic ServiceSpecificCredentialId' _
instance showServiceSpecificCredentialId' :: Show ServiceSpecificCredentialId' where show = genericShow
instance decodeServiceSpecificCredentialId' :: Decode ServiceSpecificCredentialId' where decode = genericDecode options
instance encodeServiceSpecificCredentialId' :: Encode ServiceSpecificCredentialId' where encode = genericEncode options



newtype ServiceUserName' = ServiceUserName' String
derive instance newtypeServiceUserName' :: Newtype ServiceUserName' _
derive instance repGenericServiceUserName' :: Generic ServiceUserName' _
instance showServiceUserName' :: Show ServiceUserName' where show = genericShow
instance decodeServiceUserName' :: Decode ServiceUserName' where decode = genericDecode options
instance encodeServiceUserName' :: Encode ServiceUserName' where encode = genericEncode options



newtype StatusType' = StatusType' String
derive instance newtypeStatusType' :: Newtype StatusType' _
derive instance repGenericStatusType' :: Generic StatusType' _
instance showStatusType' :: Show StatusType' where show = genericShow
instance decodeStatusType' :: Decode StatusType' where decode = genericDecode options
instance encodeStatusType' :: Encode StatusType' where encode = genericEncode options



newtype StringType' = StringType' String
derive instance newtypeStringType' :: Newtype StringType' _
derive instance repGenericStringType' :: Generic StringType' _
instance showStringType' :: Show StringType' where show = genericShow
instance decodeStringType' :: Decode StringType' where decode = genericDecode options
instance encodeStringType' :: Encode StringType' where encode = genericEncode options



newtype SummaryKeyType' = SummaryKeyType' String
derive instance newtypeSummaryKeyType' :: Newtype SummaryKeyType' _
derive instance repGenericSummaryKeyType' :: Generic SummaryKeyType' _
instance showSummaryKeyType' :: Show SummaryKeyType' where show = genericShow
instance decodeSummaryKeyType' :: Decode SummaryKeyType' where decode = genericDecode options
instance encodeSummaryKeyType' :: Encode SummaryKeyType' where encode = genericEncode options



newtype SummaryMapType' = SummaryMapType' (StrMap.StrMap SummaryValueType')
derive instance newtypeSummaryMapType' :: Newtype SummaryMapType' _
derive instance repGenericSummaryMapType' :: Generic SummaryMapType' _
instance showSummaryMapType' :: Show SummaryMapType' where show = genericShow
instance decodeSummaryMapType' :: Decode SummaryMapType' where decode = genericDecode options
instance encodeSummaryMapType' :: Encode SummaryMapType' where encode = genericEncode options



newtype SummaryValueType' = SummaryValueType' Int
derive instance newtypeSummaryValueType' :: Newtype SummaryValueType' _
derive instance repGenericSummaryValueType' :: Generic SummaryValueType' _
instance showSummaryValueType' :: Show SummaryValueType' where show = genericShow
instance decodeSummaryValueType' :: Decode SummaryValueType' where decode = genericDecode options
instance encodeSummaryValueType' :: Encode SummaryValueType' where encode = genericEncode options



-- | <p>Contains a list of thumbprints of identity provider server certificates.</p>
newtype ThumbprintListType' = ThumbprintListType' (Array ThumbprintType')
derive instance newtypeThumbprintListType' :: Newtype ThumbprintListType' _
derive instance repGenericThumbprintListType' :: Generic ThumbprintListType' _
instance showThumbprintListType' :: Show ThumbprintListType' where show = genericShow
instance decodeThumbprintListType' :: Decode ThumbprintListType' where decode = genericDecode options
instance encodeThumbprintListType' :: Encode ThumbprintListType' where encode = genericEncode options



-- | <p>Contains a thumbprint for an identity provider's server certificate.</p> <p>The identity provider's server certificate thumbprint is the hex-encoded SHA-1 hash value of the self-signed X.509 certificate used by the domain where the OpenID Connect provider makes its keys available. It is always a 40-character string.</p>
newtype ThumbprintType' = ThumbprintType' String
derive instance newtypeThumbprintType' :: Newtype ThumbprintType' _
derive instance repGenericThumbprintType' :: Generic ThumbprintType' _
instance showThumbprintType' :: Show ThumbprintType' where show = genericShow
instance decodeThumbprintType' :: Decode ThumbprintType' where decode = genericDecode options
instance encodeThumbprintType' :: Encode ThumbprintType' where encode = genericEncode options



newtype UnmodifiableEntityMessage' = UnmodifiableEntityMessage' String
derive instance newtypeUnmodifiableEntityMessage' :: Newtype UnmodifiableEntityMessage' _
derive instance repGenericUnmodifiableEntityMessage' :: Generic UnmodifiableEntityMessage' _
instance showUnmodifiableEntityMessage' :: Show UnmodifiableEntityMessage' where show = genericShow
instance decodeUnmodifiableEntityMessage' :: Decode UnmodifiableEntityMessage' where decode = genericDecode options
instance encodeUnmodifiableEntityMessage' :: Encode UnmodifiableEntityMessage' where encode = genericEncode options



newtype UnrecognizedPublicKeyEncodingMessage' = UnrecognizedPublicKeyEncodingMessage' String
derive instance newtypeUnrecognizedPublicKeyEncodingMessage' :: Newtype UnrecognizedPublicKeyEncodingMessage' _
derive instance repGenericUnrecognizedPublicKeyEncodingMessage' :: Generic UnrecognizedPublicKeyEncodingMessage' _
instance showUnrecognizedPublicKeyEncodingMessage' :: Show UnrecognizedPublicKeyEncodingMessage' where show = genericShow
instance decodeUnrecognizedPublicKeyEncodingMessage' :: Decode UnrecognizedPublicKeyEncodingMessage' where decode = genericDecode options
instance encodeUnrecognizedPublicKeyEncodingMessage' :: Encode UnrecognizedPublicKeyEncodingMessage' where encode = genericEncode options



newtype UserDetailListType' = UserDetailListType' (Array UserDetail)
derive instance newtypeUserDetailListType' :: Newtype UserDetailListType' _
derive instance repGenericUserDetailListType' :: Generic UserDetailListType' _
instance showUserDetailListType' :: Show UserDetailListType' where show = genericShow
instance decodeUserDetailListType' :: Decode UserDetailListType' where decode = genericDecode options
instance encodeUserDetailListType' :: Encode UserDetailListType' where encode = genericEncode options



-- | <p>Contains a list of users.</p> <p>This data type is used as a response element in the <a>GetGroup</a> and <a>ListUsers</a> actions. </p>
newtype UserListType' = UserListType' (Array User)
derive instance newtypeUserListType' :: Newtype UserListType' _
derive instance repGenericUserListType' :: Generic UserListType' _
instance showUserListType' :: Show UserListType' where show = genericShow
instance decodeUserListType' :: Decode UserListType' where decode = genericDecode options
instance encodeUserListType' :: Encode UserListType' where encode = genericEncode options



newtype UserNameType' = UserNameType' String
derive instance newtypeUserNameType' :: Newtype UserNameType' _
derive instance repGenericUserNameType' :: Generic UserNameType' _
instance showUserNameType' :: Show UserNameType' where show = genericShow
instance decodeUserNameType' :: Decode UserNameType' where decode = genericDecode options
instance encodeUserNameType' :: Encode UserNameType' where encode = genericEncode options



newtype VirtualMFADeviceListType' = VirtualMFADeviceListType' (Array VirtualMFADevice)
derive instance newtypeVirtualMFADeviceListType' :: Newtype VirtualMFADeviceListType' _
derive instance repGenericVirtualMFADeviceListType' :: Generic VirtualMFADeviceListType' _
instance showVirtualMFADeviceListType' :: Show VirtualMFADeviceListType' where show = genericShow
instance decodeVirtualMFADeviceListType' :: Decode VirtualMFADeviceListType' where decode = genericDecode options
instance encodeVirtualMFADeviceListType' :: Encode VirtualMFADeviceListType' where encode = genericEncode options



newtype VirtualMFADeviceName' = VirtualMFADeviceName' String
derive instance newtypeVirtualMFADeviceName' :: Newtype VirtualMFADeviceName' _
derive instance repGenericVirtualMFADeviceName' :: Generic VirtualMFADeviceName' _
instance showVirtualMFADeviceName' :: Show VirtualMFADeviceName' where show = genericShow
instance decodeVirtualMFADeviceName' :: Decode VirtualMFADeviceName' where decode = genericDecode options
instance encodeVirtualMFADeviceName' :: Encode VirtualMFADeviceName' where encode = genericEncode options

