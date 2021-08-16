// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License.
#include "pch.h"

#include "AdaptiveColumnParser.h"

#include "AdaptiveColumn.h"
#include "AdaptiveElementParserRegistration.h"

using namespace Microsoft::WRL;
using namespace Microsoft::WRL::Wrappers;
using namespace ABI::AdaptiveCards::ObjectModel::WinAppSDK;
using namespace ABI::Windows::Foundation;
using namespace ABI::Windows;

namespace AdaptiveCards::ObjectModel::WinAppSDK
{
    HRESULT AdaptiveColumnParser::RuntimeClassInitialize() noexcept { return S_OK; }

    HRESULT AdaptiveColumnParser::FromJson(
        _In_ ABI::Windows::Data::Json::IJsonObject* jsonObject,
        _In_ ABI::AdaptiveCards::ObjectModel::WinAppSDK::IAdaptiveElementParserRegistration* elementParserRegistration,
        _In_ ABI::AdaptiveCards::ObjectModel::WinAppSDK::IAdaptiveActionParserRegistration* actionParserRegistration,
        _In_ ABI::Windows::Foundation::Collections::IVector<ABI::AdaptiveCards::ObjectModel::WinAppSDK::AdaptiveWarning*>* adaptiveWarnings,
        _COM_Outptr_ ABI::AdaptiveCards::ObjectModel::WinAppSDK::IAdaptiveCardElement** element) noexcept
    try
    {
        return AdaptiveCards::ObjectModel::WinAppSDK::FromJson<AdaptiveCards::ObjectModel::WinAppSDK::AdaptiveColumn, AdaptiveCards::Column, AdaptiveCards::ColumnParser>(
            jsonObject, elementParserRegistration, actionParserRegistration, adaptiveWarnings, element);
    }
    CATCH_RETURN;
}
