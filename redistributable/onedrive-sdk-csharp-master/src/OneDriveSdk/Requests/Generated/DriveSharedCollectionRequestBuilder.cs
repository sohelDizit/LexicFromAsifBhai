// ------------------------------------------------------------------------------
//  Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.
// ------------------------------------------------------------------------------

using System;
using System.Collections.Generic;

using Microsoft.Graph;

// **NOTE** This file was generated by a tool and any changes will be overwritten.

namespace Microsoft.OneDrive.Sdk
{
    /// <summary>
    /// The type DriveSharedCollectionRequestBuilder.
    /// </summary>
    public partial class DriveSharedCollectionRequestBuilder : BaseRequestBuilder, IDriveSharedCollectionRequestBuilder
    {
        /// <summary>
        /// Constructs a new DriveSharedCollectionRequestBuilder.
        /// </summary>
        /// <param name="requestUrl">The URL for the built request.</param>
        /// <param name="client">The <see cref="IBaseClient"/> for handling requests.</param>
        public DriveSharedCollectionRequestBuilder(
            string requestUrl,
            IBaseClient client)
            : base(requestUrl, client)
        {
        }

        /// <summary>
        /// Builds the request.
        /// </summary>
        /// <returns>The built request.</returns>
        public IDriveSharedCollectionRequest Request()
        {
            return this.Request(null);
        }

        /// <summary>
        /// Builds the request.
        /// </summary>
        /// <param name="options">The query and header options for the request.</param>
        /// <returns>The built request.</returns>
        public IDriveSharedCollectionRequest Request(IEnumerable<Option> options)
        {
            return new DriveSharedCollectionRequest(this.RequestUrl, this.Client, options);
        }

        /// <summary>
        /// Gets an <see cref="IItemRequestBuilder"/> for the specified DriveItem.
        /// </summary>
        /// <param name="id">The ID for the DriveItem.</param>
        /// <returns>The <see cref="IItemRequestBuilder"/>.</returns>
        public IItemRequestBuilder this[string id]
        {
            get
            {
                return new ItemRequestBuilder(this.AppendSegmentToRequestUrl(id), this.Client);
            }
        }
    }
}
