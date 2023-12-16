import React from 'react';

const OffersList = ({ offers }) => {
  console.log("Offers: "+offers)
  return (
    <div>
      <h1>Offers</h1>
      <div id="offers">
        {offers.map((offer) => (
          <div key={offer.id}>
            <p>Description: {offer.description}</p>
            <p>Gender: {offer.gender}</p>

            <p>
              <a href={`/offers/${offer.id}`}>Show this offer</a>
            </p>
          </div>
        ))}
      </div>

      <a href="/offers/new">New offer</a>
    </div>
  );
};

export default OffersList;