import React from 'react';
import ReactDOM from 'react-dom';
import OffersList from './OffersList.jsx';

document.addEventListener('DOMContentLoaded', () => {
  const root = document.getElementById('root');

  if (root) {
    const offers = JSON.parse(root.getAttribute('data-offers'));

    ReactDOM.render(<OffersList offers={offers} />, root);
  }
});